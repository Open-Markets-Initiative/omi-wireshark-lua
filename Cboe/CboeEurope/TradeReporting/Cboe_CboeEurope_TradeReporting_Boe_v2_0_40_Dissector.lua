-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CboeEurope TradeReporting Boe 2.0.40 Protocol
local omi_cboe_cboeeurope_tradereporting_boe_v2_0_40 = Proto("Omi.Cboe.CboeEurope.TradeReporting.Boe.v2.0.40", "Cboe CboeEurope TradeReporting Boe 2.0.40")

-- Protocol table
local cboe_cboeeurope_tradereporting_boe_v2_0_40 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CboeEurope TradeReporting Boe 2.0.40 Fields
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.account = ProtoField.new("Account", "cboe.cboeeurope.tradereporting.boe.v2.0.40.account", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.algorithmicindicator", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.capacity = ProtoField.new("Capacity", "cboe.cboeeurope.tradereporting.boe.v2.0.40.capacity", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.cboeeurope.tradereporting.boe.v2.0.40.clearingfirm", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.contra_broker = ProtoField.new("Contra Broker", "cboe.cboeeurope.tradereporting.boe.v2.0.40.contrabroker", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.currency = ProtoField.new("Currency", "cboe.cboeeurope.tradereporting.boe.v2.0.40.currency", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.deferral_reason = ProtoField.new("Deferral Reason", "cboe.cboeeurope.tradereporting.boe.v2.0.40.deferralreason", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.execution_method = ProtoField.new("Execution Method", "cboe.cboeeurope.tradereporting.boe.v2.0.40.executionmethod", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "cboe.cboeeurope.tradereporting.boe.v2.0.40.grosstradeamt", ftypes.DOUBLE)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.id_source = ProtoField.new("Id Source", "cboe.cboeeurope.tradereporting.boe.v2.0.40.idsource", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.intra_firm_trade_ind = ProtoField.new("Intra Firm Trade Ind", "cboe.cboeeurope.tradereporting.boe.v2.0.40.intrafirmtradeind", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.large_size = ProtoField.new("Large Size", "cboe.cboeeurope.tradereporting.boe.v2.0.40.largesize", ftypes.UINT64)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.last_mkt = ProtoField.new("Last Mkt", "cboe.cboeeurope.tradereporting.boe.v2.0.40.lastmkt", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.last_received_sequence_number = ProtoField.new("Last Received Sequence Number", "cboe.cboeeurope.tradereporting.boe.v2.0.40.lastreceivedsequencenumber", ftypes.UINT32)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.last_shares = ProtoField.new("Last Shares", "cboe.cboeeurope.tradereporting.boe.v2.0.40.lastshares", ftypes.UINT32)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.cboeeurope.tradereporting.boe.v2.0.40.loginresponsestatus", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.cboeeurope.tradereporting.boe.v2.0.40.loginresponsetext", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.cboeeurope.tradereporting.boe.v2.0.40.logoutreason", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.cboeeurope.tradereporting.boe.v2.0.40.logoutreasontext", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.match_type = ProtoField.new("Match Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.matchtype", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.cboeeurope.tradereporting.boe.v2.0.40.matchingunit", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.message_length = ProtoField.new("Message Length", "cboe.cboeeurope.tradereporting.boe.v2.0.40.messagelength", ftypes.UINT16)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.message_type = ProtoField.new("Message Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.messagetype", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.no_quote_entries = ProtoField.new("No Quote Entries", "cboe.cboeeurope.tradereporting.boe.v2.0.40.noquoteentries", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.no_sides = ProtoField.new("No Sides", "cboe.cboeeurope.tradereporting.boe.v2.0.40.nosides", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.no_unspecified_unit_replay = ProtoField.new("No Unspecified Unit Replay", "cboe.cboeeurope.tradereporting.boe.v2.0.40.nounspecifiedunitreplay", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_param_groups = ProtoField.new("Number Of Param Groups", "cboe.cboeeurope.tradereporting.boe.v2.0.40.numberofparamgroups", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_quote_cancel_v_2_bitfields = ProtoField.new("Number Of Quote Cancel V 2 Bitfields", "cboe.cboeeurope.tradereporting.boe.v2.0.40.numberofquotecancelv2bitfields", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_quote_v_2_bitfields = ProtoField.new("Number Of Quote V 2 Bitfields", "cboe.cboeeurope.tradereporting.boe.v2.0.40.numberofquotev2bitfields", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_return_bitfields = ProtoField.new("Number Of Return Bitfields", "cboe.cboeeurope.tradereporting.boe.v2.0.40.numberofreturnbitfields", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_trade_capture_report_v_2_bitfields = ProtoField.new("Number Of Trade Capture Report V 2 Bitfields", "cboe.cboeeurope.tradereporting.boe.v2.0.40.numberoftradecapturereportv2bitfields", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.cboeeurope.tradereporting.boe.v2.0.40.numberofunits", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.order_category = ProtoField.new("Order Category", "cboe.cboeeurope.tradereporting.boe.v2.0.40.ordercategory", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.param_group = ProtoField.new("Param Group", "cboe.cboeeurope.tradereporting.boe.v2.0.40.paramgroup", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.param_group_length = ProtoField.new("Param Group Length", "cboe.cboeeurope.tradereporting.boe.v2.0.40.paramgrouplength", ftypes.UINT16)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.param_group_type = ProtoField.new("Param Group Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.paramgrouptype", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.party_id = ProtoField.new("Party Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.partyid", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.party_role = ProtoField.new("Party Role", "cboe.cboeeurope.tradereporting.boe.v2.0.40.partyrole", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.password = ProtoField.new("Password", "cboe.cboeeurope.tradereporting.boe.v2.0.40.password", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.price_formation = ProtoField.new("Price Formation", "cboe.cboeeurope.tradereporting.boe.v2.0.40.priceformation", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_rpt_grp = ProtoField.new("Quote Cancel Rpt Grp", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelrptgrp", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1 = ProtoField.new("Quote Cancel V 2 Bitfield 1", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelv2bitfield1", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_clearing_firm = ProtoField.new("Quote Cancel V 2 Bitfield 1 Clearing Firm", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelv2bitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_currency = ProtoField.new("Quote Cancel V 2 Bitfield 1 Currency", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelv2bitfield1currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_id_source = ProtoField.new("Quote Cancel V 2 Bitfield 1 Id Source", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelv2bitfield1idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_reserved_128 = ProtoField.new("Quote Cancel V 2 Bitfield 1 Reserved 128", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelv2bitfield1reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_reserved_64 = ProtoField.new("Quote Cancel V 2 Bitfield 1 Reserved 64", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelv2bitfield1reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_security_exchange = ProtoField.new("Quote Cancel V 2 Bitfield 1 Security Exchange", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelv2bitfield1securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_security_id = ProtoField.new("Quote Cancel V 2 Bitfield 1 Security Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelv2bitfield1securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_symbol = ProtoField.new("Quote Cancel V 2 Bitfield 1 Symbol", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelv2bitfield1symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_id = ProtoField.new("Quote Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quoteid", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1 = ProtoField.new("Quote V 2 Bitfield 1", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotev2bitfield1", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_bid = ProtoField.new("Quote V 2 Bitfield 1 Bid", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotev2bitfield1bid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_clearing_firm = ProtoField.new("Quote V 2 Bitfield 1 Clearing Firm", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotev2bitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_currency = ProtoField.new("Quote V 2 Bitfield 1 Currency", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotev2bitfield1currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_id_source = ProtoField.new("Quote V 2 Bitfield 1 Id Source", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotev2bitfield1idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_offer = ProtoField.new("Quote V 2 Bitfield 1 Offer", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotev2bitfield1offer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_security_exchange = ProtoField.new("Quote V 2 Bitfield 1 Security Exchange", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotev2bitfield1securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_security_id = ProtoField.new("Quote V 2 Bitfield 1 Security Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotev2bitfield1securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_symbol = ProtoField.new("Quote V 2 Bitfield 1 Symbol", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotev2bitfield1symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.reason = ProtoField.new("Reason", "cboe.cboeeurope.tradereporting.boe.v2.0.40.reason", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.report_time = ProtoField.new("Report Time", "cboe.cboeeurope.tradereporting.boe.v2.0.40.reporttime", ftypes.UINT64)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.cboeeurope.tradereporting.boe.v2.0.40.reserved1", ftypes.BYTES)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1 = ProtoField.new("Return Bitfield 1", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield1", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_exec_inst = ProtoField.new("Return Bitfield 1 Exec Inst", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield1execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_max_remove_pct = ProtoField.new("Return Bitfield 1 Max Remove Pct", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield1maxremovepct", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_min_qty = ProtoField.new("Return Bitfield 1 Min Qty", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield1minqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_ord_type = ProtoField.new("Return Bitfield 1 Ord Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_peg_difference = ProtoField.new("Return Bitfield 1 Peg Difference", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield1pegdifference", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_price = ProtoField.new("Return Bitfield 1 Price", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_side = ProtoField.new("Return Bitfield 1 Side", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield1side", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_time_in_force = ProtoField.new("Return Bitfield 1 Time In Force", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield1timeinforce", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10 = ProtoField.new("Return Bitfield 10", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield10", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_alloc_qty = ProtoField.new("Return Bitfield 10 Alloc Qty", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield10allocqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_client_qualified_role = ProtoField.new("Return Bitfield 10 Client Qualified Role", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield10clientqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_cross_exclusion_indicator = ProtoField.new("Return Bitfield 10 Cross Exclusion Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield10crossexclusionindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_cross_id = ProtoField.new("Return Bitfield 10 Cross Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield10crossid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_give_up_firm_id = ProtoField.new("Return Bitfield 10 Give Up Firm Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield10giveupfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_price_formation = ProtoField.new("Return Bitfield 10 Price Formation", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield10priceformation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_routing_firm_id = ProtoField.new("Return Bitfield 10 Routing Firm Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield10routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_waiver_type = ProtoField.new("Return Bitfield 10 Waiver Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield10waivertype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11 = ProtoField.new("Return Bitfield 11", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield11", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_algorithmic_indicator = ProtoField.new("Return Bitfield 11 Algorithmic Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield11algorithmicindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_client_id = ProtoField.new("Return Bitfield 11 Client Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield11clientid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_deferral_reason = ProtoField.new("Return Bitfield 11 Deferral Reason", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield11deferralreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_executor_id = ProtoField.new("Return Bitfield 11 Executor Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield11executorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_executor_qualified_role = ProtoField.new("Return Bitfield 11 Executor Qualified Role", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield11executorqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_investor_id = ProtoField.new("Return Bitfield 11 Investor Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield11investorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_investor_qualified_role = ProtoField.new("Return Bitfield 11 Investor Qualified Role", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield11investorqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_order_origination = ProtoField.new("Return Bitfield 11 Order Origination", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield11orderorigination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12 = ProtoField.new("Return Bitfield 12", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield12", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_clearing_optional_data = ProtoField.new("Return Bitfield 12 Clearing Optional Data", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield12clearingoptionaldata", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_clearing_price = ProtoField.new("Return Bitfield 12 Clearing Price", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield12clearingprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_clearing_size = ProtoField.new("Return Bitfield 12 Clearing Size", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield12clearingsize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_clearing_symbol = ProtoField.new("Return Bitfield 12 Clearing Symbol", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield12clearingsymbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_cti_code = ProtoField.new("Return Bitfield 12 Cti Code", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield12cticode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_manual_order_indicator = ProtoField.new("Return Bitfield 12 Manual Order Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield12manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_operator_id = ProtoField.new("Return Bitfield 12 Operator Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield12operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_trade_date = ProtoField.new("Return Bitfield 12 Trade Date", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield12tradedate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13 = ProtoField.new("Return Bitfield 13", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield13", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_avg_px = ProtoField.new("Return Bitfield 13 Avg Px", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield13avgpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_cum_qty = ProtoField.new("Return Bitfield 13 Cum Qty", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield13cumqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_day_avg_px = ProtoField.new("Return Bitfield 13 Day Avg Px", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield13dayavgpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_day_cum_qty = ProtoField.new("Return Bitfield 13 Day Cum Qty", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield13daycumqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_day_order_qty = ProtoField.new("Return Bitfield 13 Day Order Qty", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield13dayorderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_drill_thru_protection = ProtoField.new("Return Bitfield 13 Drill Thru Protection", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield13drillthruprotection", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_multileg_reporting_type = ProtoField.new("Return Bitfield 13 Multileg Reporting Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield13multilegreportingtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_pending_status = ProtoField.new("Return Bitfield 13 Pending Status", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield13pendingstatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14 = ProtoField.new("Return Bitfield 14", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield14", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_leg_cfi_code = ProtoField.new("Return Bitfield 14 Leg Cfi Code", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield14legcficode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_leg_maturity_date = ProtoField.new("Return Bitfield 14 Leg Maturity Date", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield14legmaturitydate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_leg_strike_price = ProtoField.new("Return Bitfield 14 Leg Strike Price", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield14legstrikeprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_quote_room_id = ProtoField.new("Return Bitfield 14 Quote Room Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield14quoteroomid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_secondary_exec_id = ProtoField.new("Return Bitfield 14 Secondary Exec Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield14secondaryexecid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_user_request_id = ProtoField.new("Return Bitfield 14 User Request Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield14userrequestid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_user_status = ProtoField.new("Return Bitfield 14 User Status", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield14userstatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_username = ProtoField.new("Return Bitfield 14 Username", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield14username", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15 = ProtoField.new("Return Bitfield 15", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield15", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_client_id_attr = ProtoField.new("Return Bitfield 15 Client Id Attr", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield15clientidattr", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_equity_nbbo_protect = ProtoField.new("Return Bitfield 15 Equity Nbbo Protect", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield15equitynbboprotect", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_equity_party_id = ProtoField.new("Return Bitfield 15 Equity Party Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield15equitypartyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_leg_symbol_sfx = ProtoField.new("Return Bitfield 15 Leg Symbol Sfx", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield15legsymbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_mass_cancel_id = ProtoField.new("Return Bitfield 15 Mass Cancel Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield15masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_report_time = ProtoField.new("Return Bitfield 15 Report Time", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield15reporttime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_trade_publish_ind = ProtoField.new("Return Bitfield 15 Trade Publish Ind", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield15tradepublishind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_trade_reporting_indicator = ProtoField.new("Return Bitfield 15 Trade Reporting Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield15tradereportingindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16 = ProtoField.new("Return Bitfield 16", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield16", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_combo_order = ProtoField.new("Return Bitfield 16 Combo Order", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield16comboorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_compression = ProtoField.new("Return Bitfield 16 Compression", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield16compression", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_floor_destination = ProtoField.new("Return Bitfield 16 Floor Destination", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield16floordestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_floor_routing_inst = ProtoField.new("Return Bitfield 16 Floor Routing Inst", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield16floorroutinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_frequent_trader_id = ProtoField.new("Return Bitfield 16 Frequent Trader Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield16frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_multi_class_spread = ProtoField.new("Return Bitfield 16 Multi Class Spread", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield16multiclassspread", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_order_origin = ProtoField.new("Return Bitfield 16 Order Origin", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield16orderorigin", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_session_eligibility = ProtoField.new("Return Bitfield 16 Session Eligibility", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield16sessioneligibility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17 = ProtoField.new("Return Bitfield 17", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield17", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_cust_order_handling_inst = ProtoField.new("Return Bitfield 17 Cust Order Handling Inst", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield17custorderhandlinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_exec_leg_cfi_code = ProtoField.new("Return Bitfield 17 Exec Leg Cfi Code", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield17execlegcficode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_floor_trader_acronym = ProtoField.new("Return Bitfield 17 Floor Trader Acronym", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield17floortraderacronym", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_price_type = ProtoField.new("Return Bitfield 17 Price Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield17pricetype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_sender_location_id = ProtoField.new("Return Bitfield 17 Sender Location Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield17senderlocationid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_strategy_id = ProtoField.new("Return Bitfield 17 Strategy Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield17strategyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_trade_through_alert_type = ProtoField.new("Return Bitfield 17 Trade Through Alert Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield17tradethroughalerttype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_trading_session_id = ProtoField.new("Return Bitfield 17 Trading Session Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield17tradingsessionid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18 = ProtoField.new("Return Bitfield 18", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield18", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_account_type = ProtoField.new("Return Bitfield 18 Account Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield18accounttype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_cross_initiator = ProtoField.new("Return Bitfield 18 Cross Initiator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield18crossinitiator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_cross_trade_flag = ProtoField.new("Return Bitfield 18 Cross Trade Flag", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield18crosstradeflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_held_indicator = ProtoField.new("Return Bitfield 18 Held Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield18heldindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_leg_price = ProtoField.new("Return Bitfield 18 Leg Price", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield18legprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_locate_broker = ProtoField.new("Return Bitfield 18 Locate Broker", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield18locatebroker", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_multi_juris_reporting_ind = ProtoField.new("Return Bitfield 18 Multi Juris Reporting Ind", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield18multijurisreportingind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_subreason = ProtoField.new("Return Bitfield 18 Subreason", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield18subreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19 = ProtoField.new("Return Bitfield 19", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield19", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_intra_firm_trade_ind = ProtoField.new("Return Bitfield 19 Intra Firm Trade Ind", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield19intrafirmtradeind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_1 = ProtoField.new("Return Bitfield 19 Reserved 1", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield19reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_128 = ProtoField.new("Return Bitfield 19 Reserved 128", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield19reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_2 = ProtoField.new("Return Bitfield 19 Reserved 2", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield19reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_32 = ProtoField.new("Return Bitfield 19 Reserved 32", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield19reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_4 = ProtoField.new("Return Bitfield 19 Reserved 4", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield19reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_64 = ProtoField.new("Return Bitfield 19 Reserved 64", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield19reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_8 = ProtoField.new("Return Bitfield 19 Reserved 8", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield19reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2 = ProtoField.new("Return Bitfield 2", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield2", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_capacity = ProtoField.new("Return Bitfield 2 Capacity", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield2capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_currency = ProtoField.new("Return Bitfield 2 Currency", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield2currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_id_source = ProtoField.new("Return Bitfield 2 Id Source", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield2idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_reserved_128 = ProtoField.new("Return Bitfield 2 Reserved 128", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_security_exchange = ProtoField.new("Return Bitfield 2 Security Exchange", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield2securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_security_id = ProtoField.new("Return Bitfield 2 Security Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield2securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_symbol = ProtoField.new("Return Bitfield 2 Symbol", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_symbol_sfx = ProtoField.new("Return Bitfield 2 Symbol Sfx", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield2symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3 = ProtoField.new("Return Bitfield 3", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield3", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_account = ProtoField.new("Return Bitfield 3 Account", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield3account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_clearing_account = ProtoField.new("Return Bitfield 3 Clearing Account", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield3clearingaccount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_clearing_firm = ProtoField.new("Return Bitfield 3 Clearing Firm", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield3clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_discretion_amount = ProtoField.new("Return Bitfield 3 Discretion Amount", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield3discretionamount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_display_indicator = ProtoField.new("Return Bitfield 3 Display Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield3displayindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_max_floor = ProtoField.new("Return Bitfield 3 Max Floor", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield3maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_order_qty = ProtoField.new("Return Bitfield 3 Order Qty", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield3orderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_prevent_match = ProtoField.new("Return Bitfield 3 Prevent Match", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield3preventmatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4 = ProtoField.new("Return Bitfield 4", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield4", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_access_fee = ProtoField.new("Return Bitfield 4 Access Fee", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield4accessfee", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_cl_ord_id_batch = ProtoField.new("Return Bitfield 4 Cl Ord Id Batch", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield4clordidbatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_corrected_size = ProtoField.new("Return Bitfield 4 Corrected Size", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield4correctedsize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_maturity_date = ProtoField.new("Return Bitfield 4 Maturity Date", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield4maturitydate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_open_close = ProtoField.new("Return Bitfield 4 Open Close", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield4openclose", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_party_id = ProtoField.new("Return Bitfield 4 Party Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield4partyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_put_or_call = ProtoField.new("Return Bitfield 4 Put Or Call", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield4putorcall", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_strike_price = ProtoField.new("Return Bitfield 4 Strike Price", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield4strikeprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5 = ProtoField.new("Return Bitfield 5", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield5", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_base_liquidity_indicator = ProtoField.new("Return Bitfield 5 Base Liquidity Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield5baseliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_display_price = ProtoField.new("Return Bitfield 5 Display Price", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield5displayprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_expire_time = ProtoField.new("Return Bitfield 5 Expire Time", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield5expiretime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_last_price = ProtoField.new("Return Bitfield 5 Last Price", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield5lastprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_last_shares = ProtoField.new("Return Bitfield 5 Last Shares", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield5lastshares", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_leaves_qty = ProtoField.new("Return Bitfield 5 Leaves Qty", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield5leavesqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_orig_cl_ord_id = ProtoField.new("Return Bitfield 5 Orig Cl Ord Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield5origclordid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_working_price = ProtoField.new("Return Bitfield 5 Working Price", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield5workingprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6 = ProtoField.new("Return Bitfield 6", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield6", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_attributed_quote = ProtoField.new("Return Bitfield 6 Attributed Quote", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield6attributedquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_bulk_order_ids = ProtoField.new("Return Bitfield 6 Bulk Order Ids", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield6bulkorderids", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_bulk_reject_reasons = ProtoField.new("Return Bitfield 6 Bulk Reject Reasons", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield6bulkrejectreasons", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_ccp = ProtoField.new("Return Bitfield 6 Ccp", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield6ccp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_contra_capacity = ProtoField.new("Return Bitfield 6 Contra Capacity", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield6contracapacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_ext_exec_inst = ProtoField.new("Return Bitfield 6 Ext Exec Inst", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield6extexecinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_party_role = ProtoField.new("Return Bitfield 6 Party Role", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield6partyrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_secondary_order_id = ProtoField.new("Return Bitfield 6 Secondary Order Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield6secondaryorderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7 = ProtoField.new("Return Bitfield 7", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield7", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_bid = ProtoField.new("Return Bitfield 7 Bid", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield7bid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_large_size = ProtoField.new("Return Bitfield 7 Large Size", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield7largesize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_last_mkt = ProtoField.new("Return Bitfield 7 Last Mkt", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield7lastmkt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_offer = ProtoField.new("Return Bitfield 7 Offer", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield7offer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_sub_liquidity_indicator = ProtoField.new("Return Bitfield 7 Sub Liquidity Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield7subliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_text = ProtoField.new("Return Bitfield 7 Text", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield7text", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_trade_publish_ind_return = ProtoField.new("Return Bitfield 7 Trade Publish Ind Return", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield7tradepublishindreturn", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_trade_report_type_return = ProtoField.new("Return Bitfield 7 Trade Report Type Return", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield7tradereporttypereturn", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8 = ProtoField.new("Return Bitfield 8", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield8", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_echo_text = ProtoField.new("Return Bitfield 8 Echo Text", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield8echotext", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_ex_destination = ProtoField.new("Return Bitfield 8 Ex Destination", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield8exdestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_fee_code = ProtoField.new("Return Bitfield 8 Fee Code", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield8feecode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_rout_strategy = ProtoField.new("Return Bitfield 8 Rout Strategy", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield8routstrategy", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_route_delivery_method = ProtoField.new("Return Bitfield 8 Route Delivery Method", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield8routedeliverymethod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_routing_inst = ProtoField.new("Return Bitfield 8 Routing Inst", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield8routinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_stop_px = ProtoField.new("Return Bitfield 8 Stop Px", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield8stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_trade_report_ref_id = ProtoField.new("Return Bitfield 8 Trade Report Ref Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield8tradereportrefid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9 = ProtoField.new("Return Bitfield 9", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield9", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_auction_id = ProtoField.new("Return Bitfield 9 Auction Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield9auctionid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_cmta_number = ProtoField.new("Return Bitfield 9 Cmta Number", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield9cmtanumber", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_cross_prioritization = ProtoField.new("Return Bitfield 9 Cross Prioritization", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield9crossprioritization", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_cross_type = ProtoField.new("Return Bitfield 9 Cross Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield9crosstype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_liquidity_provision = ProtoField.new("Return Bitfield 9 Liquidity Provision", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield9liquidityprovision", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_marketing_fee_code = ProtoField.new("Return Bitfield 9 Marketing Fee Code", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield9marketingfeecode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_order_category = ProtoField.new("Return Bitfield 9 Order Category", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield9ordercategory", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_target_party_id = ProtoField.new("Return Bitfield 9 Target Party Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.returnbitfield9targetpartyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.secondary_trd_type = ProtoField.new("Secondary Trd Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.secondarytrdtype", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.security_exchange = ProtoField.new("Security Exchange", "cboe.cboeeurope.tradereporting.boe.v2.0.40.securityexchange", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.security_id = ProtoField.new("Security Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.securityid", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.cboeeurope.tradereporting.boe.v2.0.40.sequencenumber", ftypes.UINT32)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.sessionsubid", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.side = ProtoField.new("Side", "cboe.cboeeurope.tradereporting.boe.v2.0.40.side", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.startofmessage", ftypes.UINT16)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.status = ProtoField.new("Status", "cboe.cboeeurope.tradereporting.boe.v2.0.40.status", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.symbol = ProtoField.new("Symbol", "cboe.cboeeurope.tradereporting.boe.v2.0.40.symbol", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.tertiary_trd_type = ProtoField.new("Tertiary Trd Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tertiarytrdtype", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.text = ProtoField.new("Text", "cboe.cboeeurope.tradereporting.boe.v2.0.40.text", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1 = ProtoField.new("Trade Capture Report V 2 Bitfield 1", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield1", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_currency = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Currency", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield1currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_id_source = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Id Source", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield1idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_last_mkt = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Last Mkt", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield1lastmkt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_reserved_128 = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Reserved 128", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield1reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_reserved_2 = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Reserved 2", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_security_exchange = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Security Exchange", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield1securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_security_id = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Security Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield1securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_symbol = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Symbol", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield1symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2 = ProtoField.new("Trade Capture Report V 2 Bitfield 2", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield2", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_account = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Account", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield2account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_capacity = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Capacity", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield2capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_party_role = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Party Role", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield2partyrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_trade_id = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Trade Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield2tradeid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_trade_report_trans_type = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Trade Report Trans Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield2tradereporttranstype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_trade_time = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Trade Time", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield2tradetime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_transaction_category = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Transaction Category", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield2transactioncategory", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_venue_type = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Venue Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield2venuetype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3 = ProtoField.new("Trade Capture Report V 2 Bitfield 3", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield3", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_execution_method = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Execution Method", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield3executionmethod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_large_size = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Large Size", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield3largesize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_match_type = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Match Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield3matchtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_secondary_trd_type = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Secondary Trd Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield3secondarytrdtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_trade_price_condition = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Trade Price Condition", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield3tradepricecondition", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_trade_publish_indicator = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Trade Publish Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield3tradepublishindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_trading_session_sub_id = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Trading Session Sub Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield3tradingsessionsubid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_trd_sub_type = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Trd Sub Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield3trdsubtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4 = ProtoField.new("Trade Capture Report V 2 Bitfield 4", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield4", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_gross_trade_amt = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Gross Trade Amt", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield4grosstradeamt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_order_category = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Order Category", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield4ordercategory", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_settlement_price = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Settlement Price", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield4settlementprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_tolerance = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Tolerance", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield4tolerance", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_trade_handling_instruction = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Trade Handling Instruction", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield4tradehandlinginstruction", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_trade_link_id = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Trade Link Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield4tradelinkid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_trade_report_ref_id = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Trade Report Ref Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield4tradereportrefid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_trade_report_type = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Trade Report Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield4tradereporttype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5 = ProtoField.new("Trade Capture Report V 2 Bitfield 5", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield5", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_algorithmic_indicator = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Algorithmic Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield5algorithmicindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_deferral_reason = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Deferral Reason", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield5deferralreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_price_formation = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Price Formation", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield5priceformation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_settlement_currency = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Settlement Currency", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield5settlementcurrency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_settlement_date = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Settlement Date", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield5settlementdate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_settlement_location = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Settlement Location", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield5settlementlocation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_third_party = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Third Party", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield5thirdparty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_waiver_type = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Waiver Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield5waivertype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6 = ProtoField.new("Trade Capture Report V 2 Bitfield 6", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield6", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_account_type = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Account Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield6accounttype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_cust_order_handling_inst = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Cust Order Handling Inst", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield6custorderhandlinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_intra_firm_trade_ind = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Intra Firm Trade Ind", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield6intrafirmtradeind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_multi_juris_reporting_ind = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Multi Juris Reporting Ind", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield6multijurisreportingind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_open_close = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Open Close", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield6openclose", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_reserved_128 = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Reserved 128", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield6reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_reserved_64 = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Reserved 64", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield6reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_tertiary_trd_type = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Tertiary Trd Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2bitfield6tertiarytrdtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_id = ProtoField.new("Trade Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradeid", ftypes.UINT64)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_price_condition = ProtoField.new("Trade Price Condition", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradepricecondition", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_publish_ind = ProtoField.new("Trade Publish Ind", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradepublishind", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_publish_indicator = ProtoField.new("Trade Publish Indicator", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradepublishindicator", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_report_id = ProtoField.new("Trade Report Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradereportid", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_report_ref_id = ProtoField.new("Trade Report Ref Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradereportrefid", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_report_trans_type = ProtoField.new("Trade Report Trans Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradereporttranstype", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_report_type_return = ProtoField.new("Trade Report Type Return", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradereporttypereturn", ftypes.UINT16)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_time = ProtoField.new("Trade Time", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradetime", ftypes.UINT64)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradingsessionsubid", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.cboeeurope.tradereporting.boe.v2.0.40.transactioncategory", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.cboeeurope.tradereporting.boe.v2.0.40.transactiontime", ftypes.UINT64)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trd_cap_ack_side_grp = ProtoField.new("Trd Cap Ack Side Grp", "cboe.cboeeurope.tradereporting.boe.v2.0.40.trdcapacksidegrp", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trd_cap_rpt_side_grp = ProtoField.new("Trd Cap Rpt Side Grp", "cboe.cboeeurope.tradereporting.boe.v2.0.40.trdcaprptsidegrp", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trd_sub_type = ProtoField.new("Trd Sub Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.trdsubtype", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.unit_number = ProtoField.new("Unit Number", "cboe.cboeeurope.tradereporting.boe.v2.0.40.unitnumber", ftypes.UINT8)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.cboeeurope.tradereporting.boe.v2.0.40.unitsequence", ftypes.UINT32)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.units = ProtoField.new("Units", "cboe.cboeeurope.tradereporting.boe.v2.0.40.units", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.username = ProtoField.new("Username", "cboe.cboeeurope.tradereporting.boe.v2.0.40.username", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.venue_type = ProtoField.new("Venue Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.venuetype", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.waiver_type = ProtoField.new("Waiver Type", "cboe.cboeeurope.tradereporting.boe.v2.0.40.waivertype", ftypes.STRING)

-- Cboe CboeEurope TradeReporting Boe 2.0.40 Framing
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.message_header = ProtoField.new("Message Header", "cboe.cboeeurope.tradereporting.boe.v2.0.40.messageheader", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.packet = ProtoField.new("Packet", "cboe.cboeeurope.tradereporting.boe.v2.0.40.packet", ftypes.STRING)

-- Cboe CboeEurope TradeReporting 2.0.40 Application Messages
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.clientheartbeatmessage", ftypes.BYTES)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.login_request_v_2_message = ProtoField.new("Login Request V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.loginrequestv2message", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.login_response_v_2_message = ProtoField.new("Login Response V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.loginresponsev2message", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.logout_message = ProtoField.new("Logout Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.logoutmessage", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.logout_request_message = ProtoField.new("Logout Request Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.logoutrequestmessage", ftypes.BYTES)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_message = ProtoField.new("Quote Cancel V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelv2message", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_reject_v_2_message = ProtoField.new("Quote Reject V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quoterejectv2message", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_status_v_2_message = ProtoField.new("Quote Status V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotestatusv2message", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_message = ProtoField.new("Quote V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotev2message", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.replaycompletemessage", ftypes.BYTES)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.server_heartbeat_message = ProtoField.new("Server Heartbeat Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.serverheartbeatmessage", ftypes.BYTES)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_confirm_v_2_message = ProtoField.new("Trade Capture Confirm V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecaptureconfirmv2message", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_acknowledgment_v_2_message = ProtoField.new("Trade Capture Report Acknowledgment V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportacknowledgmentv2message", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_decline_v_2_message = ProtoField.new("Trade Capture Report Decline V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportdeclinev2message", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_reject_v_2_message = ProtoField.new("Trade Capture Report Reject V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportrejectv2message", ftypes.STRING)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_message = ProtoField.new("Trade Capture Report V 2 Message", "cboe.cboeeurope.tradereporting.boe.v2.0.40.tradecapturereportv2message", ftypes.STRING)

-- Cboe CboeEurope TradeReporting Boe 2.0.40 Generated Fields
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.param_group_index = ProtoField.new("Param Group Index", "cboe.cboeeurope.tradereporting.boe.v2.0.40.paramgroupindex", ftypes.UINT16)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_rpt_grp_index = ProtoField.new("Quote Cancel Rpt Grp Index", "cboe.cboeeurope.tradereporting.boe.v2.0.40.quotecancelrptgrpindex", ftypes.UINT16)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trd_cap_ack_side_grp_index = ProtoField.new("Trd Cap Ack Side Grp Index", "cboe.cboeeurope.tradereporting.boe.v2.0.40.trdcapacksidegrpindex", ftypes.UINT16)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trd_cap_rpt_side_grp_index = ProtoField.new("Trd Cap Rpt Side Grp Index", "cboe.cboeeurope.tradereporting.boe.v2.0.40.trdcaprptsidegrpindex", ftypes.UINT16)
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.units_index = ProtoField.new("Units Index", "cboe.cboeeurope.tradereporting.boe.v2.0.40.unitsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CboeEurope TradeReporting Boe 2.0.40 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.repeating_groups = true
show.indexes = true

-- Register Cboe CboeEurope TradeReporting Boe 2.0.40 Show Options
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_application_messages then
    show.application_messages = omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_headers then
    show.headers = omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_structs then
    show.structs = omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_indexes then
    show.indexes = omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cboe CboeEurope TradeReporting Boe 2.0.40 Fields
-----------------------------------------------------------------------

-- Account
cboe_cboeeurope_tradereporting_boe_v2_0_40.account = {}

-- Size: Account
cboe_cboeeurope_tradereporting_boe_v2_0_40.account.size = 16

-- Display: Account
cboe_cboeeurope_tradereporting_boe_v2_0_40.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
cboe_cboeeurope_tradereporting_boe_v2_0_40.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.account.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.account, range, value, display)

  return offset + length, value
end

-- Algorithmic Indicator
cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator.size = 1

-- Display: Algorithmic Indicator
cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator.display = function(value)
  if value == "N" then
    return "Algorithmic Indicator: No Algorithm Was Involved (N)"
  end
  if value == "Y" then
    return "Algorithmic Indicator: Algorithm Was Involved (Y)"
  end

  return "Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Indicator
cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity = {}

-- Size: Capacity
cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.size = 1

-- Display: Capacity
cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.display = function(value)
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
cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.capacity, range, value, display)

  return offset + length, value
end

-- Clearing Firm
cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm = {}

-- Size: Clearing Firm
cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.size = 4

-- Display: Clearing Firm
cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Contra Broker
cboe_cboeeurope_tradereporting_boe_v2_0_40.contra_broker = {}

-- Size: Contra Broker
cboe_cboeeurope_tradereporting_boe_v2_0_40.contra_broker.size = 4

-- Display: Contra Broker
cboe_cboeeurope_tradereporting_boe_v2_0_40.contra_broker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Broker: No Value"
  end

  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
cboe_cboeeurope_tradereporting_boe_v2_0_40.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.contra_broker.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Currency
cboe_cboeeurope_tradereporting_boe_v2_0_40.currency = {}

-- Size: Currency
cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.size = 3

-- Display: Currency
cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.currency, range, value, display)

  return offset + length, value
end

-- Deferral Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason = {}

-- Size: Deferral Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason.size = 1

-- Display: Deferral Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason.display = function(value)
  if value == "-" then
    return "Deferral Reason: No Deferral Reason (-)"
  end
  if value == "6" then
    return "Deferral Reason: Deferral For Large In Scale (6)"
  end
  if value == "7" then
    return "Deferral Reason: Deferral For Illiquid Instrument (7)"
  end
  if value == "8" then
    return "Deferral Reason: Deferral For Size Specific (8)"
  end
  if value == "C" then
    return "Deferral Reason: Deferral For Illiquid Instrument (C)"
  end
  if value == "D" then
    return "Deferral Reason: Deferral For Illiquid Instrument (D)"
  end
  if value == "G" then
    return "Deferral Reason: Deferral For Transactions In Et Cs Et Ns Etc (G)"
  end
  if value == "V" then
    return "Deferral Reason: Indicates A Net Asset Value (V)"
  end

  return "Deferral Reason: Unknown("..value..")"
end

-- Dissect: Deferral Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.deferral_reason, range, value, display)

  return offset + length, value
end

-- Execution Method
cboe_cboeeurope_tradereporting_boe_v2_0_40.execution_method = {}

-- Size: Execution Method
cboe_cboeeurope_tradereporting_boe_v2_0_40.execution_method.size = 1

-- Display: Execution Method
cboe_cboeeurope_tradereporting_boe_v2_0_40.execution_method.display = function(value)
  if value == "A" then
    return "Execution Method: Automated (A)"
  end
  if value == "M" then
    return "Execution Method: Manual (M)"
  end
  if value == "U" then
    return "Execution Method: Unspecified (U)"
  end

  return "Execution Method: Unknown("..value..")"
end

-- Dissect: Execution Method
cboe_cboeeurope_tradereporting_boe_v2_0_40.execution_method.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.execution_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.execution_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.execution_method, range, value, display)

  return offset + length, value
end

-- Gross Trade Amt
cboe_cboeeurope_tradereporting_boe_v2_0_40.gross_trade_amt = {}

-- Size: Gross Trade Amt
cboe_cboeeurope_tradereporting_boe_v2_0_40.gross_trade_amt.size = 8

-- Display: Gross Trade Amt
cboe_cboeeurope_tradereporting_boe_v2_0_40.gross_trade_amt.display = function(value)
  return "Gross Trade Amt: "..value
end

-- Translate: Gross Trade Amt
cboe_cboeeurope_tradereporting_boe_v2_0_40.gross_trade_amt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Gross Trade Amt
cboe_cboeeurope_tradereporting_boe_v2_0_40.gross_trade_amt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.gross_trade_amt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cboeeurope_tradereporting_boe_v2_0_40.gross_trade_amt.translate(raw)
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.gross_trade_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.gross_trade_amt, range, value, display)

  return offset + length, value
end

-- Id Source
cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source = {}

-- Size: Id Source
cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.size = 1

-- Display: Id Source
cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.display = function(value)
  if value == "4" then
    return "Id Source: Isin (4)"
  end
  if value == "5" then
    return "Id Source: Ric (5)"
  end

  return "Id Source: Unknown("..value..")"
end

-- Dissect: Id Source
cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.id_source, range, value, display)

  return offset + length, value
end

-- Intra Firm Trade Ind
cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind = {}

-- Size: Intra Firm Trade Ind
cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind.size = 1

-- Display: Intra Firm Trade Ind
cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind.display = function(value)
  if value == "N" then
    return "Intra Firm Trade Ind: Not An Intragroup Transaction (N)"
  end
  if value == "Y" then
    return "Intra Firm Trade Ind: Is An Intragroup Transaction (Y)"
  end

  return "Intra Firm Trade Ind: Unknown("..value..")"
end

-- Dissect: Intra Firm Trade Ind
cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.intra_firm_trade_ind, range, value, display)

  return offset + length, value
end

-- Large Size
cboe_cboeeurope_tradereporting_boe_v2_0_40.large_size = {}

-- Size: Large Size
cboe_cboeeurope_tradereporting_boe_v2_0_40.large_size.size = 8

-- Display: Large Size
cboe_cboeeurope_tradereporting_boe_v2_0_40.large_size.display = function(value)
  return "Large Size: "..value
end

-- Dissect: Large Size
cboe_cboeeurope_tradereporting_boe_v2_0_40.large_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.large_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.large_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.large_size, range, value, display)

  return offset + length, value
end

-- Last Mkt
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt = {}

-- Size: Last Mkt
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt.size = 4

-- Display: Last Mkt
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Last Mkt: No Value"
  end

  return "Last Mkt: "..value
end

-- Dissect: Last Mkt
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Last Received Sequence Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_received_sequence_number = {}

-- Size: Last Received Sequence Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_received_sequence_number.size = 4

-- Display: Last Received Sequence Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_received_sequence_number.display = function(value)
  return "Last Received Sequence Number: "..value
end

-- Dissect: Last Received Sequence Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_received_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_received_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_received_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.last_received_sequence_number, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_shares = {}

-- Size: Last Shares
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_shares.size = 4

-- Display: Last Shares
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_cboeeurope_tradereporting_boe_v2_0_40.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_status = {}

-- Size: Login Response Status
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_status.size = 1

-- Display: Login Response Status
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized (N)"
  end
  if value == "D" then
    return "Login Response Status: Session Is Disabled (D)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end
  if value == "Q" then
    return "Login Response Status: Sequence Ahead In Login Message (Q)"
  end
  if value == "I" then
    return "Login Response Status: Invalid Unit Given In Login Message (I)"
  end
  if value == "F" then
    return "Login Response Status: Invalid Return Bitfield In Login Message (F)"
  end
  if value == "M" then
    return "Login Response Status: Invalid Login Request Message Structure (M)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_text = {}

-- Size: Login Response Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_text.size = 60

-- Display: Login Response Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Login Response Text: No Value"
  end

  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_text.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason = {}

-- Size: Logout Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason.size = 1

-- Display: Logout Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason.display = function(value)
  if value == "U" then
    return "Logout Reason: User Requested (U)"
  end
  if value == "E" then
    return "Logout Reason: End Of Day (E)"
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
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Reason Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logout Reason Text: No Value"
  end

  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason_text.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Match Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.match_type = {}

-- Size: Match Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.match_type.size = 1

-- Display: Match Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.match_type.display = function(value)
  if value == 1 then
    return "Match Type: Trade Reporting (1)"
  end
  if value == 3 then
    return "Match Type: Trade Reporting (3)"
  end
  if value == 9 then
    return "Match Type: Trade Reporting (9)"
  end

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.match_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.match_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.match_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.match_type, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_cboeeurope_tradereporting_boe_v2_0_40.matching_unit = {}

-- Size: Matching Unit
cboe_cboeeurope_tradereporting_boe_v2_0_40.matching_unit.size = 1

-- Display: Matching Unit
cboe_cboeeurope_tradereporting_boe_v2_0_40.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_cboeeurope_tradereporting_boe_v2_0_40.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_length = {}

-- Size: Message Length
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_length.size = 2

-- Display: Message Length
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_type = {}

-- Size: Message Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_type.size = 1

-- Display: Message Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_type.display = function(value)
  if value == 0x37 then
    return "Message Type: Login Request V 2 Message (0x37)"
  end
  if value == 0x02 then
    return "Message Type: Logout Request Message (0x02)"
  end
  if value == 0x03 then
    return "Message Type: Client Heartbeat Message (0x03)"
  end
  if value == 0x24 then
    return "Message Type: Login Response V 2 Message (0x24)"
  end
  if value == 0x08 then
    return "Message Type: Logout Message (0x08)"
  end
  if value == 0x09 then
    return "Message Type: Server Heartbeat Message (0x09)"
  end
  if value == 0x13 then
    return "Message Type: Replay Complete Message (0x13)"
  end
  if value == 0x3C then
    return "Message Type: Trade Capture Report V 2 Message (0x3C)"
  end
  if value == 0x3D then
    return "Message Type: Quote V 2 Message (0x3D)"
  end
  if value == 0x3E then
    return "Message Type: Quote Cancel V 2 Message (0x3E)"
  end
  if value == 0x30 then
    return "Message Type: Trade Capture Report Acknowledgment V 2 Message (0x30)"
  end
  if value == 0x31 then
    return "Message Type: Trade Capture Report Reject V 2 Message (0x31)"
  end
  if value == 0x32 then
    return "Message Type: Trade Capture Confirm V 2 Message (0x32)"
  end
  if value == 0x33 then
    return "Message Type: Trade Capture Report Decline V 2 Message (0x33)"
  end
  if value == 0x3F then
    return "Message Type: Quote Status V 2 Message (0x3F)"
  end
  if value == 0x40 then
    return "Message Type: Quote Reject V 2 Message (0x40)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.message_type, range, value, display)

  return offset + length, value
end

-- No Quote Entries
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_quote_entries = {}

-- Size: No Quote Entries
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_quote_entries.size = 1

-- Display: No Quote Entries
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_quote_entries.display = function(value)
  return "No Quote Entries: "..value
end

-- Dissect: No Quote Entries
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_quote_entries.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_quote_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_quote_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.no_quote_entries, range, value, display)

  return offset + length, value
end

-- No Sides
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides = {}

-- Size: No Sides
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides.size = 1

-- Display: No Sides
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides.display = function(value)
  return "No Sides: "..value
end

-- Dissect: No Sides
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.no_sides, range, value, display)

  return offset + length, value
end

-- No Unspecified Unit Replay
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_unspecified_unit_replay = {}

-- Size: No Unspecified Unit Replay
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_unspecified_unit_replay.size = 1

-- Display: No Unspecified Unit Replay
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_unspecified_unit_replay.display = function(value)
  return "No Unspecified Unit Replay: "..value
end

-- Dissect: No Unspecified Unit Replay
cboe_cboeeurope_tradereporting_boe_v2_0_40.no_unspecified_unit_replay.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_unspecified_unit_replay.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_unspecified_unit_replay.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.no_unspecified_unit_replay, range, value, display)

  return offset + length, value
end

-- Number Of Param Groups
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_param_groups = {}

-- Size: Number Of Param Groups
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_param_groups.size = 1

-- Display: Number Of Param Groups
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_param_groups.display = function(value)
  return "Number Of Param Groups: "..value
end

-- Dissect: Number Of Param Groups
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_param_groups.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_param_groups.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_param_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_param_groups, range, value, display)

  return offset + length, value
end

-- Number Of Quote Cancel V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_cancel_v_2_bitfields = {}

-- Size: Number Of Quote Cancel V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_cancel_v_2_bitfields.size = 1

-- Display: Number Of Quote Cancel V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_cancel_v_2_bitfields.display = function(value)
  return "Number Of Quote Cancel V 2 Bitfields: "..value
end

-- Dissect: Number Of Quote Cancel V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_cancel_v_2_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_cancel_v_2_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_cancel_v_2_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_quote_cancel_v_2_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Quote V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_v_2_bitfields = {}

-- Size: Number Of Quote V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_v_2_bitfields.size = 1

-- Display: Number Of Quote V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_v_2_bitfields.display = function(value)
  return "Number Of Quote V 2 Bitfields: "..value
end

-- Dissect: Number Of Quote V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_v_2_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_v_2_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_v_2_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_quote_v_2_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Return Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields = {}

-- Size: Number Of Return Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.size = 1

-- Display: Number Of Return Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.display = function(value)
  return "Number Of Return Bitfields: "..value
end

-- Dissect: Number Of Return Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_return_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Trade Capture Report V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_trade_capture_report_v_2_bitfields = {}

-- Size: Number Of Trade Capture Report V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_trade_capture_report_v_2_bitfields.size = 1

-- Display: Number Of Trade Capture Report V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_trade_capture_report_v_2_bitfields.display = function(value)
  return "Number Of Trade Capture Report V 2 Bitfields: "..value
end

-- Dissect: Number Of Trade Capture Report V 2 Bitfields
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_trade_capture_report_v_2_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_trade_capture_report_v_2_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_trade_capture_report_v_2_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_trade_capture_report_v_2_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Units
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_units = {}

-- Size: Number Of Units
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_units.size = 1

-- Display: Number Of Units
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Order Category
cboe_cboeeurope_tradereporting_boe_v2_0_40.order_category = {}

-- Size: Order Category
cboe_cboeeurope_tradereporting_boe_v2_0_40.order_category.size = 1

-- Display: Order Category
cboe_cboeeurope_tradereporting_boe_v2_0_40.order_category.display = function(value)
  if value == 0 then
    return "Order Category: Not A Negotiated Trade (0)"
  end
  if value == 3 then
    return "Order Category: Privately Negotiated Trade (3)"
  end

  return "Order Category: Unknown("..value..")"
end

-- Dissect: Order Category
cboe_cboeeurope_tradereporting_boe_v2_0_40.order_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.order_category.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.order_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.order_category, range, value, display)

  return offset + length, value
end

-- Param Group Length
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_length = {}

-- Size: Param Group Length
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_length.size = 2

-- Display: Param Group Length
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_length.display = function(value)
  return "Param Group Length: "..value
end

-- Dissect: Param Group Length
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.param_group_length, range, value, display)

  return offset + length, value
end

-- Param Group Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_type = {}

-- Size: Param Group Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_type.size = 1

-- Display: Param Group Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_type.display = function(value)
  return "Param Group Type: "..value
end

-- Dissect: Param Group Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.param_group_type, range, value, display)

  return offset + length, value
end

-- Party Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.party_id = {}

-- Size: Party Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.party_id.size = 4

-- Display: Party Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id: No Value"
  end

  return "Party Id: "..value
end

-- Dissect: Party Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.party_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.party_id.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.party_id, range, value, display)

  return offset + length, value
end

-- Party Role
cboe_cboeeurope_tradereporting_boe_v2_0_40.party_role = {}

-- Size: Party Role
cboe_cboeeurope_tradereporting_boe_v2_0_40.party_role.size = 1

-- Display: Party Role
cboe_cboeeurope_tradereporting_boe_v2_0_40.party_role.display = function(value)
  return "Party Role: "..value
end

-- Dissect: Party Role
cboe_cboeeurope_tradereporting_boe_v2_0_40.party_role.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.party_role.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.party_role, range, value, display)

  return offset + length, value
end

-- Password
cboe_cboeeurope_tradereporting_boe_v2_0_40.password = {}

-- Size: Password
cboe_cboeeurope_tradereporting_boe_v2_0_40.password.size = 10

-- Display: Password
cboe_cboeeurope_tradereporting_boe_v2_0_40.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
cboe_cboeeurope_tradereporting_boe_v2_0_40.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.password.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.password, range, value, display)

  return offset + length, value
end

-- Price Formation
cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation = {}

-- Size: Price Formation
cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation.size = 1

-- Display: Price Formation
cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation.display = function(value)
  if value == "J" then
    return "Price Formation: Trade Not Contributing To The Price Discovery Process (J)"
  end
  if value == "N" then
    return "Price Formation: Price Is Pending (N)"
  end

  return "Price Formation: Unknown("..value..")"
end

-- Dissect: Price Formation
cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.price_formation, range, value, display)

  return offset + length, value
end

-- Quote Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_id = {}

-- Size: Quote Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_id.size = 20

-- Display: Quote Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Id: No Value"
  end

  return "Quote Id: "..value
end

-- Dissect: Quote Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_id.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.reason = {}

-- Size: Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.reason.size = 1

-- Display: Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.reason.display = function(value)
  if value == "A" then
    return "Reason: Admin (A)"
  end
  if value == "Y" then
    return "Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Reason: Unforseen Reason (Z)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
cboe_cboeeurope_tradereporting_boe_v2_0_40.reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.reason, range, value, display)

  return offset + length, value
end

-- Report Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.report_time = {}

-- Size: Report Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.report_time.size = 8

-- Display: Report Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.report_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Report Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Report Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.report_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.report_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.report_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.report_time, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1 = {}

-- Size: Reserved 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.size = 1

-- Display: Reserved 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Secondary Trd Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.secondary_trd_type = {}

-- Size: Secondary Trd Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.secondary_trd_type.size = 1

-- Display: Secondary Trd Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.secondary_trd_type.display = function(value)
  return "Secondary Trd Type: "..value
end

-- Dissect: Secondary Trd Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.secondary_trd_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.secondary_trd_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.secondary_trd_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.secondary_trd_type, range, value, display)

  return offset + length, value
end

-- Security Exchange
cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange = {}

-- Size: Security Exchange
cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.size = 4

-- Display: Security Exchange
cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Security Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id = {}

-- Size: Security Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.size = 16

-- Display: Security Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.security_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.sequence_number = {}

-- Size: Sequence Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.sequence_number.size = 4

-- Display: Sequence Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.session_sub_id = {}

-- Size: Session Sub Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.session_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Sub Id: No Value"
  end

  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.session_sub_id.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_cboeeurope_tradereporting_boe_v2_0_40.side = {}

-- Size: Side
cboe_cboeeurope_tradereporting_boe_v2_0_40.side.size = 1

-- Display: Side
cboe_cboeeurope_tradereporting_boe_v2_0_40.side.display = function(value)
  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end
  if value == "8" then
    return "Side: Cross (8)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_cboeeurope_tradereporting_boe_v2_0_40.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.start_of_message = {}

-- Size: Start Of Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.start_of_message.size = 2

-- Display: Start Of Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Status
cboe_cboeeurope_tradereporting_boe_v2_0_40.status = {}

-- Size: Status
cboe_cboeeurope_tradereporting_boe_v2_0_40.status.size = 1

-- Display: Status
cboe_cboeeurope_tradereporting_boe_v2_0_40.status.display = function(value)
  if value == "0" then
    return "Status: Accepted In Response To A Quote Message (0)"
  end
  if value == "1" then
    return "Status: Cancelled In Response To A Quote Cancel (1)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
cboe_cboeeurope_tradereporting_boe_v2_0_40.status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol = {}

-- Size: Symbol
cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.size = 8

-- Display: Symbol
cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tertiary Trd Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.tertiary_trd_type = {}

-- Size: Tertiary Trd Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.tertiary_trd_type.size = 1

-- Display: Tertiary Trd Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.tertiary_trd_type.display = function(value)
  return "Tertiary Trd Type: "..value
end

-- Dissect: Tertiary Trd Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.tertiary_trd_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.tertiary_trd_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.tertiary_trd_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.tertiary_trd_type, range, value, display)

  return offset + length, value
end

-- Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.text = {}

-- Size: Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.text.size = 60

-- Display: Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cboe_cboeeurope_tradereporting_boe_v2_0_40.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.text.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.text, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_id = {}

-- Size: Trade Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_id.size = 8

-- Display: Trade Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price Condition
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_price_condition = {}

-- Size: Trade Price Condition
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_price_condition.size = 1

-- Display: Trade Price Condition
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_price_condition.display = function(value)
  return "Trade Price Condition: "..value
end

-- Dissect: Trade Price Condition
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_price_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_price_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_price_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_price_condition, range, value, display)

  return offset + length, value
end

-- Trade Publish Ind
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_ind = {}

-- Size: Trade Publish Ind
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_ind.size = 1

-- Display: Trade Publish Ind
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_ind.display = function(value)
  if value == 0 then
    return "Trade Publish Ind: Do Not Publish (0)"
  end
  if value == 1 then
    return "Trade Publish Ind: Publish Trade (1)"
  end
  if value == 2 then
    return "Trade Publish Ind: Deferred Publication (2)"
  end

  return "Trade Publish Ind: Unknown("..value..")"
end

-- Dissect: Trade Publish Ind
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_ind.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_ind.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_publish_ind, range, value, display)

  return offset + length, value
end

-- Trade Publish Indicator
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_indicator = {}

-- Size: Trade Publish Indicator
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_indicator.size = 1

-- Display: Trade Publish Indicator
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_indicator.display = function(value)
  if value == 0 then
    return "Trade Publish Indicator: Do Not Publish (0)"
  end
  if value == 1 then
    return "Trade Publish Indicator: Publish Trade (1)"
  end
  if value == 2 then
    return "Trade Publish Indicator: Deferred Publication (2)"
  end

  return "Trade Publish Indicator: Unknown("..value..")"
end

-- Dissect: Trade Publish Indicator
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_publish_indicator, range, value, display)

  return offset + length, value
end

-- Trade Report Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id = {}

-- Size: Trade Report Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id.size = 20

-- Display: Trade Report Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Report Id: No Value"
  end

  return "Trade Report Id: "..value
end

-- Dissect: Trade Report Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_report_id, range, value, display)

  return offset + length, value
end

-- Trade Report Ref Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_ref_id = {}

-- Size: Trade Report Ref Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_ref_id.size = 20

-- Display: Trade Report Ref Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_ref_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Report Ref Id: No Value"
  end

  return "Trade Report Ref Id: "..value
end

-- Dissect: Trade Report Ref Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_ref_id.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_report_ref_id, range, value, display)

  return offset + length, value
end

-- Trade Report Trans Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_trans_type = {}

-- Size: Trade Report Trans Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_trans_type.size = 1

-- Display: Trade Report Trans Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_trans_type.display = function(value)
  if value == 0 then
    return "Trade Report Trans Type: New (0)"
  end
  if value == 1 then
    return "Trade Report Trans Type: Cancel (1)"
  end
  if value == 2 then
    return "Trade Report Trans Type: Replace (2)"
  end
  if value == 3 then
    return "Trade Report Trans Type: Release (3)"
  end

  return "Trade Report Trans Type: Unknown("..value..")"
end

-- Dissect: Trade Report Trans Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_trans_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_report_trans_type, range, value, display)

  return offset + length, value
end

-- Trade Report Type Return
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_type_return = {}

-- Size: Trade Report Type Return
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_type_return.size = 2

-- Display: Trade Report Type Return
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_type_return.display = function(value)
  return "Trade Report Type Return: "..value
end

-- Dissect: Trade Report Type Return
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_type_return.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_type_return.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_type_return.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_report_type_return, range, value, display)

  return offset + length, value
end

-- Trade Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_time = {}

-- Size: Trade Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_time.size = 8

-- Display: Trade Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trade Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trade Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trading_session_sub_id.display = function(value)
  if value == 2 then
    return "Trading Session Sub Id: Scheduled Opening Auction (2)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Scheduled Closing Auction (4)"
  end
  if value == 6 then
    return "Trading Session Sub Id: Scheduled Intraday Auction (6)"
  end
  if value == 8 then
    return "Trading Session Sub Id: Unspecified Auction (8)"
  end
  if value == 9 then
    return "Trading Session Sub Id: Unscheduled Auction (9)"
  end
  if value == 3 then
    return "Trading Session Sub Id: Continuous Trading (3)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Post Trading (5)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
cboe_cboeeurope_tradereporting_boe_v2_0_40.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Transaction Category
cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_category = {}

-- Size: Transaction Category
cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_category.size = 1

-- Display: Transaction Category
cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_category.display = function(value)
  if value == "P" then
    return "Transaction Category: Regular Trade (P)"
  end
  if value == "O" then
    return "Transaction Category: Portfolio Trade (O)"
  end
  if value == "D" then
    return "Transaction Category: Dark Trade (D)"
  end
  if value == "R" then
    return "Transaction Category: Trade With Price Improvement (R)"
  end
  if value == "Y" then
    return "Transaction Category: Exchange For Physical (Y)"
  end
  if value == "Z" then
    return "Transaction Category: Package Trade (Z)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_time = {}

-- Size: Transaction Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_time.size = 8

-- Display: Transaction Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Trd Sub Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_sub_type = {}

-- Size: Trd Sub Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_sub_type.size = 1

-- Display: Trd Sub Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_sub_type.display = function(value)
  return "Trd Sub Type: "..value
end

-- Dissect: Trd Sub Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trd_sub_type, range, value, display)

  return offset + length, value
end

-- Unit Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_number = {}

-- Size: Unit Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_number.size = 1

-- Display: Unit Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Unit Sequence
cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_sequence = {}

-- Size: Unit Sequence
cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_sequence.size = 4

-- Display: Unit Sequence
cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_sequence.display = function(value)
  return "Unit Sequence: "..value
end

-- Dissect: Unit Sequence
cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.unit_sequence, range, value, display)

  return offset + length, value
end

-- Username
cboe_cboeeurope_tradereporting_boe_v2_0_40.username = {}

-- Size: Username
cboe_cboeeurope_tradereporting_boe_v2_0_40.username.size = 4

-- Display: Username
cboe_cboeeurope_tradereporting_boe_v2_0_40.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
cboe_cboeeurope_tradereporting_boe_v2_0_40.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.username.size
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

  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.username, range, value, display)

  return offset + length, value
end

-- Venue Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.venue_type = {}

-- Size: Venue Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.venue_type.size = 1

-- Display: Venue Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.venue_type.display = function(value)
  if value == "O" then
    return "Venue Type: Off Book (O)"
  end
  if value == "B" then
    return "Venue Type: Central Limit Order Book (B)"
  end
  if value == "Q" then
    return "Venue Type: Quote Driven Market (Q)"
  end
  if value == "D" then
    return "Venue Type: Dark Order Book (D)"
  end
  if value == "A" then
    return "Venue Type: Periodic Auction (A)"
  end
  if value == "N" then
    return "Venue Type: Request For Quotes (N)"
  end
  if value == "H" then
    return "Venue Type: Hybrid Market (H)"
  end
  if value == "z" then
    return "Venue Type: Other (z)"
  end

  return "Venue Type: Unknown("..value..")"
end

-- Dissect: Venue Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.venue_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.venue_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.venue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.venue_type, range, value, display)

  return offset + length, value
end

-- Waiver Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type = {}

-- Size: Waiver Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type.size = 1

-- Display: Waiver Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type.display = function(value)
  if value == "-" then
    return "Waiver Type: No Waiver Type (-)"
  end
  if value == "0" then
    return "Waiver Type: Negotiated Trade In Liquid Instrument (0)"
  end
  if value == "1" then
    return "Waiver Type: Negotiated Trade In Illiquid Instrument (1)"
  end
  if value == "2" then
    return "Waiver Type: Negotiated Trade Subject To Conditions Other Than The (2)"
  end
  if value == "8" then
    return "Waiver Type: Negotiated Trade Subject To A Pre Trade Transparency (8)"
  end
  if value == "c" then
    return "Waiver Type: Negotiated Trade Larger Than Lis Brought Onto A (c)"
  end
  if value == "3" then
    return "Waiver Type: Reference Price (3)"
  end
  if value == "4" then
    return "Waiver Type: Pre Trade Transparency Waiver For Illiquid Instrument (4)"
  end
  if value == "5" then
    return "Waiver Type: Pre Trade Transparency Waiver For Above Standard Mar (5)"
  end
  if value == "B" then
    return "Waiver Type: Pre Trade Transparency Waiver For Illiquid Instrument (B)"
  end

  return "Waiver Type: Unknown("..value..")"
end

-- Dissect: Waiver Type
cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.waiver_type, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CboeEurope TradeReporting Boe 2.0.40
-----------------------------------------------------------------------

-- Return Bitfield 19
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19 = {}

-- Size: Return Bitfield 19
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.size = 1

-- Display: Return Bitfield 19
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 19 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Reserved 1"
  end
  -- Is Return Bitfield 19 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Reserved 2"
  end
  -- Is Return Bitfield 19 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Reserved 4"
  end
  -- Is Return Bitfield 19 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Reserved 8"
  end
  -- Is Return Bitfield 19 Intra Firm Trade Ind flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Intra Firm Trade Ind"
  end
  -- Is Return Bitfield 19 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Reserved 32"
  end
  -- Is Return Bitfield 19 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Reserved 64"
  end
  -- Is Return Bitfield 19 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 19
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.bits = function(range, value, packet, parent)

  -- Return Bitfield 19 Reserved 1: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_1, range, value)

  -- Return Bitfield 19 Reserved 2: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_2, range, value)

  -- Return Bitfield 19 Reserved 4: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_4, range, value)

  -- Return Bitfield 19 Reserved 8: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_8, range, value)

  -- Return Bitfield 19 Intra Firm Trade Ind: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_intra_firm_trade_ind, range, value)

  -- Return Bitfield 19 Reserved 32: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_32, range, value)

  -- Return Bitfield 19 Reserved 64: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_64, range, value)

  -- Return Bitfield 19 Reserved 128: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19_reserved_128, range, value)
end

-- Dissect: Return Bitfield 19
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_19, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 18
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18 = {}

-- Size: Return Bitfield 18
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.size = 1

-- Display: Return Bitfield 18
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 18 Account Type flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Account Type"
  end
  -- Is Return Bitfield 18 Cross Initiator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Cross Initiator"
  end
  -- Is Return Bitfield 18 Subreason flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Subreason"
  end
  -- Is Return Bitfield 18 Cross Trade Flag flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Cross Trade Flag"
  end
  -- Is Return Bitfield 18 Leg Price flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Leg Price"
  end
  -- Is Return Bitfield 18 Held Indicator flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Held Indicator"
  end
  -- Is Return Bitfield 18 Locate Broker flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Locate Broker"
  end
  -- Is Return Bitfield 18 Multi Juris Reporting Ind flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Multi Juris Reporting Ind"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 18
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.bits = function(range, value, packet, parent)

  -- Return Bitfield 18 Account Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_account_type, range, value)

  -- Return Bitfield 18 Cross Initiator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_cross_initiator, range, value)

  -- Return Bitfield 18 Subreason: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_subreason, range, value)

  -- Return Bitfield 18 Cross Trade Flag: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_cross_trade_flag, range, value)

  -- Return Bitfield 18 Leg Price: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_leg_price, range, value)

  -- Return Bitfield 18 Held Indicator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_held_indicator, range, value)

  -- Return Bitfield 18 Locate Broker: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_locate_broker, range, value)

  -- Return Bitfield 18 Multi Juris Reporting Ind: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18_multi_juris_reporting_ind, range, value)
end

-- Dissect: Return Bitfield 18
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_18, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 17
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17 = {}

-- Size: Return Bitfield 17
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.size = 1

-- Display: Return Bitfield 17
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 17 Price Type flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Price Type"
  end
  -- Is Return Bitfield 17 Strategy Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Strategy Id"
  end
  -- Is Return Bitfield 17 Trading Session Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Trading Session Id"
  end
  -- Is Return Bitfield 17 Trade Through Alert Type flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Trade Through Alert Type"
  end
  -- Is Return Bitfield 17 Sender Location Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Sender Location Id"
  end
  -- Is Return Bitfield 17 Floor Trader Acronym flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Floor Trader Acronym"
  end
  -- Is Return Bitfield 17 Exec Leg Cfi Code flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Exec Leg Cfi Code"
  end
  -- Is Return Bitfield 17 Cust Order Handling Inst flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Cust Order Handling Inst"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 17
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.bits = function(range, value, packet, parent)

  -- Return Bitfield 17 Price Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_price_type, range, value)

  -- Return Bitfield 17 Strategy Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_strategy_id, range, value)

  -- Return Bitfield 17 Trading Session Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_trading_session_id, range, value)

  -- Return Bitfield 17 Trade Through Alert Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_trade_through_alert_type, range, value)

  -- Return Bitfield 17 Sender Location Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_sender_location_id, range, value)

  -- Return Bitfield 17 Floor Trader Acronym: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_floor_trader_acronym, range, value)

  -- Return Bitfield 17 Exec Leg Cfi Code: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_exec_leg_cfi_code, range, value)

  -- Return Bitfield 17 Cust Order Handling Inst: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17_cust_order_handling_inst, range, value)
end

-- Dissect: Return Bitfield 17
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_17, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 16
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16 = {}

-- Size: Return Bitfield 16
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.size = 1

-- Display: Return Bitfield 16
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 16 Frequent Trader Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Frequent Trader Id"
  end
  -- Is Return Bitfield 16 Session Eligibility flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Session Eligibility"
  end
  -- Is Return Bitfield 16 Combo Order flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Combo Order"
  end
  -- Is Return Bitfield 16 Compression flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Compression"
  end
  -- Is Return Bitfield 16 Floor Destination flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Floor Destination"
  end
  -- Is Return Bitfield 16 Floor Routing Inst flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Floor Routing Inst"
  end
  -- Is Return Bitfield 16 Multi Class Spread flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Multi Class Spread"
  end
  -- Is Return Bitfield 16 Order Origin flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Order Origin"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 16
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.bits = function(range, value, packet, parent)

  -- Return Bitfield 16 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_frequent_trader_id, range, value)

  -- Return Bitfield 16 Session Eligibility: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_session_eligibility, range, value)

  -- Return Bitfield 16 Combo Order: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_combo_order, range, value)

  -- Return Bitfield 16 Compression: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_compression, range, value)

  -- Return Bitfield 16 Floor Destination: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_floor_destination, range, value)

  -- Return Bitfield 16 Floor Routing Inst: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_floor_routing_inst, range, value)

  -- Return Bitfield 16 Multi Class Spread: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_multi_class_spread, range, value)

  -- Return Bitfield 16 Order Origin: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16_order_origin, range, value)
end

-- Dissect: Return Bitfield 16
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_16, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 15
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15 = {}

-- Size: Return Bitfield 15
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.size = 1

-- Display: Return Bitfield 15
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 15 Trade Reporting Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Trade Reporting Indicator"
  end
  -- Is Return Bitfield 15 Equity Party Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Equity Party Id"
  end
  -- Is Return Bitfield 15 Equity Nbbo Protect flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Equity Nbbo Protect"
  end
  -- Is Return Bitfield 15 Mass Cancel Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Mass Cancel Id"
  end
  -- Is Return Bitfield 15 Trade Publish Ind flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Trade Publish Ind"
  end
  -- Is Return Bitfield 15 Report Time flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Report Time"
  end
  -- Is Return Bitfield 15 Leg Symbol Sfx flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Leg Symbol Sfx"
  end
  -- Is Return Bitfield 15 Client Id Attr flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Client Id Attr"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 15
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.bits = function(range, value, packet, parent)

  -- Return Bitfield 15 Trade Reporting Indicator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_trade_reporting_indicator, range, value)

  -- Return Bitfield 15 Equity Party Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_equity_party_id, range, value)

  -- Return Bitfield 15 Equity Nbbo Protect: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_equity_nbbo_protect, range, value)

  -- Return Bitfield 15 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_mass_cancel_id, range, value)

  -- Return Bitfield 15 Trade Publish Ind: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_trade_publish_ind, range, value)

  -- Return Bitfield 15 Report Time: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_report_time, range, value)

  -- Return Bitfield 15 Leg Symbol Sfx: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_leg_symbol_sfx, range, value)

  -- Return Bitfield 15 Client Id Attr: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15_client_id_attr, range, value)
end

-- Dissect: Return Bitfield 15
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_15, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 14
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14 = {}

-- Size: Return Bitfield 14
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.size = 1

-- Display: Return Bitfield 14
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 14 Leg Cfi Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Leg Cfi Code"
  end
  -- Is Return Bitfield 14 Leg Maturity Date flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Leg Maturity Date"
  end
  -- Is Return Bitfield 14 Leg Strike Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Leg Strike Price"
  end
  -- Is Return Bitfield 14 Quote Room Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Quote Room Id"
  end
  -- Is Return Bitfield 14 Secondary Exec Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Secondary Exec Id"
  end
  -- Is Return Bitfield 14 User Request Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 User Request Id"
  end
  -- Is Return Bitfield 14 Username flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Username"
  end
  -- Is Return Bitfield 14 User Status flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 User Status"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 14
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.bits = function(range, value, packet, parent)

  -- Return Bitfield 14 Leg Cfi Code: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_leg_cfi_code, range, value)

  -- Return Bitfield 14 Leg Maturity Date: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_leg_maturity_date, range, value)

  -- Return Bitfield 14 Leg Strike Price: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_leg_strike_price, range, value)

  -- Return Bitfield 14 Quote Room Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_quote_room_id, range, value)

  -- Return Bitfield 14 Secondary Exec Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_secondary_exec_id, range, value)

  -- Return Bitfield 14 User Request Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_user_request_id, range, value)

  -- Return Bitfield 14 Username: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_username, range, value)

  -- Return Bitfield 14 User Status: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14_user_status, range, value)
end

-- Dissect: Return Bitfield 14
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_14, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 13
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13 = {}

-- Size: Return Bitfield 13
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.size = 1

-- Display: Return Bitfield 13
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 13 Cum Qty flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Cum Qty"
  end
  -- Is Return Bitfield 13 Day Order Qty flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Day Order Qty"
  end
  -- Is Return Bitfield 13 Day Cum Qty flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Day Cum Qty"
  end
  -- Is Return Bitfield 13 Avg Px flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Avg Px"
  end
  -- Is Return Bitfield 13 Day Avg Px flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Day Avg Px"
  end
  -- Is Return Bitfield 13 Pending Status flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Pending Status"
  end
  -- Is Return Bitfield 13 Drill Thru Protection flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Drill Thru Protection"
  end
  -- Is Return Bitfield 13 Multileg Reporting Type flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Multileg Reporting Type"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 13
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.bits = function(range, value, packet, parent)

  -- Return Bitfield 13 Cum Qty: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_cum_qty, range, value)

  -- Return Bitfield 13 Day Order Qty: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_day_order_qty, range, value)

  -- Return Bitfield 13 Day Cum Qty: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_day_cum_qty, range, value)

  -- Return Bitfield 13 Avg Px: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_avg_px, range, value)

  -- Return Bitfield 13 Day Avg Px: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_day_avg_px, range, value)

  -- Return Bitfield 13 Pending Status: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_pending_status, range, value)

  -- Return Bitfield 13 Drill Thru Protection: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_drill_thru_protection, range, value)

  -- Return Bitfield 13 Multileg Reporting Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13_multileg_reporting_type, range, value)
end

-- Dissect: Return Bitfield 13
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_13, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 12
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12 = {}

-- Size: Return Bitfield 12
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.size = 1

-- Display: Return Bitfield 12
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 12 Cti Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Cti Code"
  end
  -- Is Return Bitfield 12 Manual Order Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Manual Order Indicator"
  end
  -- Is Return Bitfield 12 Operator Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Operator Id"
  end
  -- Is Return Bitfield 12 Trade Date flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Trade Date"
  end
  -- Is Return Bitfield 12 Clearing Price flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Clearing Price"
  end
  -- Is Return Bitfield 12 Clearing Size flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Clearing Size"
  end
  -- Is Return Bitfield 12 Clearing Symbol flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Clearing Symbol"
  end
  -- Is Return Bitfield 12 Clearing Optional Data flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Clearing Optional Data"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 12
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.bits = function(range, value, packet, parent)

  -- Return Bitfield 12 Cti Code: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_cti_code, range, value)

  -- Return Bitfield 12 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_manual_order_indicator, range, value)

  -- Return Bitfield 12 Operator Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_operator_id, range, value)

  -- Return Bitfield 12 Trade Date: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_trade_date, range, value)

  -- Return Bitfield 12 Clearing Price: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_clearing_price, range, value)

  -- Return Bitfield 12 Clearing Size: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_clearing_size, range, value)

  -- Return Bitfield 12 Clearing Symbol: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_clearing_symbol, range, value)

  -- Return Bitfield 12 Clearing Optional Data: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12_clearing_optional_data, range, value)
end

-- Dissect: Return Bitfield 12
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_12, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 11
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11 = {}

-- Size: Return Bitfield 11
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.size = 1

-- Display: Return Bitfield 11
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 11 Client Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Client Id"
  end
  -- Is Return Bitfield 11 Investor Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Investor Id"
  end
  -- Is Return Bitfield 11 Executor Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Executor Id"
  end
  -- Is Return Bitfield 11 Order Origination flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Order Origination"
  end
  -- Is Return Bitfield 11 Algorithmic Indicator flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Algorithmic Indicator"
  end
  -- Is Return Bitfield 11 Deferral Reason flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Deferral Reason"
  end
  -- Is Return Bitfield 11 Investor Qualified Role flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Investor Qualified Role"
  end
  -- Is Return Bitfield 11 Executor Qualified Role flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Executor Qualified Role"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 11
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.bits = function(range, value, packet, parent)

  -- Return Bitfield 11 Client Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_client_id, range, value)

  -- Return Bitfield 11 Investor Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_investor_id, range, value)

  -- Return Bitfield 11 Executor Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_executor_id, range, value)

  -- Return Bitfield 11 Order Origination: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_order_origination, range, value)

  -- Return Bitfield 11 Algorithmic Indicator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_algorithmic_indicator, range, value)

  -- Return Bitfield 11 Deferral Reason: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_deferral_reason, range, value)

  -- Return Bitfield 11 Investor Qualified Role: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_investor_qualified_role, range, value)

  -- Return Bitfield 11 Executor Qualified Role: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11_executor_qualified_role, range, value)
end

-- Dissect: Return Bitfield 11
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_11, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 10
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10 = {}

-- Size: Return Bitfield 10
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.size = 1

-- Display: Return Bitfield 10
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 10 Cross Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Cross Id"
  end
  -- Is Return Bitfield 10 Alloc Qty flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Alloc Qty"
  end
  -- Is Return Bitfield 10 Give Up Firm Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Give Up Firm Id"
  end
  -- Is Return Bitfield 10 Routing Firm Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Routing Firm Id"
  end
  -- Is Return Bitfield 10 Waiver Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Waiver Type"
  end
  -- Is Return Bitfield 10 Cross Exclusion Indicator flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Cross Exclusion Indicator"
  end
  -- Is Return Bitfield 10 Price Formation flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Price Formation"
  end
  -- Is Return Bitfield 10 Client Qualified Role flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Client Qualified Role"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 10
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.bits = function(range, value, packet, parent)

  -- Return Bitfield 10 Cross Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_cross_id, range, value)

  -- Return Bitfield 10 Alloc Qty: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_alloc_qty, range, value)

  -- Return Bitfield 10 Give Up Firm Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_give_up_firm_id, range, value)

  -- Return Bitfield 10 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_routing_firm_id, range, value)

  -- Return Bitfield 10 Waiver Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_waiver_type, range, value)

  -- Return Bitfield 10 Cross Exclusion Indicator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_cross_exclusion_indicator, range, value)

  -- Return Bitfield 10 Price Formation: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_price_formation, range, value)

  -- Return Bitfield 10 Client Qualified Role: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10_client_qualified_role, range, value)
end

-- Dissect: Return Bitfield 10
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_10, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 9
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9 = {}

-- Size: Return Bitfield 9
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.size = 1

-- Display: Return Bitfield 9
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 9 Marketing Fee Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Marketing Fee Code"
  end
  -- Is Return Bitfield 9 Target Party Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Target Party Id"
  end
  -- Is Return Bitfield 9 Auction Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Auction Id"
  end
  -- Is Return Bitfield 9 Order Category flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Order Category"
  end
  -- Is Return Bitfield 9 Liquidity Provision flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Liquidity Provision"
  end
  -- Is Return Bitfield 9 Cmta Number flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Cmta Number"
  end
  -- Is Return Bitfield 9 Cross Type flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Cross Type"
  end
  -- Is Return Bitfield 9 Cross Prioritization flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Cross Prioritization"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 9
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.bits = function(range, value, packet, parent)

  -- Return Bitfield 9 Marketing Fee Code: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_marketing_fee_code, range, value)

  -- Return Bitfield 9 Target Party Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_target_party_id, range, value)

  -- Return Bitfield 9 Auction Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_auction_id, range, value)

  -- Return Bitfield 9 Order Category: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_order_category, range, value)

  -- Return Bitfield 9 Liquidity Provision: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_liquidity_provision, range, value)

  -- Return Bitfield 9 Cmta Number: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_cmta_number, range, value)

  -- Return Bitfield 9 Cross Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_cross_type, range, value)

  -- Return Bitfield 9 Cross Prioritization: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9_cross_prioritization, range, value)
end

-- Dissect: Return Bitfield 9
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_9, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 8
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8 = {}

-- Size: Return Bitfield 8
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.size = 1

-- Display: Return Bitfield 8
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 8 Fee Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Fee Code"
  end
  -- Is Return Bitfield 8 Echo Text flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Echo Text"
  end
  -- Is Return Bitfield 8 Stop Px flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Stop Px"
  end
  -- Is Return Bitfield 8 Routing Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Routing Inst"
  end
  -- Is Return Bitfield 8 Rout Strategy flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Rout Strategy"
  end
  -- Is Return Bitfield 8 Route Delivery Method flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Route Delivery Method"
  end
  -- Is Return Bitfield 8 Ex Destination flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Ex Destination"
  end
  -- Is Return Bitfield 8 Trade Report Ref Id flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Trade Report Ref Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 8
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.bits = function(range, value, packet, parent)

  -- Return Bitfield 8 Fee Code: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_fee_code, range, value)

  -- Return Bitfield 8 Echo Text: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_echo_text, range, value)

  -- Return Bitfield 8 Stop Px: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_stop_px, range, value)

  -- Return Bitfield 8 Routing Inst: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_routing_inst, range, value)

  -- Return Bitfield 8 Rout Strategy: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_rout_strategy, range, value)

  -- Return Bitfield 8 Route Delivery Method: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_route_delivery_method, range, value)

  -- Return Bitfield 8 Ex Destination: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_ex_destination, range, value)

  -- Return Bitfield 8 Trade Report Ref Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8_trade_report_ref_id, range, value)
end

-- Dissect: Return Bitfield 8
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_8, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 7
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7 = {}

-- Size: Return Bitfield 7
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.size = 1

-- Display: Return Bitfield 7
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 7 Sub Liquidity Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Sub Liquidity Indicator"
  end
  -- Is Return Bitfield 7 Trade Report Type Return flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Trade Report Type Return"
  end
  -- Is Return Bitfield 7 Trade Publish Ind Return flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Trade Publish Ind Return"
  end
  -- Is Return Bitfield 7 Text flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Text"
  end
  -- Is Return Bitfield 7 Bid flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Bid"
  end
  -- Is Return Bitfield 7 Offer flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Offer"
  end
  -- Is Return Bitfield 7 Large Size flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Large Size"
  end
  -- Is Return Bitfield 7 Last Mkt flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Last Mkt"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 7
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.bits = function(range, value, packet, parent)

  -- Return Bitfield 7 Sub Liquidity Indicator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_sub_liquidity_indicator, range, value)

  -- Return Bitfield 7 Trade Report Type Return: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_trade_report_type_return, range, value)

  -- Return Bitfield 7 Trade Publish Ind Return: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_trade_publish_ind_return, range, value)

  -- Return Bitfield 7 Text: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_text, range, value)

  -- Return Bitfield 7 Bid: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_bid, range, value)

  -- Return Bitfield 7 Offer: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_offer, range, value)

  -- Return Bitfield 7 Large Size: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_large_size, range, value)

  -- Return Bitfield 7 Last Mkt: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7_last_mkt, range, value)
end

-- Dissect: Return Bitfield 7
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_7, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 6
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6 = {}

-- Size: Return Bitfield 6
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.size = 1

-- Display: Return Bitfield 6
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 6 Secondary Order Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Secondary Order Id"
  end
  -- Is Return Bitfield 6 Ccp flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Ccp"
  end
  -- Is Return Bitfield 6 Contra Capacity flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Contra Capacity"
  end
  -- Is Return Bitfield 6 Attributed Quote flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Attributed Quote"
  end
  -- Is Return Bitfield 6 Ext Exec Inst flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Ext Exec Inst"
  end
  -- Is Return Bitfield 6 Bulk Order Ids flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Bulk Order Ids"
  end
  -- Is Return Bitfield 6 Bulk Reject Reasons flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Bulk Reject Reasons"
  end
  -- Is Return Bitfield 6 Party Role flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Party Role"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 6
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.bits = function(range, value, packet, parent)

  -- Return Bitfield 6 Secondary Order Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_secondary_order_id, range, value)

  -- Return Bitfield 6 Ccp: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_ccp, range, value)

  -- Return Bitfield 6 Contra Capacity: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_contra_capacity, range, value)

  -- Return Bitfield 6 Attributed Quote: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_attributed_quote, range, value)

  -- Return Bitfield 6 Ext Exec Inst: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_ext_exec_inst, range, value)

  -- Return Bitfield 6 Bulk Order Ids: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_bulk_order_ids, range, value)

  -- Return Bitfield 6 Bulk Reject Reasons: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_bulk_reject_reasons, range, value)

  -- Return Bitfield 6 Party Role: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6_party_role, range, value)
end

-- Dissect: Return Bitfield 6
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_6, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 5
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5 = {}

-- Size: Return Bitfield 5
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.size = 1

-- Display: Return Bitfield 5
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 5 Orig Cl Ord Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Orig Cl Ord Id"
  end
  -- Is Return Bitfield 5 Leaves Qty flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Leaves Qty"
  end
  -- Is Return Bitfield 5 Last Shares flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Last Shares"
  end
  -- Is Return Bitfield 5 Last Price flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Last Price"
  end
  -- Is Return Bitfield 5 Display Price flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Display Price"
  end
  -- Is Return Bitfield 5 Working Price flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Working Price"
  end
  -- Is Return Bitfield 5 Base Liquidity Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Base Liquidity Indicator"
  end
  -- Is Return Bitfield 5 Expire Time flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Expire Time"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 5
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.bits = function(range, value, packet, parent)

  -- Return Bitfield 5 Orig Cl Ord Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_orig_cl_ord_id, range, value)

  -- Return Bitfield 5 Leaves Qty: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_leaves_qty, range, value)

  -- Return Bitfield 5 Last Shares: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_last_shares, range, value)

  -- Return Bitfield 5 Last Price: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_last_price, range, value)

  -- Return Bitfield 5 Display Price: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_display_price, range, value)

  -- Return Bitfield 5 Working Price: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_working_price, range, value)

  -- Return Bitfield 5 Base Liquidity Indicator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_base_liquidity_indicator, range, value)

  -- Return Bitfield 5 Expire Time: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5_expire_time, range, value)
end

-- Dissect: Return Bitfield 5
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_5, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 4
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4 = {}

-- Size: Return Bitfield 4
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.size = 1

-- Display: Return Bitfield 4
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 4 Maturity Date flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Maturity Date"
  end
  -- Is Return Bitfield 4 Strike Price flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Strike Price"
  end
  -- Is Return Bitfield 4 Put Or Call flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Put Or Call"
  end
  -- Is Return Bitfield 4 Open Close flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Open Close"
  end
  -- Is Return Bitfield 4 Cl Ord Id Batch flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Cl Ord Id Batch"
  end
  -- Is Return Bitfield 4 Corrected Size flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Corrected Size"
  end
  -- Is Return Bitfield 4 Party Id flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Party Id"
  end
  -- Is Return Bitfield 4 Access Fee flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Access Fee"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 4
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.bits = function(range, value, packet, parent)

  -- Return Bitfield 4 Maturity Date: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_maturity_date, range, value)

  -- Return Bitfield 4 Strike Price: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_strike_price, range, value)

  -- Return Bitfield 4 Put Or Call: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_put_or_call, range, value)

  -- Return Bitfield 4 Open Close: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_open_close, range, value)

  -- Return Bitfield 4 Cl Ord Id Batch: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_cl_ord_id_batch, range, value)

  -- Return Bitfield 4 Corrected Size: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_corrected_size, range, value)

  -- Return Bitfield 4 Party Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_party_id, range, value)

  -- Return Bitfield 4 Access Fee: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4_access_fee, range, value)
end

-- Dissect: Return Bitfield 4
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_4, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 3
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3 = {}

-- Size: Return Bitfield 3
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.size = 1

-- Display: Return Bitfield 3
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 3 Account flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Account"
  end
  -- Is Return Bitfield 3 Clearing Firm flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Clearing Firm"
  end
  -- Is Return Bitfield 3 Clearing Account flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Clearing Account"
  end
  -- Is Return Bitfield 3 Display Indicator flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Display Indicator"
  end
  -- Is Return Bitfield 3 Max Floor flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Max Floor"
  end
  -- Is Return Bitfield 3 Discretion Amount flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Discretion Amount"
  end
  -- Is Return Bitfield 3 Order Qty flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Order Qty"
  end
  -- Is Return Bitfield 3 Prevent Match flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Prevent Match"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 3
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.bits = function(range, value, packet, parent)

  -- Return Bitfield 3 Account: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_account, range, value)

  -- Return Bitfield 3 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_clearing_firm, range, value)

  -- Return Bitfield 3 Clearing Account: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_clearing_account, range, value)

  -- Return Bitfield 3 Display Indicator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_display_indicator, range, value)

  -- Return Bitfield 3 Max Floor: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_max_floor, range, value)

  -- Return Bitfield 3 Discretion Amount: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_discretion_amount, range, value)

  -- Return Bitfield 3 Order Qty: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_order_qty, range, value)

  -- Return Bitfield 3 Prevent Match: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3_prevent_match, range, value)
end

-- Dissect: Return Bitfield 3
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_3, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 2
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2 = {}

-- Size: Return Bitfield 2
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.size = 1

-- Display: Return Bitfield 2
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 2 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Symbol"
  end
  -- Is Return Bitfield 2 Symbol Sfx flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Symbol Sfx"
  end
  -- Is Return Bitfield 2 Currency flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Currency"
  end
  -- Is Return Bitfield 2 Id Source flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Id Source"
  end
  -- Is Return Bitfield 2 Security Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Security Id"
  end
  -- Is Return Bitfield 2 Security Exchange flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Security Exchange"
  end
  -- Is Return Bitfield 2 Capacity flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Capacity"
  end
  -- Is Return Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 2
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.bits = function(range, value, packet, parent)

  -- Return Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_symbol, range, value)

  -- Return Bitfield 2 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_symbol_sfx, range, value)

  -- Return Bitfield 2 Currency: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_currency, range, value)

  -- Return Bitfield 2 Id Source: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_id_source, range, value)

  -- Return Bitfield 2 Security Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_security_id, range, value)

  -- Return Bitfield 2 Security Exchange: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_security_exchange, range, value)

  -- Return Bitfield 2 Capacity: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_capacity, range, value)

  -- Return Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2_reserved_128, range, value)
end

-- Dissect: Return Bitfield 2
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_2, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1 = {}

-- Size: Return Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.size = 1

-- Display: Return Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 1 Side flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Side"
  end
  -- Is Return Bitfield 1 Peg Difference flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Peg Difference"
  end
  -- Is Return Bitfield 1 Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Price"
  end
  -- Is Return Bitfield 1 Exec Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Exec Inst"
  end
  -- Is Return Bitfield 1 Ord Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Ord Type"
  end
  -- Is Return Bitfield 1 Time In Force flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Time In Force"
  end
  -- Is Return Bitfield 1 Min Qty flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Min Qty"
  end
  -- Is Return Bitfield 1 Max Remove Pct flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Max Remove Pct"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.bits = function(range, value, packet, parent)

  -- Return Bitfield 1 Side: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_side, range, value)

  -- Return Bitfield 1 Peg Difference: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_peg_difference, range, value)

  -- Return Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_price, range, value)

  -- Return Bitfield 1 Exec Inst: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_exec_inst, range, value)

  -- Return Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_ord_type, range, value)

  -- Return Bitfield 1 Time In Force: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_time_in_force, range, value)

  -- Return Bitfield 1 Min Qty: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_min_qty, range, value)

  -- Return Bitfield 1 Max Remove Pct: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1_max_remove_pct, range, value)
end

-- Dissect: Return Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.display(range, value, packet, parent)
  local element = parent:add_le(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.return_bitfield_1, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Quote Reject V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_reject_v_2_message = {}

-- Read runtime size of: Quote Reject V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_reject_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Quote Reject V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_reject_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Reject V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_reject_v_2_message.fields = function(buffer, offset, packet, parent, size_of_quote_reject_v_2_message)
  local index = offset

  -- Quote Id: Text
  index, quote_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_id.dissect(buffer, index, packet, parent)

  -- Reason: Text
  index, reason = cboe_cboeeurope_tradereporting_boe_v2_0_40.reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cboeeurope_tradereporting_boe_v2_0_40.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Reject V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_reject_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_quote_reject_v_2_message)
  local size_of_quote_reject_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_reject_v_2_message.size(buffer, offset)
  local index = offset + size_of_quote_reject_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_reject_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_reject_v_2_message.fields(buffer, offset, packet, parent, size_of_quote_reject_v_2_message)
    parent:set_len(size_of_quote_reject_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_reject_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_reject_v_2_message.fields(buffer, offset, packet, parent, size_of_quote_reject_v_2_message)

    return index
  end
end

-- Quote Status V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_status_v_2_message = {}

-- Read runtime size of: Quote Status V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_status_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Quote Status V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_status_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Status V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_status_v_2_message.fields = function(buffer, offset, packet, parent, size_of_quote_status_v_2_message)
  local index = offset

  -- Quote Id: Text
  index, quote_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_id.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = cboe_cboeeurope_tradereporting_boe_v2_0_40.status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Text
  local text = nil

  local text_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x08) > 0

  if text_exists then
    index, text = cboe_cboeeurope_tradereporting_boe_v2_0_40.text.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Status V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_status_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_quote_status_v_2_message)
  local size_of_quote_status_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_status_v_2_message.size(buffer, offset)
  local index = offset + size_of_quote_status_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_status_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_status_v_2_message.fields(buffer, offset, packet, parent, size_of_quote_status_v_2_message)
    parent:set_len(size_of_quote_status_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_status_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_status_v_2_message.fields(buffer, offset, packet, parent, size_of_quote_status_v_2_message)

    return index
  end
end

-- Trd Cap Ack Side Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp = {}

-- Size: Trd Cap Ack Side Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.size =
  cboe_cboeeurope_tradereporting_boe_v2_0_40.side.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.account.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.party_id.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.party_role.size

-- Display: Trd Cap Ack Side Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trd Cap Ack Side Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.fields = function(buffer, offset, packet, parent, trd_cap_ack_side_grp_index)
  local index = offset

  -- Implicit Trd Cap Ack Side Grp Index
  if trd_cap_ack_side_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trd_cap_ack_side_grp_index, trd_cap_ack_side_grp_index)
    iteration:set_generated()
  end

  -- Side: Alphanumeric
  index, side = cboe_cboeeurope_tradereporting_boe_v2_0_40.side.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_cboeeurope_tradereporting_boe_v2_0_40.account.dissect(buffer, index, packet, parent)

  -- Party Id: Alpha
  index, party_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.party_id.dissect(buffer, index, packet, parent)

  -- Party Role: Alphanumeric
  index, party_role = cboe_cboeeurope_tradereporting_boe_v2_0_40.party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trd Cap Ack Side Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.dissect = function(buffer, offset, packet, parent, trd_cap_ack_side_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trd_cap_ack_side_grp, buffer(offset, 0))
    local index = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.fields(buffer, offset, packet, parent, trd_cap_ack_side_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.fields(buffer, offset, packet, parent, trd_cap_ack_side_grp_index)
  end
end

-- Trade Capture Report Decline V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_decline_v_2_message = {}

-- Read runtime size of: Trade Capture Report Decline V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_decline_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Capture Report Decline V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_decline_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report Decline V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_decline_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_capture_report_decline_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_time.dissect(buffer, index, packet, parent)

  -- Trade Report Id: Text
  index, trade_report_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: Text
  index, trade_report_ref_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_shares.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_cboeeurope_tradereporting_boe_v2_0_40.contra_broker.dissect(buffer, index, packet, parent)

  -- Reason: Text
  index, reason = cboe_cboeeurope_tradereporting_boe_v2_0_40.reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cboeeurope_tradereporting_boe_v2_0_40.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- No Sides: Binary
  index, no_sides = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides.dissect(buffer, index, packet, parent)

  -- Repeating: Trd Cap Ack Side Grp
  for trd_cap_ack_side_grp_index = 1, no_sides do
    index, trd_cap_ack_side_grp = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.dissect(buffer, index, packet, parent, trd_cap_ack_side_grp_index)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cboeeurope_tradereporting_boe_v2_0_40.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cboeeurope_tradereporting_boe_v2_0_40.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Type Return
  local trade_report_type_return = nil

  local trade_report_type_return_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x02) > 0

  if trade_report_type_return_exists then
    index, trade_report_type_return = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_type_return.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Mkt
  local last_mkt = nil

  local last_mkt_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x80) > 0

  if last_mkt_exists then
    index, last_mkt = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Formation
  local price_formation = nil

  local price_formation_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x40) > 0

  if price_formation_exists then
    index, price_formation = cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Deferral Reason
  local deferral_reason = nil

  local deferral_reason_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x20) > 0

  if deferral_reason_exists then
    index, deferral_reason = cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Intra Firm Trade Ind
  local intra_firm_trade_ind = nil

  local intra_firm_trade_ind_exists = number_of_return_bitfields >= 19 and bit.band(return_bitfield_19, 0x10) > 0

  if intra_firm_trade_ind_exists then
    index, intra_firm_trade_ind = cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Capture Report Decline V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_decline_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_capture_report_decline_v_2_message)
  local size_of_trade_capture_report_decline_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_decline_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_capture_report_decline_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_decline_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_decline_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_decline_v_2_message)
    parent:set_len(size_of_trade_capture_report_decline_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_decline_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_decline_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_decline_v_2_message)

    return index
  end
end

-- Trade Capture Confirm V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_confirm_v_2_message = {}

-- Read runtime size of: Trade Capture Confirm V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_confirm_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Capture Confirm V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_confirm_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Confirm V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_confirm_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_capture_confirm_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_time.dissect(buffer, index, packet, parent)

  -- Trade Report Id: Text
  index, trade_report_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: Text
  index, trade_report_ref_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_shares.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_cboeeurope_tradereporting_boe_v2_0_40.contra_broker.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- No Sides: Binary
  index, no_sides = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides.dissect(buffer, index, packet, parent)

  -- Repeating: Trd Cap Ack Side Grp
  for trd_cap_ack_side_grp_index = 1, no_sides do
    index, trd_cap_ack_side_grp = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.dissect(buffer, index, packet, parent, trd_cap_ack_side_grp_index)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cboeeurope_tradereporting_boe_v2_0_40.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cboeeurope_tradereporting_boe_v2_0_40.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Type Return
  local trade_report_type_return = nil

  local trade_report_type_return_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x02) > 0

  if trade_report_type_return_exists then
    index, trade_report_type_return = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_type_return.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Text
  local text = nil

  local text_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x08) > 0

  if text_exists then
    index, text = cboe_cboeeurope_tradereporting_boe_v2_0_40.text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Mkt
  local last_mkt = nil

  local last_mkt_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x80) > 0

  if last_mkt_exists then
    index, last_mkt = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Category
  local order_category = nil

  local order_category_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x08) > 0

  if order_category_exists then
    index, order_category = cboe_cboeeurope_tradereporting_boe_v2_0_40.order_category.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Formation
  local price_formation = nil

  local price_formation_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x40) > 0

  if price_formation_exists then
    index, price_formation = cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Deferral Reason
  local deferral_reason = nil

  local deferral_reason_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x20) > 0

  if deferral_reason_exists then
    index, deferral_reason = cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Publish Ind
  local trade_publish_ind = nil

  local trade_publish_ind_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x10) > 0

  if trade_publish_ind_exists then
    index, trade_publish_ind = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_ind.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Report Time
  local report_time = nil

  local report_time_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x20) > 0

  if report_time_exists then
    index, report_time = cboe_cboeeurope_tradereporting_boe_v2_0_40.report_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Intra Firm Trade Ind
  local intra_firm_trade_ind = nil

  local intra_firm_trade_ind_exists = number_of_return_bitfields >= 19 and bit.band(return_bitfield_19, 0x10) > 0

  if intra_firm_trade_ind_exists then
    index, intra_firm_trade_ind = cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Capture Confirm V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_confirm_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_capture_confirm_v_2_message)
  local size_of_trade_capture_confirm_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_confirm_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_capture_confirm_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_confirm_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_confirm_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_confirm_v_2_message)
    parent:set_len(size_of_trade_capture_confirm_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_confirm_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_confirm_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_confirm_v_2_message)

    return index
  end
end

-- Trade Capture Report Reject V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_reject_v_2_message = {}

-- Read runtime size of: Trade Capture Report Reject V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_reject_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Capture Report Reject V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_reject_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report Reject V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_reject_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_capture_report_reject_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_time.dissect(buffer, index, packet, parent)

  -- Trade Report Id: Text
  index, trade_report_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id.dissect(buffer, index, packet, parent)

  -- Reason: Text
  index, reason = cboe_cboeeurope_tradereporting_boe_v2_0_40.reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cboeeurope_tradereporting_boe_v2_0_40.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- No Sides: Binary
  index, no_sides = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides.dissect(buffer, index, packet, parent)

  -- Repeating: Trd Cap Ack Side Grp
  for trd_cap_ack_side_grp_index = 1, no_sides do
    index, trd_cap_ack_side_grp = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.dissect(buffer, index, packet, parent, trd_cap_ack_side_grp_index)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cboeeurope_tradereporting_boe_v2_0_40.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cboeeurope_tradereporting_boe_v2_0_40.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Type Return
  local trade_report_type_return = nil

  local trade_report_type_return_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x02) > 0

  if trade_report_type_return_exists then
    index, trade_report_type_return = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_type_return.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Mkt
  local last_mkt = nil

  local last_mkt_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x80) > 0

  if last_mkt_exists then
    index, last_mkt = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Formation
  local price_formation = nil

  local price_formation_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x40) > 0

  if price_formation_exists then
    index, price_formation = cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Deferral Reason
  local deferral_reason = nil

  local deferral_reason_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x20) > 0

  if deferral_reason_exists then
    index, deferral_reason = cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Intra Firm Trade Ind
  local intra_firm_trade_ind = nil

  local intra_firm_trade_ind_exists = number_of_return_bitfields >= 19 and bit.band(return_bitfield_19, 0x10) > 0

  if intra_firm_trade_ind_exists then
    index, intra_firm_trade_ind = cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Capture Report Reject V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_reject_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_capture_report_reject_v_2_message)
  local size_of_trade_capture_report_reject_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_reject_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_capture_report_reject_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_reject_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_reject_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_reject_v_2_message)
    parent:set_len(size_of_trade_capture_report_reject_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_reject_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_reject_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_reject_v_2_message)

    return index
  end
end

-- Trade Capture Report Acknowledgment V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_acknowledgment_v_2_message = {}

-- Read runtime size of: Trade Capture Report Acknowledgment V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_acknowledgment_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Capture Report Acknowledgment V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_acknowledgment_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report Acknowledgment V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_acknowledgment_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_capture_report_acknowledgment_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_time.dissect(buffer, index, packet, parent)

  -- Trade Report Id: Text
  index, trade_report_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cboeeurope_tradereporting_boe_v2_0_40.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- No Sides: Binary
  index, no_sides = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides.dissect(buffer, index, packet, parent)

  -- Repeating: Trd Cap Ack Side Grp
  for trd_cap_ack_side_grp_index = 1, no_sides do
    index, trd_cap_ack_side_grp = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_ack_side_grp.dissect(buffer, index, packet, parent, trd_cap_ack_side_grp_index)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cboeeurope_tradereporting_boe_v2_0_40.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cboeeurope_tradereporting_boe_v2_0_40.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Type Return
  local trade_report_type_return = nil

  local trade_report_type_return_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x02) > 0

  if trade_report_type_return_exists then
    index, trade_report_type_return = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_type_return.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Mkt
  local last_mkt = nil

  local last_mkt_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x80) > 0

  if last_mkt_exists then
    index, last_mkt = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Category
  local order_category = nil

  local order_category_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x08) > 0

  if order_category_exists then
    index, order_category = cboe_cboeeurope_tradereporting_boe_v2_0_40.order_category.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Formation
  local price_formation = nil

  local price_formation_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x40) > 0

  if price_formation_exists then
    index, price_formation = cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Deferral Reason
  local deferral_reason = nil

  local deferral_reason_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x20) > 0

  if deferral_reason_exists then
    index, deferral_reason = cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Intra Firm Trade Ind
  local intra_firm_trade_ind = nil

  local intra_firm_trade_ind_exists = number_of_return_bitfields >= 19 and bit.band(return_bitfield_19, 0x10) > 0

  if intra_firm_trade_ind_exists then
    index, intra_firm_trade_ind = cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Capture Report Acknowledgment V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_acknowledgment_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_capture_report_acknowledgment_v_2_message)
  local size_of_trade_capture_report_acknowledgment_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_acknowledgment_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_capture_report_acknowledgment_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_acknowledgment_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_acknowledgment_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_acknowledgment_v_2_message)
    parent:set_len(size_of_trade_capture_report_acknowledgment_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_acknowledgment_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_acknowledgment_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_acknowledgment_v_2_message)

    return index
  end
end

-- Quote Cancel Rpt Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_rpt_grp = {}

-- Size: Quote Cancel Rpt Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_rpt_grp.size =
  cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.size

-- Display: Quote Cancel Rpt Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_rpt_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Rpt Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_rpt_grp.fields = function(buffer, offset, packet, parent, quote_cancel_rpt_grp_index)
  local index = offset

  -- Implicit Quote Cancel Rpt Grp Index
  if quote_cancel_rpt_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_rpt_grp_index, quote_cancel_rpt_grp_index)
    iteration:set_generated()
  end

  -- Symbol: Alphanumeric
  index, symbol = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect(buffer, index, packet, parent)

  -- Id Source: Alphanumeric
  index, id_source = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect(buffer, index, packet, parent)

  -- Security Id: Text
  index, security_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect(buffer, index, packet, parent)

  -- Security Exchange: Alphanumeric
  index, security_exchange = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Rpt Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_rpt_grp.dissect = function(buffer, offset, packet, parent, quote_cancel_rpt_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_rpt_grp, buffer(offset, 0))
    local index = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_rpt_grp.fields(buffer, offset, packet, parent, quote_cancel_rpt_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_rpt_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_rpt_grp.fields(buffer, offset, packet, parent, quote_cancel_rpt_grp_index)
  end
end

-- Quote Cancel V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_bitfield_1 = {}

-- Size: Quote Cancel V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_bitfield_1.size = 1

-- Display: Quote Cancel V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Quote Cancel V 2 Bitfield 1 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Quote Cancel V 2 Bitfield 1 Symbol"
  end
  -- Is Quote Cancel V 2 Bitfield 1 Currency flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Quote Cancel V 2 Bitfield 1 Currency"
  end
  -- Is Quote Cancel V 2 Bitfield 1 Id Source flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Quote Cancel V 2 Bitfield 1 Id Source"
  end
  -- Is Quote Cancel V 2 Bitfield 1 Security Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Quote Cancel V 2 Bitfield 1 Security Id"
  end
  -- Is Quote Cancel V 2 Bitfield 1 Security Exchange flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Quote Cancel V 2 Bitfield 1 Security Exchange"
  end
  -- Is Quote Cancel V 2 Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Quote Cancel V 2 Bitfield 1 Clearing Firm"
  end
  -- Is Quote Cancel V 2 Bitfield 1 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Quote Cancel V 2 Bitfield 1 Reserved 64"
  end
  -- Is Quote Cancel V 2 Bitfield 1 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Quote Cancel V 2 Bitfield 1 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Quote Cancel V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_bitfield_1.bits = function(range, value, packet, parent)

  -- Quote Cancel V 2 Bitfield 1 Symbol: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_symbol, range, value)

  -- Quote Cancel V 2 Bitfield 1 Currency: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_currency, range, value)

  -- Quote Cancel V 2 Bitfield 1 Id Source: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_id_source, range, value)

  -- Quote Cancel V 2 Bitfield 1 Security Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_security_id, range, value)

  -- Quote Cancel V 2 Bitfield 1 Security Exchange: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_security_exchange, range, value)

  -- Quote Cancel V 2 Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_clearing_firm, range, value)

  -- Quote Cancel V 2 Bitfield 1 Reserved 64: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_reserved_64, range, value)

  -- Quote Cancel V 2 Bitfield 1 Reserved 128: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1_reserved_128, range, value)
end

-- Dissect: Quote Cancel V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_bitfield_1, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Quote Cancel V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_message = {}

-- Read runtime size of: Quote Cancel V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Quote Cancel V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_message.fields = function(buffer, offset, packet, parent, size_of_quote_cancel_v_2_message)
  local index = offset

  -- Quote Id: Text
  index, quote_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_id.dissect(buffer, index, packet, parent)

  -- Number Of Quote Cancel V 2 Bitfields: Binary
  index, number_of_quote_cancel_v_2_bitfields = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_cancel_v_2_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Quote Cancel V 2 Bitfield 1
  local quote_cancel_v_2_bitfield_1 = nil

  local quote_cancel_v_2_bitfield_1_exists = number_of_quote_cancel_v_2_bitfields >= 1

  if quote_cancel_v_2_bitfield_1_exists then

    -- Quote Cancel V 2 Bitfield 1: Struct of 8 fields
    index, quote_cancel_v_2_bitfield_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- No Quote Entries: Binary
  index, no_quote_entries = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_quote_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Cancel Rpt Grp
  for quote_cancel_rpt_grp_index = 1, no_quote_entries do
    index, quote_cancel_rpt_grp = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_rpt_grp.dissect(buffer, index, packet, parent, quote_cancel_rpt_grp_index)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_quote_cancel_v_2_bitfields >= 1 and bit.band(quote_cancel_v_2_bitfield_1, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_quote_cancel_v_2_bitfields >= 1 and bit.band(quote_cancel_v_2_bitfield_1, 0x02) > 0

  if currency_exists then
    index, currency = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_quote_cancel_v_2_bitfields >= 1 and bit.band(quote_cancel_v_2_bitfield_1, 0x04) > 0

  if id_source_exists then
    index, id_source = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_quote_cancel_v_2_bitfields >= 1 and bit.band(quote_cancel_v_2_bitfield_1, 0x08) > 0

  if security_id_exists then
    index, security_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_quote_cancel_v_2_bitfields >= 1 and bit.band(quote_cancel_v_2_bitfield_1, 0x10) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_quote_cancel_v_2_bitfields >= 1 and bit.band(quote_cancel_v_2_bitfield_1, 0x20) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Cancel V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_quote_cancel_v_2_message)
  local size_of_quote_cancel_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_message.size(buffer, offset)
  local index = offset + size_of_quote_cancel_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_cancel_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_message.fields(buffer, offset, packet, parent, size_of_quote_cancel_v_2_message)
    parent:set_len(size_of_quote_cancel_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_message.fields(buffer, offset, packet, parent, size_of_quote_cancel_v_2_message)

    return index
  end
end

-- Quote V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_bitfield_1 = {}

-- Size: Quote V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_bitfield_1.size = 1

-- Display: Quote V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Quote V 2 Bitfield 1 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Quote V 2 Bitfield 1 Symbol"
  end
  -- Is Quote V 2 Bitfield 1 Currency flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Quote V 2 Bitfield 1 Currency"
  end
  -- Is Quote V 2 Bitfield 1 Id Source flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Quote V 2 Bitfield 1 Id Source"
  end
  -- Is Quote V 2 Bitfield 1 Security Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Quote V 2 Bitfield 1 Security Id"
  end
  -- Is Quote V 2 Bitfield 1 Security Exchange flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Quote V 2 Bitfield 1 Security Exchange"
  end
  -- Is Quote V 2 Bitfield 1 Bid flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Quote V 2 Bitfield 1 Bid"
  end
  -- Is Quote V 2 Bitfield 1 Offer flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Quote V 2 Bitfield 1 Offer"
  end
  -- Is Quote V 2 Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Quote V 2 Bitfield 1 Clearing Firm"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Quote V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_bitfield_1.bits = function(range, value, packet, parent)

  -- Quote V 2 Bitfield 1 Symbol: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_symbol, range, value)

  -- Quote V 2 Bitfield 1 Currency: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_currency, range, value)

  -- Quote V 2 Bitfield 1 Id Source: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_id_source, range, value)

  -- Quote V 2 Bitfield 1 Security Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_security_id, range, value)

  -- Quote V 2 Bitfield 1 Security Exchange: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_security_exchange, range, value)

  -- Quote V 2 Bitfield 1 Bid: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_bid, range, value)

  -- Quote V 2 Bitfield 1 Offer: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_offer, range, value)

  -- Quote V 2 Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1_clearing_firm, range, value)
end

-- Dissect: Quote V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_bitfield_1, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Quote V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_message = {}

-- Read runtime size of: Quote V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Quote V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_message.fields = function(buffer, offset, packet, parent, size_of_quote_v_2_message)
  local index = offset

  -- Quote Id: Text
  index, quote_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_id.dissect(buffer, index, packet, parent)

  -- Number Of Quote V 2 Bitfields: Binary
  index, number_of_quote_v_2_bitfields = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_quote_v_2_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Quote V 2 Bitfield 1
  local quote_v_2_bitfield_1 = nil

  local quote_v_2_bitfield_1_exists = number_of_quote_v_2_bitfields >= 1

  if quote_v_2_bitfield_1_exists then

    -- Quote V 2 Bitfield 1: Struct of 8 fields
    index, quote_v_2_bitfield_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_quote_v_2_bitfields >= 1 and bit.band(quote_v_2_bitfield_1, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_quote_v_2_bitfields >= 1 and bit.band(quote_v_2_bitfield_1, 0x02) > 0

  if currency_exists then
    index, currency = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_quote_v_2_bitfields >= 1 and bit.band(quote_v_2_bitfield_1, 0x04) > 0

  if id_source_exists then
    index, id_source = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_quote_v_2_bitfields >= 1 and bit.band(quote_v_2_bitfield_1, 0x08) > 0

  if security_id_exists then
    index, security_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_quote_v_2_bitfields >= 1 and bit.band(quote_v_2_bitfield_1, 0x10) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_quote_v_2_bitfields >= 1 and bit.band(quote_v_2_bitfield_1, 0x80) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cboeeurope_tradereporting_boe_v2_0_40.clearing_firm.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_quote_v_2_message)
  local size_of_quote_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_message.size(buffer, offset)
  local index = offset + size_of_quote_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.quote_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_message.fields(buffer, offset, packet, parent, size_of_quote_v_2_message)
    parent:set_len(size_of_quote_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_message.fields(buffer, offset, packet, parent, size_of_quote_v_2_message)

    return index
  end
end

-- Trd Cap Rpt Side Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_rpt_side_grp = {}

-- Size: Trd Cap Rpt Side Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_rpt_side_grp.size =
  cboe_cboeeurope_tradereporting_boe_v2_0_40.side.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.party_id.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.account.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.party_role.size

-- Display: Trd Cap Rpt Side Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_rpt_side_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trd Cap Rpt Side Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_rpt_side_grp.fields = function(buffer, offset, packet, parent, trd_cap_rpt_side_grp_index)
  local index = offset

  -- Implicit Trd Cap Rpt Side Grp Index
  if trd_cap_rpt_side_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trd_cap_rpt_side_grp_index, trd_cap_rpt_side_grp_index)
    iteration:set_generated()
  end

  -- Side: Alphanumeric
  index, side = cboe_cboeeurope_tradereporting_boe_v2_0_40.side.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_cboeeurope_tradereporting_boe_v2_0_40.capacity.dissect(buffer, index, packet, parent)

  -- Party Id: Alpha
  index, party_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.party_id.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_cboeeurope_tradereporting_boe_v2_0_40.account.dissect(buffer, index, packet, parent)

  -- Party Role: Alphanumeric
  index, party_role = cboe_cboeeurope_tradereporting_boe_v2_0_40.party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trd Cap Rpt Side Grp
cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_rpt_side_grp.dissect = function(buffer, offset, packet, parent, trd_cap_rpt_side_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trd_cap_rpt_side_grp, buffer(offset, 0))
    local index = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_rpt_side_grp.fields(buffer, offset, packet, parent, trd_cap_rpt_side_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_rpt_side_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_rpt_side_grp.fields(buffer, offset, packet, parent, trd_cap_rpt_side_grp_index)
  end
end

-- Trade Capture Report V 2 Bitfield 6
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_6 = {}

-- Size: Trade Capture Report V 2 Bitfield 6
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_6.size = 1

-- Display: Trade Capture Report V 2 Bitfield 6
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_6.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Capture Report V 2 Bitfield 6 Cust Order Handling Inst flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 6 Cust Order Handling Inst"
  end
  -- Is Trade Capture Report V 2 Bitfield 6 Open Close flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 6 Open Close"
  end
  -- Is Trade Capture Report V 2 Bitfield 6 Account Type flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 6 Account Type"
  end
  -- Is Trade Capture Report V 2 Bitfield 6 Multi Juris Reporting Ind flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 6 Multi Juris Reporting Ind"
  end
  -- Is Trade Capture Report V 2 Bitfield 6 Intra Firm Trade Ind flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 6 Intra Firm Trade Ind"
  end
  -- Is Trade Capture Report V 2 Bitfield 6 Tertiary Trd Type flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 6 Tertiary Trd Type"
  end
  -- Is Trade Capture Report V 2 Bitfield 6 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 6 Reserved 64"
  end
  -- Is Trade Capture Report V 2 Bitfield 6 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 6 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Capture Report V 2 Bitfield 6
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_6.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 6 Cust Order Handling Inst: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_cust_order_handling_inst, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Open Close: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_open_close, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Account Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_account_type, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Multi Juris Reporting Ind: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_multi_juris_reporting_ind, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Intra Firm Trade Ind: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_intra_firm_trade_ind, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Tertiary Trd Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_tertiary_trd_type, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Reserved 64: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_reserved_64, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Reserved 128: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6_reserved_128, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 6
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_6, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Bitfield 5
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_5 = {}

-- Size: Trade Capture Report V 2 Bitfield 5
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_5.size = 1

-- Display: Trade Capture Report V 2 Bitfield 5
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_5.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Capture Report V 2 Bitfield 5 Settlement Date flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 5 Settlement Date"
  end
  -- Is Trade Capture Report V 2 Bitfield 5 Price Formation flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 5 Price Formation"
  end
  -- Is Trade Capture Report V 2 Bitfield 5 Algorithmic Indicator flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 5 Algorithmic Indicator"
  end
  -- Is Trade Capture Report V 2 Bitfield 5 Waiver Type flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 5 Waiver Type"
  end
  -- Is Trade Capture Report V 2 Bitfield 5 Deferral Reason flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 5 Deferral Reason"
  end
  -- Is Trade Capture Report V 2 Bitfield 5 Settlement Currency flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 5 Settlement Currency"
  end
  -- Is Trade Capture Report V 2 Bitfield 5 Settlement Location flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 5 Settlement Location"
  end
  -- Is Trade Capture Report V 2 Bitfield 5 Third Party flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 5 Third Party"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Capture Report V 2 Bitfield 5
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_5.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 5 Settlement Date: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_settlement_date, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Price Formation: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_price_formation, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Algorithmic Indicator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_algorithmic_indicator, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Waiver Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_waiver_type, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Deferral Reason: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_deferral_reason, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Settlement Currency: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_settlement_currency, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Settlement Location: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_settlement_location, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Third Party: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5_third_party, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 5
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_5, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Bitfield 4
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_4 = {}

-- Size: Trade Capture Report V 2 Bitfield 4
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_4.size = 1

-- Display: Trade Capture Report V 2 Bitfield 4
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_4.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Capture Report V 2 Bitfield 4 Trade Report Type flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 4 Trade Report Type"
  end
  -- Is Trade Capture Report V 2 Bitfield 4 Trade Handling Instruction flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 4 Trade Handling Instruction"
  end
  -- Is Trade Capture Report V 2 Bitfield 4 Trade Link Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 4 Trade Link Id"
  end
  -- Is Trade Capture Report V 2 Bitfield 4 Trade Report Ref Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 4 Trade Report Ref Id"
  end
  -- Is Trade Capture Report V 2 Bitfield 4 Gross Trade Amt flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 4 Gross Trade Amt"
  end
  -- Is Trade Capture Report V 2 Bitfield 4 Tolerance flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 4 Tolerance"
  end
  -- Is Trade Capture Report V 2 Bitfield 4 Order Category flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 4 Order Category"
  end
  -- Is Trade Capture Report V 2 Bitfield 4 Settlement Price flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 4 Settlement Price"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Capture Report V 2 Bitfield 4
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_4.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 4 Trade Report Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_trade_report_type, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Trade Handling Instruction: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_trade_handling_instruction, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Trade Link Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_trade_link_id, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Trade Report Ref Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_trade_report_ref_id, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Gross Trade Amt: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_gross_trade_amt, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Tolerance: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_tolerance, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Order Category: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_order_category, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Settlement Price: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4_settlement_price, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 4
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_4, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Bitfield 3
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_3 = {}

-- Size: Trade Capture Report V 2 Bitfield 3
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_3.size = 1

-- Display: Trade Capture Report V 2 Bitfield 3
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_3.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Capture Report V 2 Bitfield 3 Trading Session Sub Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 3 Trading Session Sub Id"
  end
  -- Is Trade Capture Report V 2 Bitfield 3 Match Type flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 3 Match Type"
  end
  -- Is Trade Capture Report V 2 Bitfield 3 Trd Sub Type flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 3 Trd Sub Type"
  end
  -- Is Trade Capture Report V 2 Bitfield 3 Secondary Trd Type flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 3 Secondary Trd Type"
  end
  -- Is Trade Capture Report V 2 Bitfield 3 Trade Price Condition flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 3 Trade Price Condition"
  end
  -- Is Trade Capture Report V 2 Bitfield 3 Trade Publish Indicator flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 3 Trade Publish Indicator"
  end
  -- Is Trade Capture Report V 2 Bitfield 3 Large Size flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 3 Large Size"
  end
  -- Is Trade Capture Report V 2 Bitfield 3 Execution Method flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 3 Execution Method"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Capture Report V 2 Bitfield 3
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_3.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 3 Trading Session Sub Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_trading_session_sub_id, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Match Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_match_type, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Trd Sub Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_trd_sub_type, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Secondary Trd Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_secondary_trd_type, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Trade Price Condition: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_trade_price_condition, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Trade Publish Indicator: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_trade_publish_indicator, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Large Size: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_large_size, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Execution Method: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3_execution_method, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 3
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_3, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Bitfield 2
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_2 = {}

-- Size: Trade Capture Report V 2 Bitfield 2
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_2.size = 1

-- Display: Trade Capture Report V 2 Bitfield 2
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Capture Report V 2 Bitfield 2 Capacity flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 2 Capacity"
  end
  -- Is Trade Capture Report V 2 Bitfield 2 Account flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 2 Account"
  end
  -- Is Trade Capture Report V 2 Bitfield 2 Transaction Category flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 2 Transaction Category"
  end
  -- Is Trade Capture Report V 2 Bitfield 2 Trade Time flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 2 Trade Time"
  end
  -- Is Trade Capture Report V 2 Bitfield 2 Party Role flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 2 Party Role"
  end
  -- Is Trade Capture Report V 2 Bitfield 2 Trade Report Trans Type flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 2 Trade Report Trans Type"
  end
  -- Is Trade Capture Report V 2 Bitfield 2 Trade Id flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 2 Trade Id"
  end
  -- Is Trade Capture Report V 2 Bitfield 2 Venue Type flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 2 Venue Type"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Capture Report V 2 Bitfield 2
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_2.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 2 Capacity: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_capacity, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Account: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_account, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Transaction Category: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_transaction_category, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Trade Time: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_trade_time, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Party Role: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_party_role, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Trade Report Trans Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_trade_report_trans_type, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Trade Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_trade_id, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Venue Type: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2_venue_type, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 2
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_2, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_1 = {}

-- Size: Trade Capture Report V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_1.size = 1

-- Display: Trade Capture Report V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Capture Report V 2 Bitfield 1 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 1 Symbol"
  end
  -- Is Trade Capture Report V 2 Bitfield 1 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 1 Reserved 2"
  end
  -- Is Trade Capture Report V 2 Bitfield 1 Currency flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 1 Currency"
  end
  -- Is Trade Capture Report V 2 Bitfield 1 Id Source flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 1 Id Source"
  end
  -- Is Trade Capture Report V 2 Bitfield 1 Security Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 1 Security Id"
  end
  -- Is Trade Capture Report V 2 Bitfield 1 Security Exchange flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 1 Security Exchange"
  end
  -- Is Trade Capture Report V 2 Bitfield 1 Last Mkt flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 1 Last Mkt"
  end
  -- Is Trade Capture Report V 2 Bitfield 1 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Trade Capture Report V 2 Bitfield 1 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Capture Report V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_1.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 1 Symbol: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_symbol, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_reserved_2, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Currency: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_currency, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Id Source: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_id_source, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Security Id: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_security_id, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Security Exchange: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_security_exchange, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Last Mkt: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_last_mkt, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Reserved 128: 1 Bit
  parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1_reserved_128, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 1
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_bitfield_1, range, display)

  if show.structs then
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_message = {}

-- Read runtime size of: Trade Capture Report V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Capture Report V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_capture_report_v_2_message)
  local index = offset

  -- Trade Report Id: Text
  index, trade_report_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_shares.dissect(buffer, index, packet, parent)

  -- Number Of Trade Capture Report V 2 Bitfields: Binary
  index, number_of_trade_capture_report_v_2_bitfields = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_trade_capture_report_v_2_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 1
  local trade_capture_report_v_2_bitfield_1 = nil

  local trade_capture_report_v_2_bitfield_1_exists = number_of_trade_capture_report_v_2_bitfields >= 1

  if trade_capture_report_v_2_bitfield_1_exists then

    -- Trade Capture Report V 2 Bitfield 1: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_1 = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 2
  local trade_capture_report_v_2_bitfield_2 = nil

  local trade_capture_report_v_2_bitfield_2_exists = number_of_trade_capture_report_v_2_bitfields >= 2

  if trade_capture_report_v_2_bitfield_2_exists then

    -- Trade Capture Report V 2 Bitfield 2: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_2 = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 3
  local trade_capture_report_v_2_bitfield_3 = nil

  local trade_capture_report_v_2_bitfield_3_exists = number_of_trade_capture_report_v_2_bitfields >= 3

  if trade_capture_report_v_2_bitfield_3_exists then

    -- Trade Capture Report V 2 Bitfield 3: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_3 = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 4
  local trade_capture_report_v_2_bitfield_4 = nil

  local trade_capture_report_v_2_bitfield_4_exists = number_of_trade_capture_report_v_2_bitfields >= 4

  if trade_capture_report_v_2_bitfield_4_exists then

    -- Trade Capture Report V 2 Bitfield 4: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_4 = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 5
  local trade_capture_report_v_2_bitfield_5 = nil

  local trade_capture_report_v_2_bitfield_5_exists = number_of_trade_capture_report_v_2_bitfields >= 5

  if trade_capture_report_v_2_bitfield_5_exists then

    -- Trade Capture Report V 2 Bitfield 5: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_5 = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 6
  local trade_capture_report_v_2_bitfield_6 = nil

  local trade_capture_report_v_2_bitfield_6_exists = number_of_trade_capture_report_v_2_bitfields >= 6

  if trade_capture_report_v_2_bitfield_6_exists then

    -- Trade Capture Report V 2 Bitfield 6: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_6 = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- No Sides: Binary
  index, no_sides = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_sides.dissect(buffer, index, packet, parent)

  -- Repeating: Trd Cap Rpt Side Grp
  for trd_cap_rpt_side_grp_index = 1, no_sides do
    index, trd_cap_rpt_side_grp = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_cap_rpt_side_grp.dissect(buffer, index, packet, parent, trd_cap_rpt_side_grp_index)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cboeeurope_tradereporting_boe_v2_0_40.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cboeeurope_tradereporting_boe_v2_0_40.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cboeeurope_tradereporting_boe_v2_0_40.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cboeeurope_tradereporting_boe_v2_0_40.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Mkt
  local last_mkt = nil

  local last_mkt_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x40) > 0

  if last_mkt_exists then
    index, last_mkt = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_mkt.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x02) > 0

  if account_exists then
    index, account = cboe_cboeeurope_tradereporting_boe_v2_0_40.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Transaction Category
  local transaction_category = nil

  local transaction_category_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x04) > 0

  if transaction_category_exists then
    index, transaction_category = cboe_cboeeurope_tradereporting_boe_v2_0_40.transaction_category.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Time
  local trade_time = nil

  local trade_time_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x08) > 0

  if trade_time_exists then
    index, trade_time = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Trans Type
  local trade_report_trans_type = nil

  local trade_report_trans_type_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x20) > 0

  if trade_report_trans_type_exists then
    index, trade_report_trans_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_report_trans_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Id
  local trade_id = nil

  local trade_id_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x40) > 0

  if trade_id_exists then
    index, trade_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Venue Type
  local venue_type = nil

  local venue_type_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x80) > 0

  if venue_type_exists then
    index, venue_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.venue_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trading Session Sub Id
  local trading_session_sub_id = nil

  local trading_session_sub_id_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x01) > 0

  if trading_session_sub_id_exists then
    index, trading_session_sub_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.trading_session_sub_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Match Type
  local match_type = nil

  local match_type_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x02) > 0

  if match_type_exists then
    index, match_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.match_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trd Sub Type
  local trd_sub_type = nil

  local trd_sub_type_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x04) > 0

  if trd_sub_type_exists then
    index, trd_sub_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.trd_sub_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Trd Type
  local secondary_trd_type = nil

  local secondary_trd_type_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x08) > 0

  if secondary_trd_type_exists then
    index, secondary_trd_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.secondary_trd_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Price Condition
  local trade_price_condition = nil

  local trade_price_condition_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x10) > 0

  if trade_price_condition_exists then
    index, trade_price_condition = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_price_condition.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Publish Indicator
  local trade_publish_indicator = nil

  local trade_publish_indicator_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x20) > 0

  if trade_publish_indicator_exists then
    index, trade_publish_indicator = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_publish_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Large Size
  local large_size = nil

  local large_size_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x40) > 0

  if large_size_exists then
    index, large_size = cboe_cboeeurope_tradereporting_boe_v2_0_40.large_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Execution Method
  local execution_method = nil

  local execution_method_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x80) > 0

  if execution_method_exists then
    index, execution_method = cboe_cboeeurope_tradereporting_boe_v2_0_40.execution_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Gross Trade Amt
  local gross_trade_amt = nil

  local gross_trade_amt_exists = number_of_trade_capture_report_v_2_bitfields >= 4 and bit.band(trade_capture_report_v_2_bitfield_4, 0x10) > 0

  if gross_trade_amt_exists then
    index, gross_trade_amt = cboe_cboeeurope_tradereporting_boe_v2_0_40.gross_trade_amt.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Category
  local order_category = nil

  local order_category_exists = number_of_trade_capture_report_v_2_bitfields >= 4 and bit.band(trade_capture_report_v_2_bitfield_4, 0x40) > 0

  if order_category_exists then
    index, order_category = cboe_cboeeurope_tradereporting_boe_v2_0_40.order_category.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Formation
  local price_formation = nil

  local price_formation_exists = number_of_trade_capture_report_v_2_bitfields >= 5 and bit.band(trade_capture_report_v_2_bitfield_5, 0x02) > 0

  if price_formation_exists then
    index, price_formation = cboe_cboeeurope_tradereporting_boe_v2_0_40.price_formation.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_trade_capture_report_v_2_bitfields >= 5 and bit.band(trade_capture_report_v_2_bitfield_5, 0x04) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cboeeurope_tradereporting_boe_v2_0_40.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_trade_capture_report_v_2_bitfields >= 5 and bit.band(trade_capture_report_v_2_bitfield_5, 0x08) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Deferral Reason
  local deferral_reason = nil

  local deferral_reason_exists = number_of_trade_capture_report_v_2_bitfields >= 5 and bit.band(trade_capture_report_v_2_bitfield_5, 0x10) > 0

  if deferral_reason_exists then
    index, deferral_reason = cboe_cboeeurope_tradereporting_boe_v2_0_40.deferral_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Intra Firm Trade Ind
  local intra_firm_trade_ind = nil

  local intra_firm_trade_ind_exists = number_of_trade_capture_report_v_2_bitfields >= 6 and bit.band(trade_capture_report_v_2_bitfield_6, 0x10) > 0

  if intra_firm_trade_ind_exists then
    index, intra_firm_trade_ind = cboe_cboeeurope_tradereporting_boe_v2_0_40.intra_firm_trade_ind.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Tertiary Trd Type
  local tertiary_trd_type = nil

  local tertiary_trd_type_exists = number_of_trade_capture_report_v_2_bitfields >= 6 and bit.band(trade_capture_report_v_2_bitfield_6, 0x20) > 0

  if tertiary_trd_type_exists then
    index, tertiary_trd_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.tertiary_trd_type.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Capture Report V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_capture_report_v_2_message)
  local size_of_trade_capture_report_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_capture_report_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.trade_capture_report_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_v_2_message)
    parent:set_len(size_of_trade_capture_report_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_v_2_message)

    return index
  end
end

-- Units
cboe_cboeeurope_tradereporting_boe_v2_0_40.units = {}

-- Size: Units
cboe_cboeeurope_tradereporting_boe_v2_0_40.units.size =
  cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_number.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_sequence.size

-- Display: Units
cboe_cboeeurope_tradereporting_boe_v2_0_40.units.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Units
cboe_cboeeurope_tradereporting_boe_v2_0_40.units.fields = function(buffer, offset, packet, parent, units_index)
  local index = offset

  -- Implicit Units Index
  if units_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.units_index, units_index)
    iteration:set_generated()
  end

  -- Unit Number: Binary
  index, unit_number = cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_number.dissect(buffer, index, packet, parent)

  -- Unit Sequence: Binary
  index, unit_sequence = cboe_cboeeurope_tradereporting_boe_v2_0_40.unit_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Units
cboe_cboeeurope_tradereporting_boe_v2_0_40.units.dissect = function(buffer, offset, packet, parent, units_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.units, buffer(offset, 0))
    local index = cboe_cboeeurope_tradereporting_boe_v2_0_40.units.fields(buffer, offset, packet, parent, units_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.units.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.units.fields(buffer, offset, packet, parent, units_index)
  end
end

-- Logout Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_message = {}

-- Read runtime size of: Logout Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Logout Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_message.fields = function(buffer, offset, packet, parent, size_of_logout_message)
  local index = offset

  -- Logout Reason: Alphanumeric
  index, logout_reason = cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: Text
  index, logout_reason_text = cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_reason_text.dissect(buffer, index, packet, parent)

  -- Last Received Sequence Number: Binary
  index, last_received_sequence_number = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_received_sequence_number.dissect(buffer, index, packet, parent)

  -- Number Of Units: Binary
  index, number_of_units = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Units
  for units_index = 1, number_of_units do
    index, units = cboe_cboeeurope_tradereporting_boe_v2_0_40.units.dissect(buffer, index, packet, parent, units_index)
  end

  return index
end

-- Dissect: Logout Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_message.dissect = function(buffer, offset, packet, parent, size_of_logout_message)
  local size_of_logout_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_message.size(buffer, offset)
  local index = offset + size_of_logout_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.logout_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_message.fields(buffer, offset, packet, parent, size_of_logout_message)
    parent:set_len(size_of_logout_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_message.fields(buffer, offset, packet, parent, size_of_logout_message)

    return index
  end
end

-- Param Group
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group = {}

-- Size: Param Group
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group.size =
  cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_length.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_type.size

-- Display: Param Group
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Param Group
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group.fields = function(buffer, offset, packet, parent, param_group_index)
  local index = offset

  -- Implicit Param Group Index
  if param_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.param_group_index, param_group_index)
    iteration:set_generated()
  end

  -- Param Group Length: Binary
  index, param_group_length = cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_length.dissect(buffer, index, packet, parent)

  -- Param Group Type: Binary
  index, param_group_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Param Group
cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group.dissect = function(buffer, offset, packet, parent, param_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.param_group, buffer(offset, 0))
    local index = cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group.fields(buffer, offset, packet, parent, param_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group.fields(buffer, offset, packet, parent, param_group_index)
  end
end

-- Login Response V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_v_2_message = {}

-- Read runtime size of: Login Response V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Login Response V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_v_2_message.fields = function(buffer, offset, packet, parent, size_of_login_response_v_2_message)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: Text
  index, login_response_text = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_text.dissect(buffer, index, packet, parent)

  -- No Unspecified Unit Replay: Binary
  index, no_unspecified_unit_replay = cboe_cboeeurope_tradereporting_boe_v2_0_40.no_unspecified_unit_replay.dissect(buffer, index, packet, parent)

  -- Last Received Sequence Number: Binary
  index, last_received_sequence_number = cboe_cboeeurope_tradereporting_boe_v2_0_40.last_received_sequence_number.dissect(buffer, index, packet, parent)

  -- Number Of Units: Binary
  index, number_of_units = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Units
  for units_index = 1, number_of_units do
    index, units = cboe_cboeeurope_tradereporting_boe_v2_0_40.units.dissect(buffer, index, packet, parent, units_index)
  end

  -- Number Of Param Groups: Binary
  index, number_of_param_groups = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_param_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Param Group
  for param_group_index = 1, number_of_param_groups do
    index, param_group = cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group.dissect(buffer, index, packet, parent, param_group_index)
  end

  return index
end

-- Dissect: Login Response V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_login_response_v_2_message)
  local size_of_login_response_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_v_2_message.size(buffer, offset)
  local index = offset + size_of_login_response_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.login_response_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_v_2_message.fields(buffer, offset, packet, parent, size_of_login_response_v_2_message)
    parent:set_len(size_of_login_response_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_v_2_message.fields(buffer, offset, packet, parent, size_of_login_response_v_2_message)

    return index
  end
end

-- Login Request V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_request_v_2_message = {}

-- Read runtime size of: Login Request V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_request_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Login Request V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_request_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_request_v_2_message.fields = function(buffer, offset, packet, parent, size_of_login_request_v_2_message)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_cboeeurope_tradereporting_boe_v2_0_40.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_cboeeurope_tradereporting_boe_v2_0_40.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_cboeeurope_tradereporting_boe_v2_0_40.password.dissect(buffer, index, packet, parent)

  -- Number Of Param Groups: Binary
  index, number_of_param_groups = cboe_cboeeurope_tradereporting_boe_v2_0_40.number_of_param_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Param Group
  for param_group_index = 1, number_of_param_groups do
    index, param_group = cboe_cboeeurope_tradereporting_boe_v2_0_40.param_group.dissect(buffer, index, packet, parent, param_group_index)
  end

  return index
end

-- Dissect: Login Request V 2 Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.login_request_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_login_request_v_2_message)
  local size_of_login_request_v_2_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_request_v_2_message.size(buffer, offset)
  local index = offset + size_of_login_request_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.login_request_v_2_message, buffer(offset, 0))
    local current = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_request_v_2_message.fields(buffer, offset, packet, parent, size_of_login_request_v_2_message)
    parent:set_len(size_of_login_request_v_2_message)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.login_request_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_tradereporting_boe_v2_0_40.login_request_v_2_message.fields(buffer, offset, packet, parent, size_of_login_request_v_2_message)

    return index
  end
end

-- Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.message = {}

-- Dissect: Message
cboe_cboeeurope_tradereporting_boe_v2_0_40.message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request V 2 Message
  if message_type == 0x37 then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.login_request_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if message_type == 0x02 then
    return offset
  end
  -- Dissect Client Heartbeat Message
  if message_type == 0x03 then
    return offset
  end
  -- Dissect Login Response V 2 Message
  if message_type == 0x24 then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.login_response_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == 0x08 then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Message
  if message_type == 0x09 then
    return offset
  end
  -- Dissect Replay Complete Message
  if message_type == 0x13 then
    return offset
  end
  -- Dissect Trade Capture Report V 2 Message
  if message_type == 0x3C then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote V 2 Message
  if message_type == 0x3D then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancel V 2 Message
  if message_type == 0x3E then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_cancel_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Report Acknowledgment V 2 Message
  if message_type == 0x30 then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_acknowledgment_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Report Reject V 2 Message
  if message_type == 0x31 then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_reject_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Confirm V 2 Message
  if message_type == 0x32 then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_confirm_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Report Decline V 2 Message
  if message_type == 0x33 then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.trade_capture_report_decline_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Status V 2 Message
  if message_type == 0x3F then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_status_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Reject V 2 Message
  if message_type == 0x40 then
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.quote_reject_v_2_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_header = {}

-- Size: Message Header
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_header.size =
  cboe_cboeeurope_tradereporting_boe_v2_0_40.start_of_message.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.message_length.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.message_type.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.matching_unit.size + 
  cboe_cboeeurope_tradereporting_boe_v2_0_40.sequence_number.size

-- Display: Message Header
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_cboeeurope_tradereporting_boe_v2_0_40.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cboeeurope_tradereporting_boe_v2_0_40.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: Binary
  index, message_type = cboe_cboeeurope_tradereporting_boe_v2_0_40.message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_cboeeurope_tradereporting_boe_v2_0_40.matching_unit.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_cboeeurope_tradereporting_boe_v2_0_40.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cboeeurope_tradereporting_boe_v2_0_40.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.fields.message_header, buffer(offset, 0))
    local index = cboe_cboeeurope_tradereporting_boe_v2_0_40.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_tradereporting_boe_v2_0_40.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_tradereporting_boe_v2_0_40.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cboeeurope_tradereporting_boe_v2_0_40.packet = {}

-- Verify required size of Tcp packet
cboe_cboeeurope_tradereporting_boe_v2_0_40.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cboeeurope_tradereporting_boe_v2_0_40.message_header.size
end

-- Dissect Packet
cboe_cboeeurope_tradereporting_boe_v2_0_40.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 5 fields
  index, message_header = cboe_cboeeurope_tradereporting_boe_v2_0_40.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 6, 1):le_uint()

  -- Message: Runtime Type with 16 branches
  index = cboe_cboeeurope_tradereporting_boe_v2_0_40.message.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.init()
end

-- Dissector for Cboe CboeEurope TradeReporting Boe 2.0.40
function omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40, buffer(), omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.description, "("..buffer:len().." Bytes)")
  return cboe_cboeeurope_tradereporting_boe_v2_0_40.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CboeEurope TradeReporting Boe 2.0.40 (Tcp)
local function omi_cboe_cboeeurope_tradereporting_boe_v2_0_40_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cboeeurope_tradereporting_boe_v2_0_40.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cboeeurope_tradereporting_boe_v2_0_40
  omi_cboe_cboeeurope_tradereporting_boe_v2_0_40.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CboeEurope TradeReporting Boe 2.0.40
omi_cboe_cboeeurope_tradereporting_boe_v2_0_40:register_heuristic("tcp", omi_cboe_cboeeurope_tradereporting_boe_v2_0_40_tcp_heuristic)

-- Register Cboe CboeEurope TradeReporting Boe 2.0.40 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_cboeeurope_tradereporting_boe_v2_0_40)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.0.40
--   Date: Wednesday, May 27, 2026
--   Specification: Cboe Europe TRF BOE2 Specification.pdf
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
