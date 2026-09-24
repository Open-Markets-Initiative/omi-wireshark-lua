-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CxeEquities BinaryOrderEntry Boe 2.0.83 Protocol
local omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83 = Proto("Omi.Cboe.CxeEquities.BinaryOrderEntry.Boe.v2.0.83", "Cboe CxeEquities BinaryOrderEntry Boe 2.0.83")

-- Protocol table
local cboe_cxeequities_binaryorderentry_boe_v2_0_83 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CxeEquities BinaryOrderEntry Boe 2.0.83 Fields
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.account = ProtoField.new("Account", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.account", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.algorithmicindicator", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.baseliquidityindicator", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1 = ProtoField.new("Cancel Order V 2 Bitfield 1", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield1", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_clearing_firm = ProtoField.new("Cancel Order V 2 Bitfield 1 Clearing Firm", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_manual_order_indicator = ProtoField.new("Cancel Order V 2 Bitfield 1 Manual Order Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield1manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_mass_cancel = ProtoField.new("Cancel Order V 2 Bitfield 1 Mass Cancel", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield1masscancel", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_mass_cancel_id = ProtoField.new("Cancel Order V 2 Bitfield 1 Mass Cancel Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield1masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_mass_cancel_lockout = ProtoField.new("Cancel Order V 2 Bitfield 1 Mass Cancel Lockout", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield1masscancellockout", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_operator_id = ProtoField.new("Cancel Order V 2 Bitfield 1 Operator Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield1operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_routing_firm_id = ProtoField.new("Cancel Order V 2 Bitfield 1 Routing Firm Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield1routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_underlying = ProtoField.new("Cancel Order V 2 Bitfield 1 Underlying", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield1underlying", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2 = ProtoField.new("Cancel Order V 2 Bitfield 2", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield2", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_mass_cancel_inst = ProtoField.new("Cancel Order V 2 Bitfield 2 Mass Cancel Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield2masscancelinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_128 = ProtoField.new("Cancel Order V 2 Bitfield 2 Reserved 128", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_16 = ProtoField.new("Cancel Order V 2 Bitfield 2 Reserved 16", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_2 = ProtoField.new("Cancel Order V 2 Bitfield 2 Reserved 2", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield2reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_32 = ProtoField.new("Cancel Order V 2 Bitfield 2 Reserved 32", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_4 = ProtoField.new("Cancel Order V 2 Bitfield 2 Reserved 4", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_64 = ProtoField.new("Cancel Order V 2 Bitfield 2 Reserved 64", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield2reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_8 = ProtoField.new("Cancel Order V 2 Bitfield 2 Reserved 8", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2bitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorigonreject", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelreason", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelrejectreason", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelledordercount", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.capacity = ProtoField.new("Capacity", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.capacity", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.clordid", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.clearingaccount", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.clearingfirm", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.client_id = ProtoField.new("Client Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.clientid", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.client_qualified_role = ProtoField.new("Client Qualified Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.clientqualifiedrole", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.contra_broker = ProtoField.new("Contra Broker", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.contrabroker", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.correctedprice", ftypes.DOUBLE)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.corrected_size = ProtoField.new("Corrected Size", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.correctedsize", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.currency = ProtoField.new("Currency", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.currency", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.custom_group_id = ProtoField.new("Custom Group Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.customgroupid", ftypes.UINT16)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.custom_group_id_cnt = ProtoField.new("Custom Group Id Cnt", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.customgroupidcnt", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.custom_group_ids = ProtoField.new("Custom Group Ids", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.customgroupids", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.deferral_reason = ProtoField.new("Deferral Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.deferralreason", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.display_indicator = ProtoField.new("Display Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.displayindicator", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.display_price = ProtoField.new("Display Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.displayprice", ftypes.DOUBLE)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.exec_id = ProtoField.new("Exec Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.execid", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.exec_inst = ProtoField.new("Exec Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.execinst", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.execrefid", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.execution_method = ProtoField.new("Execution Method", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.executionmethod", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.executor_id = ProtoField.new("Executor Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.executorid", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.executor_qualified_role = ProtoField.new("Executor Qualified Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.executorqualifiedrole", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.expire_time = ProtoField.new("Expire Time", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.expiretime", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.ext_exec_inst = ProtoField.new("Ext Exec Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.extexecinst", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.fee_code = ProtoField.new("Fee Code", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.feecode", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.grosstradeamt", ftypes.DOUBLE)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.id_source = ProtoField.new("Id Source", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.idsource", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.intra_firm_trade_ind = ProtoField.new("Intra Firm Trade Ind", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.intrafirmtradeind", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.investor_id = ProtoField.new("Investor Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.investorid", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.investor_qualified_role = ProtoField.new("Investor Qualified Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.investorqualifiedrole", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.large_size = ProtoField.new("Large Size", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.largesize", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.last_mkt = ProtoField.new("Last Mkt", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.lastmkt", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.last_px = ProtoField.new("Last Px", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.lastpx", ftypes.DOUBLE)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.last_received_sequence_number = ProtoField.new("Last Received Sequence Number", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.lastreceivedsequencenumber", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.last_shares = ProtoField.new("Last Shares", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.lastshares", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.leavesqty", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.liquidity_provision = ProtoField.new("Liquidity Provision", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.liquidityprovision", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.loginresponsestatus", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.loginresponsetext", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.logoutreason", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.logoutreasontext", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.masscancelid", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.masscancelinst", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.match_type = ProtoField.new("Match Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.matchtype", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.matchingunit", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.max_floor = ProtoField.new("Max Floor", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.maxfloor", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.message_length = ProtoField.new("Message Length", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.messagelength", ftypes.UINT16)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.message_type = ProtoField.new("Message Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.messagetype", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.min_qty = ProtoField.new("Min Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.minqty", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1 = ProtoField.new("Modify Order V 2 Bitfield 1", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield1", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_cancel_orig_on_reject = ProtoField.new("Modify Order V 2 Bitfield 1 Cancel Orig On Reject", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield1cancelorigonreject", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_clearing_firm = ProtoField.new("Modify Order V 2 Bitfield 1 Clearing Firm", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_exec_inst = ProtoField.new("Modify Order V 2 Bitfield 1 Exec Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield1execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_expire_time = ProtoField.new("Modify Order V 2 Bitfield 1 Expire Time", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield1expiretime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_ord_type = ProtoField.new("Modify Order V 2 Bitfield 1 Ord Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_order_qty = ProtoField.new("Modify Order V 2 Bitfield 1 Order Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield1orderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_price = ProtoField.new("Modify Order V 2 Bitfield 1 Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_side = ProtoField.new("Modify Order V 2 Bitfield 1 Side", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield1side", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2 = ProtoField.new("Modify Order V 2 Bitfield 2", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield2", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_cust_order_handling_inst = ProtoField.new("Modify Order V 2 Bitfield 2 Cust Order Handling Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield2custorderhandlinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_frequent_trader_id = ProtoField.new("Modify Order V 2 Bitfield 2 Frequent Trader Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield2frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_manual_order_indicator = ProtoField.new("Modify Order V 2 Bitfield 2 Manual Order Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield2manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_max_floor = ProtoField.new("Modify Order V 2 Bitfield 2 Max Floor", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield2maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_operator_id = ProtoField.new("Modify Order V 2 Bitfield 2 Operator Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield2operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_reserved_128 = ProtoField.new("Modify Order V 2 Bitfield 2 Reserved 128", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_routing_firm_id = ProtoField.new("Modify Order V 2 Bitfield 2 Routing Firm Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield2routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_stop_px = ProtoField.new("Modify Order V 2 Bitfield 2 Stop Px", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2bitfield2stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyrejectreason", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1 = ProtoField.new("New Order V 2 Bitfield 1", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield1", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_clearing_account = ProtoField.new("New Order V 2 Bitfield 1 Clearing Account", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield1clearingaccount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_clearing_firm = ProtoField.new("New Order V 2 Bitfield 1 Clearing Firm", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_exec_inst = ProtoField.new("New Order V 2 Bitfield 1 Exec Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield1execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_max_floor = ProtoField.new("New Order V 2 Bitfield 1 Max Floor", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield1maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_min_qty = ProtoField.new("New Order V 2 Bitfield 1 Min Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield1minqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_ord_type = ProtoField.new("New Order V 2 Bitfield 1 Ord Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_price = ProtoField.new("New Order V 2 Bitfield 1 Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_time_in_force = ProtoField.new("New Order V 2 Bitfield 1 Time In Force", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield1timeinforce", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2 = ProtoField.new("New Order V 2 Bitfield 2", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield2", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_capacity = ProtoField.new("New Order V 2 Bitfield 2 Capacity", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield2capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_currency = ProtoField.new("New Order V 2 Bitfield 2 Currency", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield2currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_id_source = ProtoField.new("New Order V 2 Bitfield 2 Id Source", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield2idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_routing_inst = ProtoField.new("New Order V 2 Bitfield 2 Routing Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield2routinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_security_exchange = ProtoField.new("New Order V 2 Bitfield 2 Security Exchange", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield2securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_security_id = ProtoField.new("New Order V 2 Bitfield 2 Security Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield2securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_symbol = ProtoField.new("New Order V 2 Bitfield 2 Symbol", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_symbol_sfx = ProtoField.new("New Order V 2 Bitfield 2 Symbol Sfx", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield2symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3 = ProtoField.new("New Order V 2 Bitfield 3", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield3", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_account = ProtoField.new("New Order V 2 Bitfield 3 Account", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield3account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_discretion_amount = ProtoField.new("New Order V 2 Bitfield 3 Discretion Amount", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield3discretionamount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_display_indicator = ProtoField.new("New Order V 2 Bitfield 3 Display Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield3displayindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_expire_time = ProtoField.new("New Order V 2 Bitfield 3 Expire Time", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield3expiretime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_locate_required = ProtoField.new("New Order V 2 Bitfield 3 Locate Required", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield3locaterequired", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_max_remove_pct = ProtoField.new("New Order V 2 Bitfield 3 Max Remove Pct", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield3maxremovepct", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_peg_difference = ProtoField.new("New Order V 2 Bitfield 3 Peg Difference", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield3pegdifference", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_prevent_match = ProtoField.new("New Order V 2 Bitfield 3 Prevent Match", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield3preventmatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4 = ProtoField.new("New Order V 2 Bitfield 4", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield4", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_cmta_number = ProtoField.new("New Order V 2 Bitfield 4 Cmta Number", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield4cmtanumber", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_liquidity_provision = ProtoField.new("New Order V 2 Bitfield 4 Liquidity Provision", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield4liquidityprovision", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_maturity_date = ProtoField.new("New Order V 2 Bitfield 4 Maturity Date", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield4maturitydate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_open_close = ProtoField.new("New Order V 2 Bitfield 4 Open Close", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield4openclose", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_put_or_call = ProtoField.new("New Order V 2 Bitfield 4 Put Or Call", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield4putorcall", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_risk_reset = ProtoField.new("New Order V 2 Bitfield 4 Risk Reset", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield4riskreset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_strike_price = ProtoField.new("New Order V 2 Bitfield 4 Strike Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield4strikeprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_target_party_id = ProtoField.new("New Order V 2 Bitfield 4 Target Party Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield4targetpartyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5 = ProtoField.new("New Order V 2 Bitfield 5", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield5", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_attributed_quote = ProtoField.new("New Order V 2 Bitfield 5 Attributed Quote", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield5attributedquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_booking_type = ProtoField.new("New Order V 2 Bitfield 5 Booking Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield5bookingtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_client_id = ProtoField.new("New Order V 2 Bitfield 5 Client Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield5clientid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_executor_id = ProtoField.new("New Order V 2 Bitfield 5 Executor Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield5executorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_ext_exec_inst = ProtoField.new("New Order V 2 Bitfield 5 Ext Exec Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield5extexecinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_investor_id = ProtoField.new("New Order V 2 Bitfield 5 Investor Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield5investorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_order_origination = ProtoField.new("New Order V 2 Bitfield 5 Order Origination", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield5orderorigination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_reserved_1 = ProtoField.new("New Order V 2 Bitfield 5 Reserved 1", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield5reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6 = ProtoField.new("New Order V 2 Bitfield 6", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield6", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_auction_id = ProtoField.new("New Order V 2 Bitfield 6 Auction Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield6auctionid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_display_range = ProtoField.new("New Order V 2 Bitfield 6 Display Range", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield6displayrange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_echo_text = ProtoField.new("New Order V 2 Bitfield 6 Echo Text", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield6echotext", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_ex_destination = ProtoField.new("New Order V 2 Bitfield 6 Ex Destination", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield6exdestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_rout_strategy = ProtoField.new("New Order V 2 Bitfield 6 Rout Strategy", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield6routstrategy", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_route_delivery_method = ProtoField.new("New Order V 2 Bitfield 6 Route Delivery Method", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield6routedeliverymethod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_routing_firm_id = ProtoField.new("New Order V 2 Bitfield 6 Routing Firm Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield6routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_stop_px = ProtoField.new("New Order V 2 Bitfield 6 Stop Px", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield6stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7 = ProtoField.new("New Order V 2 Bitfield 7", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield7", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_algorithmic_indicator = ProtoField.new("New Order V 2 Bitfield 7 Algorithmic Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield7algorithmicindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_client_qualified_role = ProtoField.new("New Order V 2 Bitfield 7 Client Qualified Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield7clientqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_cti_code = ProtoField.new("New Order V 2 Bitfield 7 Cti Code", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield7cticode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_custom_group_id = ProtoField.new("New Order V 2 Bitfield 7 Custom Group Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield7customgroupid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_executor_qualified_role = ProtoField.new("New Order V 2 Bitfield 7 Executor Qualified Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield7executorqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_investor_qualified_role = ProtoField.new("New Order V 2 Bitfield 7 Investor Qualified Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield7investorqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_manual_order_indicator = ProtoField.new("New Order V 2 Bitfield 7 Manual Order Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield7manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_operator_id = ProtoField.new("New Order V 2 Bitfield 7 Operator Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield7operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8 = ProtoField.new("New Order V 2 Bitfield 8", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield8", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_clearing_optional_data = ProtoField.new("New Order V 2 Bitfield 8 Clearing Optional Data", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield8clearingoptionaldata", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_client_id_attr = ProtoField.new("New Order V 2 Bitfield 8 Client Id Attr", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield8clientidattr", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_compression = ProtoField.new("New Order V 2 Bitfield 8 Compression", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield8compression", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_floor_destination = ProtoField.new("New Order V 2 Bitfield 8 Floor Destination", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield8floordestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_floor_routing_inst = ProtoField.new("New Order V 2 Bitfield 8 Floor Routing Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield8floorroutinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_frequent_trader_id = ProtoField.new("New Order V 2 Bitfield 8 Frequent Trader Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield8frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_quote_room_id = ProtoField.new("New Order V 2 Bitfield 8 Quote Room Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield8quoteroomid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_si_indicator = ProtoField.new("New Order V 2 Bitfield 8 Si Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield8siindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9 = ProtoField.new("New Order V 2 Bitfield 9", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield9", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_account_type = ProtoField.new("New Order V 2 Bitfield 9 Account Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield9accounttype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_cross_trade_flag = ProtoField.new("New Order V 2 Bitfield 9 Cross Trade Flag", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield9crosstradeflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_cust_order_handling_inst = ProtoField.new("New Order V 2 Bitfield 9 Cust Order Handling Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield9custorderhandlinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_drill_thru_protection = ProtoField.new("New Order V 2 Bitfield 9 Drill Thru Protection", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield9drillthruprotection", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_order_origin = ProtoField.new("New Order V 2 Bitfield 9 Order Origin", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield9orderorigin", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_ors = ProtoField.new("New Order V 2 Bitfield 9 Ors", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield9ors", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_price_type = ProtoField.new("New Order V 2 Bitfield 9 Price Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield9pricetype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_trading_session_id = ProtoField.new("New Order V 2 Bitfield 9 Trading Session Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2bitfield9tradingsessionid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.no_sides = ProtoField.new("No Sides", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.nosides", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.no_unspecified_unit_replay = ProtoField.new("No Unspecified Unit Replay", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.nounspecifiedunitreplay", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_cancel_order_v_2_bitfields = ProtoField.new("Number Of Cancel Order V 2 Bitfields", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.numberofcancelorderv2bitfields", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_modify_order_v_2_bitfields = ProtoField.new("Number Of Modify Order V 2 Bitfields", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.numberofmodifyorderv2bitfields", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_new_order_v_2_bitfields = ProtoField.new("Number Of New Order V 2 Bitfields", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.numberofneworderv2bitfields", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_param_groups = ProtoField.new("Number Of Param Groups", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.numberofparamgroups", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_purge_orders_v_2_bitfields = ProtoField.new("Number Of Purge Orders V 2 Bitfields", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.numberofpurgeordersv2bitfields", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_return_bitfields = ProtoField.new("Number Of Return Bitfields", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.numberofreturnbitfields", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_trade_capture_report_v_2_bitfields = ProtoField.new("Number Of Trade Capture Report V 2 Bitfields", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.numberoftradecapturereportv2bitfields", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.numberofunits", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.ord_type = ProtoField.new("Ord Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.ordtype", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_category = ProtoField.new("Order Category", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.ordercategory", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_id = ProtoField.new("Order Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.orderid", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_origination = ProtoField.new("Order Origination", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.orderorigination", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_qty = ProtoField.new("Order Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.orderqty", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.orderrejectreason", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.origclordid", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.orig_time = ProtoField.new("Orig Time", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.origtime", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.param_group = ProtoField.new("Param Group", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.paramgroup", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.param_group_length = ProtoField.new("Param Group Length", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.paramgrouplength", ftypes.UINT16)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.param_group_type = ProtoField.new("Param Group Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.paramgrouptype", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.party_id = ProtoField.new("Party Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.partyid", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.party_role = ProtoField.new("Party Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.partyrole", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.password = ProtoField.new("Password", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.password", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.peg_difference = ProtoField.new("Peg Difference", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.pegdifference", ftypes.DOUBLE)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.price = ProtoField.new("Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.price", ftypes.DOUBLE)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.price_formation = ProtoField.new("Price Formation", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.priceformation", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1 = ProtoField.new("Purge Orders V 2 Bitfield 1", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield1", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_clearing_firm = ProtoField.new("Purge Orders V 2 Bitfield 1 Clearing Firm", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_manual_order_indicator = ProtoField.new("Purge Orders V 2 Bitfield 1 Manual Order Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield1manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_mass_cancel_id = ProtoField.new("Purge Orders V 2 Bitfield 1 Mass Cancel Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield1masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_mass_cancel_inst = ProtoField.new("Purge Orders V 2 Bitfield 1 Mass Cancel Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield1masscancelinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_mass_cancel_lockout = ProtoField.new("Purge Orders V 2 Bitfield 1 Mass Cancel Lockout", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield1masscancellockout", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_operator_id = ProtoField.new("Purge Orders V 2 Bitfield 1 Operator Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield1operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_osi_root = ProtoField.new("Purge Orders V 2 Bitfield 1 Osi Root", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield1osiroot", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_routing_firm_id = ProtoField.new("Purge Orders V 2 Bitfield 1 Routing Firm Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield1routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2 = ProtoField.new("Purge Orders V 2 Bitfield 2", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield2", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_currency = ProtoField.new("Purge Orders V 2 Bitfield 2 Currency", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield2currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_id_source = ProtoField.new("Purge Orders V 2 Bitfield 2 Id Source", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield2idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_reserved_128 = ProtoField.new("Purge Orders V 2 Bitfield 2 Reserved 128", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_reserved_64 = ProtoField.new("Purge Orders V 2 Bitfield 2 Reserved 64", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield2reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_security_exchange = ProtoField.new("Purge Orders V 2 Bitfield 2 Security Exchange", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield2securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_security_id = ProtoField.new("Purge Orders V 2 Bitfield 2 Security Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield2securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_symbol = ProtoField.new("Purge Orders V 2 Bitfield 2 Symbol", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_symbol_sfx = ProtoField.new("Purge Orders V 2 Bitfield 2 Symbol Sfx", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2bitfield2symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgerejectreason", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.reason = ProtoField.new("Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.reason", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.report_time = ProtoField.new("Report Time", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.reporttime", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.reserved1", ftypes.BYTES)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.restatementreason", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1 = ProtoField.new("Return Bitfield 1", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield1", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_exec_inst = ProtoField.new("Return Bitfield 1 Exec Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield1execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_max_remove_pct = ProtoField.new("Return Bitfield 1 Max Remove Pct", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield1maxremovepct", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_min_qty = ProtoField.new("Return Bitfield 1 Min Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield1minqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_ord_type = ProtoField.new("Return Bitfield 1 Ord Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_peg_difference = ProtoField.new("Return Bitfield 1 Peg Difference", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield1pegdifference", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_price = ProtoField.new("Return Bitfield 1 Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_side = ProtoField.new("Return Bitfield 1 Side", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield1side", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_time_in_force = ProtoField.new("Return Bitfield 1 Time In Force", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield1timeinforce", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10 = ProtoField.new("Return Bitfield 10", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield10", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_alloc_qty = ProtoField.new("Return Bitfield 10 Alloc Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield10allocqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_client_qualified_role = ProtoField.new("Return Bitfield 10 Client Qualified Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield10clientqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_cross_exclusion_indicator = ProtoField.new("Return Bitfield 10 Cross Exclusion Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield10crossexclusionindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_cross_id = ProtoField.new("Return Bitfield 10 Cross Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield10crossid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_give_up_firm_id = ProtoField.new("Return Bitfield 10 Give Up Firm Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield10giveupfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_price_formation = ProtoField.new("Return Bitfield 10 Price Formation", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield10priceformation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_routing_firm_id = ProtoField.new("Return Bitfield 10 Routing Firm Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield10routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_waiver_type = ProtoField.new("Return Bitfield 10 Waiver Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield10waivertype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11 = ProtoField.new("Return Bitfield 11", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield11", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_algorithmic_indicator = ProtoField.new("Return Bitfield 11 Algorithmic Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield11algorithmicindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_client_id = ProtoField.new("Return Bitfield 11 Client Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield11clientid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_deferral_reason = ProtoField.new("Return Bitfield 11 Deferral Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield11deferralreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_executor_id = ProtoField.new("Return Bitfield 11 Executor Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield11executorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_executor_qualified_role = ProtoField.new("Return Bitfield 11 Executor Qualified Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield11executorqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_investor_id = ProtoField.new("Return Bitfield 11 Investor Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield11investorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_investor_qualified_role = ProtoField.new("Return Bitfield 11 Investor Qualified Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield11investorqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_order_origination = ProtoField.new("Return Bitfield 11 Order Origination", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield11orderorigination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12 = ProtoField.new("Return Bitfield 12", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield12", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_clearing_optional_data = ProtoField.new("Return Bitfield 12 Clearing Optional Data", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield12clearingoptionaldata", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_clearing_price = ProtoField.new("Return Bitfield 12 Clearing Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield12clearingprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_clearing_size = ProtoField.new("Return Bitfield 12 Clearing Size", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield12clearingsize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_clearing_symbol = ProtoField.new("Return Bitfield 12 Clearing Symbol", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield12clearingsymbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_cti_code = ProtoField.new("Return Bitfield 12 Cti Code", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield12cticode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_manual_order_indicator = ProtoField.new("Return Bitfield 12 Manual Order Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield12manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_operator_id = ProtoField.new("Return Bitfield 12 Operator Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield12operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_trade_date = ProtoField.new("Return Bitfield 12 Trade Date", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield12tradedate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13 = ProtoField.new("Return Bitfield 13", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield13", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_avg_px = ProtoField.new("Return Bitfield 13 Avg Px", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield13avgpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_cum_qty = ProtoField.new("Return Bitfield 13 Cum Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield13cumqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_day_avg_px = ProtoField.new("Return Bitfield 13 Day Avg Px", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield13dayavgpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_day_cum_qty = ProtoField.new("Return Bitfield 13 Day Cum Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield13daycumqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_day_order_qty = ProtoField.new("Return Bitfield 13 Day Order Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield13dayorderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_drill_thru_protection = ProtoField.new("Return Bitfield 13 Drill Thru Protection", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield13drillthruprotection", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_multileg_reporting_type = ProtoField.new("Return Bitfield 13 Multileg Reporting Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield13multilegreportingtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_pending_status = ProtoField.new("Return Bitfield 13 Pending Status", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield13pendingstatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14 = ProtoField.new("Return Bitfield 14", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield14", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_leg_cfi_code = ProtoField.new("Return Bitfield 14 Leg Cfi Code", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield14legcficode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_leg_maturity_date = ProtoField.new("Return Bitfield 14 Leg Maturity Date", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield14legmaturitydate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_leg_strike_price = ProtoField.new("Return Bitfield 14 Leg Strike Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield14legstrikeprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_quote_room_id = ProtoField.new("Return Bitfield 14 Quote Room Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield14quoteroomid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_secondary_exec_id = ProtoField.new("Return Bitfield 14 Secondary Exec Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield14secondaryexecid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_user_request_id = ProtoField.new("Return Bitfield 14 User Request Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield14userrequestid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_user_status = ProtoField.new("Return Bitfield 14 User Status", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield14userstatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_username = ProtoField.new("Return Bitfield 14 Username", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield14username", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15 = ProtoField.new("Return Bitfield 15", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield15", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_client_id_attr = ProtoField.new("Return Bitfield 15 Client Id Attr", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield15clientidattr", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_equity_nbbo_protect = ProtoField.new("Return Bitfield 15 Equity Nbbo Protect", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield15equitynbboprotect", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_equity_party_id = ProtoField.new("Return Bitfield 15 Equity Party Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield15equitypartyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_leg_symbol_sfx = ProtoField.new("Return Bitfield 15 Leg Symbol Sfx", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield15legsymbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_mass_cancel_id = ProtoField.new("Return Bitfield 15 Mass Cancel Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield15masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_report_time = ProtoField.new("Return Bitfield 15 Report Time", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield15reporttime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_trade_publish_ind = ProtoField.new("Return Bitfield 15 Trade Publish Ind", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield15tradepublishind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_trade_reporting_indicator = ProtoField.new("Return Bitfield 15 Trade Reporting Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield15tradereportingindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16 = ProtoField.new("Return Bitfield 16", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield16", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_combo_order = ProtoField.new("Return Bitfield 16 Combo Order", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield16comboorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_compression = ProtoField.new("Return Bitfield 16 Compression", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield16compression", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_floor_destination = ProtoField.new("Return Bitfield 16 Floor Destination", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield16floordestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_floor_routing_inst = ProtoField.new("Return Bitfield 16 Floor Routing Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield16floorroutinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_frequent_trader_id = ProtoField.new("Return Bitfield 16 Frequent Trader Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield16frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_multi_class_spread = ProtoField.new("Return Bitfield 16 Multi Class Spread", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield16multiclassspread", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_order_origin = ProtoField.new("Return Bitfield 16 Order Origin", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield16orderorigin", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_session_eligibility = ProtoField.new("Return Bitfield 16 Session Eligibility", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield16sessioneligibility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17 = ProtoField.new("Return Bitfield 17", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield17", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_cust_order_handling_inst = ProtoField.new("Return Bitfield 17 Cust Order Handling Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield17custorderhandlinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_exec_leg_cfi_code = ProtoField.new("Return Bitfield 17 Exec Leg Cfi Code", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield17execlegcficode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_floor_trader_acronym = ProtoField.new("Return Bitfield 17 Floor Trader Acronym", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield17floortraderacronym", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_price_type = ProtoField.new("Return Bitfield 17 Price Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield17pricetype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_sender_location_id = ProtoField.new("Return Bitfield 17 Sender Location Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield17senderlocationid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_strategy_id = ProtoField.new("Return Bitfield 17 Strategy Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield17strategyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_trade_through_alert_type = ProtoField.new("Return Bitfield 17 Trade Through Alert Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield17tradethroughalerttype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_trading_session_id = ProtoField.new("Return Bitfield 17 Trading Session Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield17tradingsessionid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18 = ProtoField.new("Return Bitfield 18", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield18", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_account_type = ProtoField.new("Return Bitfield 18 Account Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield18accounttype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_cross_initiator = ProtoField.new("Return Bitfield 18 Cross Initiator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield18crossinitiator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_cross_trade_flag = ProtoField.new("Return Bitfield 18 Cross Trade Flag", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield18crosstradeflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_held_indicator = ProtoField.new("Return Bitfield 18 Held Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield18heldindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_leg_price = ProtoField.new("Return Bitfield 18 Leg Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield18legprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_locate_broker = ProtoField.new("Return Bitfield 18 Locate Broker", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield18locatebroker", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_multi_juris_reporting_ind = ProtoField.new("Return Bitfield 18 Multi Juris Reporting Ind", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield18multijurisreportingind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_subreason = ProtoField.new("Return Bitfield 18 Subreason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield18subreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19 = ProtoField.new("Return Bitfield 19", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield19", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_intra_firm_trade_ind = ProtoField.new("Return Bitfield 19 Intra Firm Trade Ind", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield19intrafirmtradeind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_1 = ProtoField.new("Return Bitfield 19 Reserved 1", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield19reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_128 = ProtoField.new("Return Bitfield 19 Reserved 128", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield19reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_2 = ProtoField.new("Return Bitfield 19 Reserved 2", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield19reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_32 = ProtoField.new("Return Bitfield 19 Reserved 32", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield19reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_4 = ProtoField.new("Return Bitfield 19 Reserved 4", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield19reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_64 = ProtoField.new("Return Bitfield 19 Reserved 64", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield19reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_8 = ProtoField.new("Return Bitfield 19 Reserved 8", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield19reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2 = ProtoField.new("Return Bitfield 2", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield2", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_capacity = ProtoField.new("Return Bitfield 2 Capacity", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield2capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_contra_trader = ProtoField.new("Return Bitfield 2 Contra Trader", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield2contratrader", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_currency = ProtoField.new("Return Bitfield 2 Currency", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield2currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_id_source = ProtoField.new("Return Bitfield 2 Id Source", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield2idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_security_exchange = ProtoField.new("Return Bitfield 2 Security Exchange", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield2securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_security_id = ProtoField.new("Return Bitfield 2 Security Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield2securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_symbol = ProtoField.new("Return Bitfield 2 Symbol", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_symbol_sfx = ProtoField.new("Return Bitfield 2 Symbol Sfx", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield2symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3 = ProtoField.new("Return Bitfield 3", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield3", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_account = ProtoField.new("Return Bitfield 3 Account", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield3account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_clearing_account = ProtoField.new("Return Bitfield 3 Clearing Account", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield3clearingaccount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_clearing_firm = ProtoField.new("Return Bitfield 3 Clearing Firm", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield3clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_discretion_amount = ProtoField.new("Return Bitfield 3 Discretion Amount", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield3discretionamount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_display_indicator = ProtoField.new("Return Bitfield 3 Display Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield3displayindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_max_floor = ProtoField.new("Return Bitfield 3 Max Floor", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield3maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_order_qty = ProtoField.new("Return Bitfield 3 Order Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield3orderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_prevent_match = ProtoField.new("Return Bitfield 3 Prevent Match", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield3preventmatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4 = ProtoField.new("Return Bitfield 4", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield4", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_access_fee = ProtoField.new("Return Bitfield 4 Access Fee", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield4accessfee", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_cl_ord_id_batch = ProtoField.new("Return Bitfield 4 Cl Ord Id Batch", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield4clordidbatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_corrected_size = ProtoField.new("Return Bitfield 4 Corrected Size", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield4correctedsize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_maturity_date = ProtoField.new("Return Bitfield 4 Maturity Date", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield4maturitydate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_open_close = ProtoField.new("Return Bitfield 4 Open Close", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield4openclose", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_party_id = ProtoField.new("Return Bitfield 4 Party Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield4partyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_put_or_call = ProtoField.new("Return Bitfield 4 Put Or Call", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield4putorcall", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_strike_price = ProtoField.new("Return Bitfield 4 Strike Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield4strikeprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5 = ProtoField.new("Return Bitfield 5", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield5", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_base_liquidity_indicator = ProtoField.new("Return Bitfield 5 Base Liquidity Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield5baseliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_display_price = ProtoField.new("Return Bitfield 5 Display Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield5displayprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_expire_time = ProtoField.new("Return Bitfield 5 Expire Time", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield5expiretime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_last_price = ProtoField.new("Return Bitfield 5 Last Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield5lastprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_last_shares = ProtoField.new("Return Bitfield 5 Last Shares", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield5lastshares", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_leaves_qty = ProtoField.new("Return Bitfield 5 Leaves Qty", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield5leavesqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_orig_cl_ord_id = ProtoField.new("Return Bitfield 5 Orig Cl Ord Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield5origclordid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_working_price = ProtoField.new("Return Bitfield 5 Working Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield5workingprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6 = ProtoField.new("Return Bitfield 6", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield6", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_attributed_quote = ProtoField.new("Return Bitfield 6 Attributed Quote", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield6attributedquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_bulk_order_ids = ProtoField.new("Return Bitfield 6 Bulk Order Ids", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield6bulkorderids", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_bulk_reject_reasons = ProtoField.new("Return Bitfield 6 Bulk Reject Reasons", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield6bulkrejectreasons", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_ccp = ProtoField.new("Return Bitfield 6 Ccp", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield6ccp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_contra_capacity = ProtoField.new("Return Bitfield 6 Contra Capacity", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield6contracapacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_ext_exec_inst = ProtoField.new("Return Bitfield 6 Ext Exec Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield6extexecinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_party_role = ProtoField.new("Return Bitfield 6 Party Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield6partyrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_secondary_order_id = ProtoField.new("Return Bitfield 6 Secondary Order Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield6secondaryorderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7 = ProtoField.new("Return Bitfield 7", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield7", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_bid = ProtoField.new("Return Bitfield 7 Bid", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield7bid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_large_size = ProtoField.new("Return Bitfield 7 Large Size", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield7largesize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_last_mkt = ProtoField.new("Return Bitfield 7 Last Mkt", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield7lastmkt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_offer = ProtoField.new("Return Bitfield 7 Offer", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield7offer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_sub_liquidity_indicator = ProtoField.new("Return Bitfield 7 Sub Liquidity Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield7subliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_text = ProtoField.new("Return Bitfield 7 Text", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield7text", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_trade_publish_ind_return = ProtoField.new("Return Bitfield 7 Trade Publish Ind Return", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield7tradepublishindreturn", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_trade_report_type_return = ProtoField.new("Return Bitfield 7 Trade Report Type Return", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield7tradereporttypereturn", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8 = ProtoField.new("Return Bitfield 8", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield8", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_echo_text = ProtoField.new("Return Bitfield 8 Echo Text", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield8echotext", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_ex_destination = ProtoField.new("Return Bitfield 8 Ex Destination", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield8exdestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_fee_code = ProtoField.new("Return Bitfield 8 Fee Code", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield8feecode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_rout_strategy = ProtoField.new("Return Bitfield 8 Rout Strategy", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield8routstrategy", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_route_delivery_method = ProtoField.new("Return Bitfield 8 Route Delivery Method", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield8routedeliverymethod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_routing_inst = ProtoField.new("Return Bitfield 8 Routing Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield8routinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_stop_px = ProtoField.new("Return Bitfield 8 Stop Px", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield8stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_trade_report_ref_id = ProtoField.new("Return Bitfield 8 Trade Report Ref Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield8tradereportrefid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9 = ProtoField.new("Return Bitfield 9", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield9", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_auction_id = ProtoField.new("Return Bitfield 9 Auction Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield9auctionid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_cmta_number = ProtoField.new("Return Bitfield 9 Cmta Number", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield9cmtanumber", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_cross_prioritization = ProtoField.new("Return Bitfield 9 Cross Prioritization", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield9crossprioritization", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_cross_type = ProtoField.new("Return Bitfield 9 Cross Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield9crosstype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_liquidity_provision = ProtoField.new("Return Bitfield 9 Liquidity Provision", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield9liquidityprovision", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_marketing_fee_code = ProtoField.new("Return Bitfield 9 Marketing Fee Code", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield9marketingfeecode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_order_category = ProtoField.new("Return Bitfield 9 Order Category", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield9ordercategory", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_target_party_id = ProtoField.new("Return Bitfield 9 Target Party Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.returnbitfield9targetpartyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.risk_reset = ProtoField.new("Risk Reset", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.riskreset", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.routing_inst = ProtoField.new("Routing Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.routinginst", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.secondaryorderid", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.secondary_trd_type = ProtoField.new("Secondary Trd Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.secondarytrdtype", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.security_exchange = ProtoField.new("Security Exchange", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.securityexchange", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.security_id = ProtoField.new("Security Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.securityid", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.sequencenumber", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.sessionsubid", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.settlement_currency = ProtoField.new("Settlement Currency", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.settlementcurrency", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.settlement_date = ProtoField.new("Settlement Date", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.settlementdate", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.settlement_location = ProtoField.new("Settlement Location", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.settlementlocation", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.side = ProtoField.new("Side", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.side", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.startofmessage", ftypes.UINT16)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.subliquidityindicator", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.symbol = ProtoField.new("Symbol", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.symbol", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.tertiary_trd_type = ProtoField.new("Tertiary Trd Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tertiarytrdtype", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.text = ProtoField.new("Text", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.text", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.time_in_force = ProtoField.new("Time In Force", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.timeinforce", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.tolerance = ProtoField.new("Tolerance", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tolerance", ftypes.UINT16)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1 = ProtoField.new("Trade Capture Report V 2 Bitfield 1", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield1", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_currency = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Currency", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield1currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_id_source = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Id Source", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield1idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_last_mkt = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Last Mkt", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield1lastmkt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_reserved_128 = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Reserved 128", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield1reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_reserved_2 = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Reserved 2", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_security_exchange = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Security Exchange", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield1securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_security_id = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Security Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield1securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_symbol = ProtoField.new("Trade Capture Report V 2 Bitfield 1 Symbol", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield1symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2 = ProtoField.new("Trade Capture Report V 2 Bitfield 2", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield2", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_account = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Account", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield2account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_capacity = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Capacity", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield2capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_party_role = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Party Role", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield2partyrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_trade_id = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Trade Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield2tradeid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_trade_report_trans_type = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Trade Report Trans Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield2tradereporttranstype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_trade_time = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Trade Time", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield2tradetime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_transaction_category = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Transaction Category", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield2transactioncategory", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_venue_type = ProtoField.new("Trade Capture Report V 2 Bitfield 2 Venue Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield2venuetype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3 = ProtoField.new("Trade Capture Report V 2 Bitfield 3", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield3", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_execution_method = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Execution Method", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield3executionmethod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_large_size = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Large Size", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield3largesize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_match_type = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Match Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield3matchtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_secondary_trd_type = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Secondary Trd Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield3secondarytrdtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_trade_price_condition = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Trade Price Condition", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield3tradepricecondition", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_trade_publish_indicator = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Trade Publish Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield3tradepublishindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_trading_session_sub_id = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Trading Session Sub Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield3tradingsessionsubid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_trd_sub_type = ProtoField.new("Trade Capture Report V 2 Bitfield 3 Trd Sub Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield3trdsubtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4 = ProtoField.new("Trade Capture Report V 2 Bitfield 4", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield4", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_gross_trade_amt = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Gross Trade Amt", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield4grosstradeamt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_order_category = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Order Category", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield4ordercategory", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_settlement_price = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Settlement Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield4settlementprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_tolerance = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Tolerance", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield4tolerance", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_trade_handling_instruction = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Trade Handling Instruction", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield4tradehandlinginstruction", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_trade_link_id = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Trade Link Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield4tradelinkid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_trade_report_ref_id = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Trade Report Ref Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield4tradereportrefid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_trade_report_type = ProtoField.new("Trade Capture Report V 2 Bitfield 4 Trade Report Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield4tradereporttype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5 = ProtoField.new("Trade Capture Report V 2 Bitfield 5", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield5", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_algorithmic_indicator = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Algorithmic Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield5algorithmicindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_deferral_reason = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Deferral Reason", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield5deferralreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_price_formation = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Price Formation", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield5priceformation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_settlement_currency = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Settlement Currency", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield5settlementcurrency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_settlement_date = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Settlement Date", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield5settlementdate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_settlement_location = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Settlement Location", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield5settlementlocation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_third_party = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Third Party", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield5thirdparty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_waiver_type = ProtoField.new("Trade Capture Report V 2 Bitfield 5 Waiver Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield5waivertype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6 = ProtoField.new("Trade Capture Report V 2 Bitfield 6", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield6", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_account_type = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Account Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield6accounttype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_cust_order_handling_inst = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Cust Order Handling Inst", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield6custorderhandlinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_intra_firm_trade_ind = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Intra Firm Trade Ind", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield6intrafirmtradeind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_multi_juris_reporting_ind = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Multi Juris Reporting Ind", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield6multijurisreportingind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_open_close = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Open Close", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield6openclose", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_reserved_128 = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Reserved 128", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield6reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_reserved_64 = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Reserved 64", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield6reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_tertiary_trd_type = ProtoField.new("Trade Capture Report V 2 Bitfield 6 Tertiary Trd Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2bitfield6tertiarytrdtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_handling_instruction = ProtoField.new("Trade Handling Instruction", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradehandlinginstruction", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_id = ProtoField.new("Trade Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradeid", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_link_id = ProtoField.new("Trade Link Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradelinkid", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_price_condition = ProtoField.new("Trade Price Condition", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradepricecondition", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_publish_ind = ProtoField.new("Trade Publish Ind", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradepublishind", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_publish_indicator = ProtoField.new("Trade Publish Indicator", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradepublishindicator", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_report_id = ProtoField.new("Trade Report Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradereportid", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_report_ref_id = ProtoField.new("Trade Report Ref Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradereportrefid", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_report_trans_type = ProtoField.new("Trade Report Trans Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradereporttranstype", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_report_type = ProtoField.new("Trade Report Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradereporttype", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_report_type_return = ProtoField.new("Trade Report Type Return", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradereporttypereturn", ftypes.UINT16)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_time = ProtoField.new("Trade Time", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradetime", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradingsessionsubid", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.transactioncategory", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.transactiontime", ftypes.UINT64)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trd_cap_ack_side_grp = ProtoField.new("Trd Cap Ack Side Grp", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.trdcapacksidegrp", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trd_cap_rpt_side_grp = ProtoField.new("Trd Cap Rpt Side Grp", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.trdcaprptsidegrp", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trd_sub_type = ProtoField.new("Trd Sub Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.trdsubtype", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.unit_number = ProtoField.new("Unit Number", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.unitnumber", ftypes.UINT8)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.unitsequence", ftypes.UINT32)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.units = ProtoField.new("Units", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.units", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.username = ProtoField.new("Username", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.username", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.venue_type = ProtoField.new("Venue Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.venuetype", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.waiver_type = ProtoField.new("Waiver Type", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.waivertype", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.working_price = ProtoField.new("Working Price", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.workingprice", ftypes.DOUBLE)

-- Cboe CxeEquities BinaryOrderEntry Boe 2.0.83 Framing
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.message_header = ProtoField.new("Message Header", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.messageheader", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.packet = ProtoField.new("Packet", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.packet", ftypes.STRING)

-- Cboe CxeEquities BinaryOrderEntry 2.0.83 Application Messages
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_message = ProtoField.new("Cancel Order V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelorderv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_rejected_v_2_message = ProtoField.new("Cancel Rejected V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.cancelrejectedv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.clientheartbeatmessage", ftypes.BYTES)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.login_request_v_2_message = ProtoField.new("Login Request V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.loginrequestv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.login_response_v_2_message = ProtoField.new("Login Response V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.loginresponsev2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.logout_message = ProtoField.new("Logout Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.logoutmessage", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.logout_request_message = ProtoField.new("Logout Request Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.logoutrequestmessage", ftypes.BYTES)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.mass_cancel_acknowledgment_v_2_message = ProtoField.new("Mass Cancel Acknowledgment V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.masscancelacknowledgmentv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_message = ProtoField.new("Modify Order V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.modifyorderv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_message = ProtoField.new("New Order V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.neworderv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_acknowledgment_v_2_message = ProtoField.new("Order Acknowledgment V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.orderacknowledgmentv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_cancelled_v_2_message = ProtoField.new("Order Cancelled V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.ordercancelledv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_execution_v_2_message = ProtoField.new("Order Execution V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.orderexecutionv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_modified_v_2_message = ProtoField.new("Order Modified V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.ordermodifiedv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_rejected_v_2_message = ProtoField.new("Order Rejected V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.orderrejectedv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_restated_v_2_message = ProtoField.new("Order Restated V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.orderrestatedv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_message = ProtoField.new("Purge Orders V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgeordersv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_rejected_v_2_message = ProtoField.new("Purge Rejected V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.purgerejectedv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.replaycompletemessage", ftypes.BYTES)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.server_heartbeat_message = ProtoField.new("Server Heartbeat Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.serverheartbeatmessage", ftypes.BYTES)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_cancel_or_correct_v_2_message = ProtoField.new("Trade Cancel Or Correct V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecancelorcorrectv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_confirm_v_2_message = ProtoField.new("Trade Capture Confirm V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecaptureconfirmv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_acknowledgment_v_2_message = ProtoField.new("Trade Capture Report Acknowledgment V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportacknowledgmentv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_decline_v_2_message = ProtoField.new("Trade Capture Report Decline V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportdeclinev2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_reject_v_2_message = ProtoField.new("Trade Capture Report Reject V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportrejectv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_message = ProtoField.new("Trade Capture Report V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.tradecapturereportv2message", ftypes.STRING)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.user_modify_rejected_v_2_message = ProtoField.new("User Modify Rejected V 2 Message", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.usermodifyrejectedv2message", ftypes.STRING)

-- Cboe CxeEquities BinaryOrderEntry Boe 2.0.83 Generated Fields
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.custom_group_ids_index = ProtoField.new("Custom Group Ids Index", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.customgroupidsindex", ftypes.UINT16)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.param_group_index = ProtoField.new("Param Group Index", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.paramgroupindex", ftypes.UINT16)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trd_cap_ack_side_grp_index = ProtoField.new("Trd Cap Ack Side Grp Index", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.trdcapacksidegrpindex", ftypes.UINT16)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trd_cap_rpt_side_grp_index = ProtoField.new("Trd Cap Rpt Side Grp Index", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.trdcaprptsidegrpindex", ftypes.UINT16)
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.units_index = ProtoField.new("Units Index", "cboe.cxeequities.binaryorderentry.boe.v2.0.83.unitsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CxeEquities BinaryOrderEntry Boe 2.0.83 Element Dissection Options
show.structs = true
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Cboe CxeEquities BinaryOrderEntry Boe 2.0.83 Show Options
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_application_messages then
    show.application_messages = omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_headers then
    show.headers = omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_structs then
    show.structs = omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_indexes then
    show.indexes = omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cboe CxeEquities BinaryOrderEntry Boe 2.0.83 Fields
-----------------------------------------------------------------------

-- Account
cboe_cxeequities_binaryorderentry_boe_v2_0_83.account = {}

-- Size: Account
cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.size = 16

-- Display: Account
cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.account, range, value, display)

  return offset + length, value
end

-- Algorithmic Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.size = 1

-- Display: Algorithmic Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.display = function(value)
  if value == "N" then
    return "Algorithmic Indicator: No Algorithm Was Involved (N)"
  end
  if value == "Y" then
    return "Algorithmic Indicator: Algorithm Was Involved (Y)"
  end

  return "Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.display = function(value)
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
    return "Base Liquidity Indicator: Auction Trade (C)"
  end
  if value == "S" then
    return "Base Liquidity Indicator: Self Match (S)"
  end

  return "Base Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Base Liquidity Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Cancel Orig On Reject
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_orig_on_reject.display = function(value)
  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Modification Fails (Y)"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_orig_on_reject.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Cancel Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reason = {}

-- Size: Cancel Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reason.display = function(value)
  if value == "A" then
    return "Cancel Reason: Admin (A)"
  end
  if value == "D" then
    return "Cancel Reason: Duplicate Identifier (D)"
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
  if value == "k" then
    return "Cancel Reason: Pending Periodic Auction (k)"
  end
  if value == "L" then
    return "Cancel Reason: Price Exceeds Cross Range (L)"
  end
  if value == "M" then
    return "Cancel Reason: Liquidity Available Exceeds Order Size (M)"
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
  if value == "T" then
    return "Cancel Reason: Routing Order Would Trade Through An Away Destination (T)"
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
  if value == "l" then
    return "Cancel Reason: Large In Scale (l)"
  end
  if value == "m" then
    return "Cancel Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Cancel Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "p" then
    return "Cancel Reason: Static Collar Breach (p)"
  end
  if value == "r" then
    return "Cancel Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Cancel Reason: Risk Management Symbol Level (s)"
  end
  if value == "x" then
    return "Cancel Reason: Crossed Market (x)"
  end
  if value == "v" then
    return "Cancel Reason: Mi Fid Ii Double Cap Related (v)"
  end
  if value == "y" then
    return "Cancel Reason: Order Received By Cboe During Replay (y)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reject_reason.display = function(value)
  if value == "A" then
    return "Cancel Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Cancel Reject Reason: Duplicate Identifier (D)"
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
  if value == "k" then
    return "Cancel Reject Reason: Pending Periodic Auction (k)"
  end
  if value == "L" then
    return "Cancel Reject Reason: Price Exceeds Cross Range (L)"
  end
  if value == "M" then
    return "Cancel Reject Reason: Liquidity Available Exceeds Order Size (M)"
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
  if value == "T" then
    return "Cancel Reject Reason: Routing Order Would Trade Through An Away Destination (T)"
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
  if value == "l" then
    return "Cancel Reject Reason: Large In Scale (l)"
  end
  if value == "m" then
    return "Cancel Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Cancel Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "p" then
    return "Cancel Reject Reason: Static Collar Breach (p)"
  end
  if value == "r" then
    return "Cancel Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Cancel Reject Reason: Risk Management Symbol Level (s)"
  end
  if value == "x" then
    return "Cancel Reject Reason: Crossed Market (x)"
  end
  if value == "v" then
    return "Cancel Reject Reason: Mi Fid Ii Double Cap Related (v)"
  end
  if value == "y" then
    return "Cancel Reject Reason: Order Received By Cboe During Replay (y)"
  end

  return "Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancelled Order Count
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancelled_order_count = {}

-- Size: Cancelled Order Count
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancelled_order_count.size = 4

-- Display: Cancelled Order Count
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancelled_order_count.display = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancelled_order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancelled_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancelled_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity = {}

-- Size: Capacity
cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.size = 1

-- Display: Capacity
cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.display = function(value)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account = {}

-- Size: Clearing Account
cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.size = 4

-- Display: Clearing Account
cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Firm
cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm = {}

-- Size: Clearing Firm
cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.size = 4

-- Display: Clearing Firm
cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Client Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id = {}

-- Size: Client Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.size = 4

-- Display: Client Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.display = function(value)
  if value == 0 then
    return "Client Id: None (0)"
  end
  if value == 1 then
    return "Client Id: Aggr (1)"
  end
  if value == 2 then
    return "Client Id: Pnal (2)"
  end

  return "Client Id: Unknown("..value..")"
end

-- Dissect: Client Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.client_id, range, value, display)

  return offset + length, value
end

-- Client Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role = {}

-- Size: Client Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.size = 1

-- Display: Client Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.display = function(value)
  return "Client Qualified Role: "..value
end

-- Dissect: Client Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.client_qualified_role, range, value, display)

  return offset + length, value
end

-- Contra Broker
cboe_cxeequities_binaryorderentry_boe_v2_0_83.contra_broker = {}

-- Size: Contra Broker
cboe_cxeequities_binaryorderentry_boe_v2_0_83.contra_broker.size = 4

-- Display: Contra Broker
cboe_cxeequities_binaryorderentry_boe_v2_0_83.contra_broker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Broker: No Value"
  end

  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
cboe_cxeequities_binaryorderentry_boe_v2_0_83.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.contra_broker.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_price = {}

-- Size: Corrected Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_price.size = 8

-- Display: Corrected Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_price.translate(raw)
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Size
cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_size = {}

-- Size: Corrected Size
cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_size.size = 4

-- Display: Corrected Size
cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_size.display = function(value)
  return "Corrected Size: "..value
end

-- Dissect: Corrected Size
cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.corrected_size, range, value, display)

  return offset + length, value
end

-- Currency
cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency = {}

-- Size: Currency
cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.size = 3

-- Display: Currency
cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.currency, range, value, display)

  return offset + length, value
end

-- Custom Group Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id = {}

-- Size: Custom Group Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id.size = 2

-- Display: Custom Group Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id.display = function(value)
  return "Custom Group Id: "..value
end

-- Dissect: Custom Group Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.custom_group_id, range, value, display)

  return offset + length, value
end

-- Custom Group Id Cnt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id_cnt = {}

-- Size: Custom Group Id Cnt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id_cnt.size = 1

-- Display: Custom Group Id Cnt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id_cnt.display = function(value)
  return "Custom Group Id Cnt: "..value
end

-- Dissect: Custom Group Id Cnt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.custom_group_id_cnt, range, value, display)

  return offset + length, value
end

-- Deferral Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.deferral_reason = {}

-- Size: Deferral Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.deferral_reason.size = 1

-- Display: Deferral Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.deferral_reason.display = function(value)
  if value == "-" then
    return "Deferral Reason: No Deferral Reason (-)"
  end
  if value == "6" then
    return "Deferral Reason: Deferral For Large In Scale (6)"
  end

  return "Deferral Reason: Unknown("..value..")"
end

-- Dissect: Deferral Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.deferral_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.deferral_reason, range, value, display)

  return offset + length, value
end

-- Display Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator = {}

-- Size: Display Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.size = 1

-- Display: Display Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.display = function(value)
  if value == "X" then
    return "Display Indicator: Displayed Order (X)"
  end
  if value == "I" then
    return "Display Indicator: Invisible (I)"
  end

  return "Display Indicator: Unknown("..value..")"
end

-- Dissect: Display Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.display_indicator, range, value, display)

  return offset + length, value
end

-- Display Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price = {}

-- Size: Display Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.size = 8

-- Display: Display Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.display = function(value)
  return "Display Price: "..value
end

-- Translate: Display Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Display Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.translate(raw)
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.display_price, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_id = {}

-- Size: Exec Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_id.size = 8

-- Display: Exec Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst = {}

-- Size: Exec Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.size = 1

-- Display: Exec Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.display = function(value)
  if value == "L" then
    return "Exec Inst: Alternate Midpoint (L)"
  end
  if value == "M" then
    return "Exec Inst: Midpoint (M)"
  end
  if value == "G" then
    return "Exec Inst: Guarded Midpoint (G)"
  end
  if value == "R" then
    return "Exec Inst: Primary Peg (R)"
  end
  if value == "P" then
    return "Exec Inst: Market Peg (P)"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_ref_id = {}

-- Size: Exec Ref Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_ref_id.size = 8

-- Display: Exec Ref Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Execution Method
cboe_cxeequities_binaryorderentry_boe_v2_0_83.execution_method = {}

-- Size: Execution Method
cboe_cxeequities_binaryorderentry_boe_v2_0_83.execution_method.size = 1

-- Display: Execution Method
cboe_cxeequities_binaryorderentry_boe_v2_0_83.execution_method.display = function(value)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.execution_method.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.execution_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.execution_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.execution_method, range, value, display)

  return offset + length, value
end

-- Executor Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id = {}

-- Size: Executor Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.size = 4

-- Display: Executor Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.display = function(value)
  return "Executor Id: "..value
end

-- Dissect: Executor Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.executor_id, range, value, display)

  return offset + length, value
end

-- Executor Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role = {}

-- Size: Executor Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.size = 1

-- Display: Executor Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.display = function(value)
  return "Executor Qualified Role: "..value
end

-- Dissect: Executor Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.executor_qualified_role, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time = {}

-- Size: Expire Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.size = 8

-- Display: Expire Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expire Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Ext Exec Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst = {}

-- Size: Ext Exec Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.size = 1

-- Display: Ext Exec Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.display = function(value)
  if value == "N" then
    return "Ext Exec Inst: None (N)"
  end
  if value == "G" then
    return "Ext Exec Inst: All Or None (G)"
  end
  if value == "R" then
    return "Ext Exec Inst: Retail Order (R)"
  end
  if value == "A" then
    return "Ext Exec Inst: Retail All Or None (A)"
  end
  if value == "L" then
    return "Ext Exec Inst: Retail Liquidity Provision (L)"
  end

  return "Ext Exec Inst: Unknown("..value..")"
end

-- Dissect: Ext Exec Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.ext_exec_inst, range, value, display)

  return offset + length, value
end

-- Fee Code
cboe_cxeequities_binaryorderentry_boe_v2_0_83.fee_code = {}

-- Size: Fee Code
cboe_cxeequities_binaryorderentry_boe_v2_0_83.fee_code.size = 2

-- Display: Fee Code
cboe_cxeequities_binaryorderentry_boe_v2_0_83.fee_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fee Code: No Value"
  end

  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_cxeequities_binaryorderentry_boe_v2_0_83.fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.fee_code.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Gross Trade Amt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.gross_trade_amt = {}

-- Size: Gross Trade Amt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.gross_trade_amt.size = 8

-- Display: Gross Trade Amt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.gross_trade_amt.display = function(value)
  return "Gross Trade Amt: "..value
end

-- Translate: Gross Trade Amt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.gross_trade_amt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Gross Trade Amt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.gross_trade_amt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.gross_trade_amt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxeequities_binaryorderentry_boe_v2_0_83.gross_trade_amt.translate(raw)
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.gross_trade_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.gross_trade_amt, range, value, display)

  return offset + length, value
end

-- Id Source
cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source = {}

-- Size: Id Source
cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.size = 1

-- Display: Id Source
cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.display = function(value)
  if value == "4" then
    return "Id Source: Isin (4)"
  end
  if value == "5" then
    return "Id Source: Ric (5)"
  end

  return "Id Source: Unknown("..value..")"
end

-- Dissect: Id Source
cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.id_source, range, value, display)

  return offset + length, value
end

-- Intra Firm Trade Ind
cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind = {}

-- Size: Intra Firm Trade Ind
cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind.size = 1

-- Display: Intra Firm Trade Ind
cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind.display = function(value)
  if value == "N" then
    return "Intra Firm Trade Ind: Not An Intragroup Transaction (N)"
  end
  if value == "Y" then
    return "Intra Firm Trade Ind: Is An Intragroup Transaction (Y)"
  end

  return "Intra Firm Trade Ind: Unknown("..value..")"
end

-- Dissect: Intra Firm Trade Ind
cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.intra_firm_trade_ind, range, value, display)

  return offset + length, value
end

-- Investor Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id = {}

-- Size: Investor Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.size = 4

-- Display: Investor Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.display = function(value)
  return "Investor Id: "..value
end

-- Dissect: Investor Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.investor_id, range, value, display)

  return offset + length, value
end

-- Investor Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role = {}

-- Size: Investor Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.size = 1

-- Display: Investor Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.display = function(value)
  return "Investor Qualified Role: "..value
end

-- Dissect: Investor Qualified Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.investor_qualified_role, range, value, display)

  return offset + length, value
end

-- Large Size
cboe_cxeequities_binaryorderentry_boe_v2_0_83.large_size = {}

-- Size: Large Size
cboe_cxeequities_binaryorderentry_boe_v2_0_83.large_size.size = 8

-- Display: Large Size
cboe_cxeequities_binaryorderentry_boe_v2_0_83.large_size.display = function(value)
  return "Large Size: "..value
end

-- Dissect: Large Size
cboe_cxeequities_binaryorderentry_boe_v2_0_83.large_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.large_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.large_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.large_size, range, value, display)

  return offset + length, value
end

-- Last Mkt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_mkt = {}

-- Size: Last Mkt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_mkt.size = 4

-- Display: Last Mkt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_mkt.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Last Mkt: No Value"
  end

  return "Last Mkt: "..value
end

-- Dissect: Last Mkt
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_mkt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_mkt.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_mkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_px = {}

-- Size: Last Px
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_px.size = 8

-- Display: Last Px
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_px.translate(raw)
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Received Sequence Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_received_sequence_number = {}

-- Size: Last Received Sequence Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_received_sequence_number.size = 4

-- Display: Last Received Sequence Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_received_sequence_number.display = function(value)
  return "Last Received Sequence Number: "..value
end

-- Dissect: Last Received Sequence Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_received_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_received_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_received_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.last_received_sequence_number, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares = {}

-- Size: Last Shares
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.size = 4

-- Display: Last Shares
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty = {}

-- Size: Leaves Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Liquidity Provision
cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision = {}

-- Size: Liquidity Provision
cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.size = 1

-- Display: Liquidity Provision
cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.display = function(value)
  if value == "N" then
    return "Liquidity Provision: Not Liquidity Provision (N)"
  end
  if value == "Y" then
    return "Liquidity Provision: Liquidity Provision (Y)"
  end

  return "Liquidity Provision: Unknown("..value..")"
end

-- Dissect: Liquidity Provision
cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.liquidity_provision, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_status = {}

-- Size: Login Response Status
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_status.size = 1

-- Display: Login Response Status
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_status.display = function(value)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_text = {}

-- Size: Login Response Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_text.size = 60

-- Display: Login Response Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Login Response Text: No Value"
  end

  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_text.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason = {}

-- Size: Logout Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason.size = 1

-- Display: Logout Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason.display = function(value)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Reason Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logout Reason Text: No Value"
  end

  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason_text.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_id = {}

-- Size: Mass Cancel Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_id.size = 20

-- Display: Mass Cancel Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Id: No Value"
  end

  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_id.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_inst.size = 16

-- Display: Mass Cancel Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Inst: No Value"
  end

  return "Mass Cancel Inst: "..value
end

-- Dissect: Mass Cancel Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_inst.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.mass_cancel_inst, range, value, display)

  return offset + length, value
end

-- Match Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.match_type = {}

-- Size: Match Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.match_type.size = 1

-- Display: Match Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.match_type.display = function(value)
  return "Match Type: "..value
end

-- Dissect: Match Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.match_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.match_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.match_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.match_type, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_cxeequities_binaryorderentry_boe_v2_0_83.matching_unit = {}

-- Size: Matching Unit
cboe_cxeequities_binaryorderentry_boe_v2_0_83.matching_unit.size = 1

-- Display: Matching Unit
cboe_cxeequities_binaryorderentry_boe_v2_0_83.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_cxeequities_binaryorderentry_boe_v2_0_83.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Max Floor
cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor = {}

-- Size: Max Floor
cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.size = 4

-- Display: Max Floor
cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_length = {}

-- Size: Message Length
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_length.size = 2

-- Display: Message Length
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_type = {}

-- Size: Message Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_type.size = 1

-- Display: Message Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_type.display = function(value)
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
  if value == 0x38 then
    return "Message Type: New Order V 2 Message (0x38)"
  end
  if value == 0x39 then
    return "Message Type: Cancel Order V 2 Message (0x39)"
  end
  if value == 0x3A then
    return "Message Type: Modify Order V 2 Message (0x3A)"
  end
  if value == 0x47 then
    return "Message Type: Purge Orders V 2 Message (0x47)"
  end
  if value == 0x3C then
    return "Message Type: Trade Capture Report V 2 Message (0x3C)"
  end
  if value == 0x25 then
    return "Message Type: Order Acknowledgment V 2 Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Order Rejected V 2 Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Order Modified V 2 Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Order Restated V 2 Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: User Modify Rejected V 2 Message (0x29)"
  end
  if value == 0x2A then
    return "Message Type: Order Cancelled V 2 Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Cancel Rejected V 2 Message (0x2B)"
  end
  if value == 0x2C then
    return "Message Type: Order Execution V 2 Message (0x2C)"
  end
  if value == 0x2D then
    return "Message Type: Trade Cancel Or Correct V 2 Message (0x2D)"
  end
  if value == 0x48 then
    return "Message Type: Purge Rejected V 2 Message (0x48)"
  end
  if value == 0x36 then
    return "Message Type: Mass Cancel Acknowledgment V 2 Message (0x36)"
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

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty = {}

-- Size: Min Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.size = 4

-- Display: Min Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_reject_reason.display = function(value)
  if value == "A" then
    return "Modify Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Modify Reject Reason: Duplicate Identifier (D)"
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
  if value == "k" then
    return "Modify Reject Reason: Pending Periodic Auction (k)"
  end
  if value == "L" then
    return "Modify Reject Reason: Price Exceeds Cross Range (L)"
  end
  if value == "M" then
    return "Modify Reject Reason: Liquidity Available Exceeds Order Size (M)"
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
  if value == "T" then
    return "Modify Reject Reason: Routing Order Would Trade Through An Away Destination (T)"
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
  if value == "l" then
    return "Modify Reject Reason: Large In Scale (l)"
  end
  if value == "m" then
    return "Modify Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Modify Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "p" then
    return "Modify Reject Reason: Static Collar Breach (p)"
  end
  if value == "r" then
    return "Modify Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Modify Reject Reason: Risk Management Symbol Level (s)"
  end
  if value == "x" then
    return "Modify Reject Reason: Crossed Market (x)"
  end
  if value == "v" then
    return "Modify Reject Reason: Mi Fid Ii Double Cap Related (v)"
  end
  if value == "y" then
    return "Modify Reject Reason: Order Received By Cboe During Replay (y)"
  end

  return "Modify Reject Reason: Unknown("..value..")"
end

-- Dissect: Modify Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- No Sides
cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides = {}

-- Size: No Sides
cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides.size = 1

-- Display: No Sides
cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides.display = function(value)
  return "No Sides: "..value
end

-- Dissect: No Sides
cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.no_sides, range, value, display)

  return offset + length, value
end

-- No Unspecified Unit Replay
cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_unspecified_unit_replay = {}

-- Size: No Unspecified Unit Replay
cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_unspecified_unit_replay.size = 1

-- Display: No Unspecified Unit Replay
cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_unspecified_unit_replay.display = function(value)
  return "No Unspecified Unit Replay: "..value
end

-- Dissect: No Unspecified Unit Replay
cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_unspecified_unit_replay.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_unspecified_unit_replay.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_unspecified_unit_replay.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.no_unspecified_unit_replay, range, value, display)

  return offset + length, value
end

-- Number Of Cancel Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_cancel_order_v_2_bitfields = {}

-- Size: Number Of Cancel Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_cancel_order_v_2_bitfields.size = 1

-- Display: Number Of Cancel Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_cancel_order_v_2_bitfields.display = function(value)
  return "Number Of Cancel Order V 2 Bitfields: "..value
end

-- Dissect: Number Of Cancel Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_cancel_order_v_2_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_cancel_order_v_2_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_cancel_order_v_2_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_cancel_order_v_2_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Modify Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_modify_order_v_2_bitfields = {}

-- Size: Number Of Modify Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_modify_order_v_2_bitfields.size = 1

-- Display: Number Of Modify Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_modify_order_v_2_bitfields.display = function(value)
  return "Number Of Modify Order V 2 Bitfields: "..value
end

-- Dissect: Number Of Modify Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_modify_order_v_2_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_modify_order_v_2_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_modify_order_v_2_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_modify_order_v_2_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of New Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_new_order_v_2_bitfields = {}

-- Size: Number Of New Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_new_order_v_2_bitfields.size = 1

-- Display: Number Of New Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_new_order_v_2_bitfields.display = function(value)
  return "Number Of New Order V 2 Bitfields: "..value
end

-- Dissect: Number Of New Order V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_new_order_v_2_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_new_order_v_2_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_new_order_v_2_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_new_order_v_2_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Param Groups
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_param_groups = {}

-- Size: Number Of Param Groups
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_param_groups.size = 1

-- Display: Number Of Param Groups
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_param_groups.display = function(value)
  return "Number Of Param Groups: "..value
end

-- Dissect: Number Of Param Groups
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_param_groups.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_param_groups.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_param_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_param_groups, range, value, display)

  return offset + length, value
end

-- Number Of Purge Orders V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_purge_orders_v_2_bitfields = {}

-- Size: Number Of Purge Orders V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_purge_orders_v_2_bitfields.size = 1

-- Display: Number Of Purge Orders V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_purge_orders_v_2_bitfields.display = function(value)
  return "Number Of Purge Orders V 2 Bitfields: "..value
end

-- Dissect: Number Of Purge Orders V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_purge_orders_v_2_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_purge_orders_v_2_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_purge_orders_v_2_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_purge_orders_v_2_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Return Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields = {}

-- Size: Number Of Return Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.size = 1

-- Display: Number Of Return Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.display = function(value)
  return "Number Of Return Bitfields: "..value
end

-- Dissect: Number Of Return Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_return_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Trade Capture Report V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_trade_capture_report_v_2_bitfields = {}

-- Size: Number Of Trade Capture Report V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_trade_capture_report_v_2_bitfields.size = 1

-- Display: Number Of Trade Capture Report V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_trade_capture_report_v_2_bitfields.display = function(value)
  return "Number Of Trade Capture Report V 2 Bitfields: "..value
end

-- Dissect: Number Of Trade Capture Report V 2 Bitfields
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_trade_capture_report_v_2_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_trade_capture_report_v_2_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_trade_capture_report_v_2_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_trade_capture_report_v_2_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Units
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_units = {}

-- Size: Number Of Units
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_units.size = 1

-- Display: Number Of Units
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type = {}

-- Size: Ord Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.size = 1

-- Display: Ord Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.display = function(value)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Category
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_category = {}

-- Size: Order Category
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_category.size = 1

-- Display: Order Category
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_category.display = function(value)
  if value == 0 then
    return "Order Category: Not A Negotiated Trade (0)"
  end
  if value == 3 then
    return "Order Category: Privately Negotiated Trade (3)"
  end

  return "Order Category: Unknown("..value..")"
end

-- Dissect: Order Category
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_category.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_category, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_id = {}

-- Size: Order Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_id.size = 8

-- Display: Order Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Origination
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination = {}

-- Size: Order Origination
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.size = 1

-- Display: Order Origination
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.display = function(value)
  if value == "5" then
    return "Order Origination: Dea Indicates Dea Activity As Deemed By Mi Fid Ii (5)"
  end
  if value == "0" then
    return "Order Origination: Non Dea (0)"
  end

  return "Order Origination: Unknown("..value..")"
end

-- Dissect: Order Origination
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_origination, range, value, display)

  return offset + length, value
end

-- Order Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty = {}

-- Size: Order Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.size = 4

-- Display: Order Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_reject_reason.display = function(value)
  if value == "A" then
    return "Order Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Order Reject Reason: Duplicate Identifier (D)"
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
  if value == "k" then
    return "Order Reject Reason: Pending Periodic Auction (k)"
  end
  if value == "L" then
    return "Order Reject Reason: Price Exceeds Cross Range (L)"
  end
  if value == "M" then
    return "Order Reject Reason: Liquidity Available Exceeds Order Size (M)"
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
  if value == "T" then
    return "Order Reject Reason: Routing Order Would Trade Through An Away Destination (T)"
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
  if value == "l" then
    return "Order Reject Reason: Large In Scale (l)"
  end
  if value == "m" then
    return "Order Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Order Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "p" then
    return "Order Reject Reason: Static Collar Breach (p)"
  end
  if value == "r" then
    return "Order Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Order Reject Reason: Risk Management Symbol Level (s)"
  end
  if value == "x" then
    return "Order Reject Reason: Crossed Market (x)"
  end
  if value == "v" then
    return "Order Reject Reason: Mi Fid Ii Double Cap Related (v)"
  end
  if value == "y" then
    return "Order Reject Reason: Order Received By Cboe During Replay (y)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Orig Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_time = {}

-- Size: Orig Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_time.size = 8

-- Display: Orig Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Orig Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Orig Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Param Group Length
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_length = {}

-- Size: Param Group Length
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_length.size = 2

-- Display: Param Group Length
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_length.display = function(value)
  return "Param Group Length: "..value
end

-- Dissect: Param Group Length
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.param_group_length, range, value, display)

  return offset + length, value
end

-- Param Group Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_type = {}

-- Size: Param Group Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_type.size = 1

-- Display: Param Group Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_type.display = function(value)
  return "Param Group Type: "..value
end

-- Dissect: Param Group Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.param_group_type, range, value, display)

  return offset + length, value
end

-- Party Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_id = {}

-- Size: Party Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_id.size = 4

-- Display: Party Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id: No Value"
  end

  return "Party Id: "..value
end

-- Dissect: Party Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_id.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.party_id, range, value, display)

  return offset + length, value
end

-- Party Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_role = {}

-- Size: Party Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_role.size = 1

-- Display: Party Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_role.display = function(value)
  if value == "1" then
    return "Party Role: Executing Firm (1)"
  end
  if value == "2" then
    return "Party Role: Entering Firm (2)"
  end
  if value == "3" then
    return "Party Role: Contra Firm (3)"
  end

  return "Party Role: Unknown("..value..")"
end

-- Dissect: Party Role
cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_role.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_role.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.party_role, range, value, display)

  return offset + length, value
end

-- Password
cboe_cxeequities_binaryorderentry_boe_v2_0_83.password = {}

-- Size: Password
cboe_cxeequities_binaryorderentry_boe_v2_0_83.password.size = 10

-- Display: Password
cboe_cxeequities_binaryorderentry_boe_v2_0_83.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
cboe_cxeequities_binaryorderentry_boe_v2_0_83.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.password.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Difference
cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference = {}

-- Size: Peg Difference
cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.size = 8

-- Display: Peg Difference
cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.display = function(value)
  return "Peg Difference: "..value
end

-- Translate: Peg Difference
cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Peg Difference
cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.translate(raw)
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.peg_difference, range, value, display)

  return offset + length, value
end

-- Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.price = {}

-- Size: Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.size = 8

-- Display: Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.translate(raw)
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.price, range, value, display)

  return offset + length, value
end

-- Price Formation
cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation = {}

-- Size: Price Formation
cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation.size = 1

-- Display: Price Formation
cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation.display = function(value)
  if value == "3" then
    return "Price Formation: Negotiated Trade Subject To Conditions Other Than The (3)"
  end
  if value == "T" then
    return "Price Formation: Non Price Forming Trade (T)"
  end

  return "Price Formation: Unknown("..value..")"
end

-- Dissect: Price Formation
cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.price_formation, range, value, display)

  return offset + length, value
end

-- Purge Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_reject_reason = {}

-- Size: Purge Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_reject_reason.size = 1

-- Display: Purge Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_reject_reason.display = function(value)
  if value == "A" then
    return "Purge Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Purge Reject Reason: Duplicate Identifier (D)"
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
  if value == "k" then
    return "Purge Reject Reason: Pending Periodic Auction (k)"
  end
  if value == "L" then
    return "Purge Reject Reason: Price Exceeds Cross Range (L)"
  end
  if value == "M" then
    return "Purge Reject Reason: Liquidity Available Exceeds Order Size (M)"
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
  if value == "T" then
    return "Purge Reject Reason: Routing Order Would Trade Through An Away Destination (T)"
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
  if value == "l" then
    return "Purge Reject Reason: Large In Scale (l)"
  end
  if value == "m" then
    return "Purge Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Purge Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "p" then
    return "Purge Reject Reason: Static Collar Breach (p)"
  end
  if value == "r" then
    return "Purge Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Purge Reject Reason: Risk Management Symbol Level (s)"
  end
  if value == "x" then
    return "Purge Reject Reason: Crossed Market (x)"
  end
  if value == "v" then
    return "Purge Reject Reason: Mi Fid Ii Double Cap Related (v)"
  end
  if value == "y" then
    return "Purge Reject Reason: Order Received By Cboe During Replay (y)"
  end

  return "Purge Reject Reason: Unknown("..value..")"
end

-- Dissect: Purge Reject Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.reason = {}

-- Size: Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.reason.size = 1

-- Display: Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.reason.display = function(value)
  if value == "A" then
    return "Reason: Admin (A)"
  end
  if value == "D" then
    return "Reason: Duplicate Identifier (D)"
  end
  if value == "H" then
    return "Reason: Halted (H)"
  end
  if value == "I" then
    return "Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "k" then
    return "Reason: Pending Periodic Auction (k)"
  end
  if value == "L" then
    return "Reason: Price Exceeds Cross Range (L)"
  end
  if value == "M" then
    return "Reason: Liquidity Available Exceeds Order Size (M)"
  end
  if value == "N" then
    return "Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Reason: Routing Unavailable (R)"
  end
  if value == "T" then
    return "Reason: Routing Order Would Trade Through An Away Destination (T)"
  end
  if value == "U" then
    return "Reason: User Requested (U)"
  end
  if value == "V" then
    return "Reason: Would Wash (V)"
  end
  if value == "W" then
    return "Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Reason: Unforeseen Reason (Z)"
  end
  if value == "l" then
    return "Reason: Large In Scale (l)"
  end
  if value == "m" then
    return "Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "p" then
    return "Reason: Static Collar Breach (p)"
  end
  if value == "r" then
    return "Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Reason: Risk Management Symbol Level (s)"
  end
  if value == "x" then
    return "Reason: Crossed Market (x)"
  end
  if value == "v" then
    return "Reason: Mi Fid Ii Double Cap Related (v)"
  end
  if value == "y" then
    return "Reason: Order Received By Cboe During Replay (y)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.reason, range, value, display)

  return offset + length, value
end

-- Report Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.report_time = {}

-- Size: Report Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.report_time.size = 8

-- Display: Report Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.report_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Report Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Report Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.report_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.report_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.report_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.report_time, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1 = {}

-- Size: Reserved 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.size = 1

-- Display: Reserved 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Restatement Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.restatement_reason = {}

-- Size: Restatement Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.restatement_reason.size = 1

-- Display: Restatement Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.restatement_reason.display = function(value)
  if value == "R" then
    return "Restatement Reason: Reroute (R)"
  end
  if value == "X" then
    return "Restatement Reason: Locked In Cross (X)"
  end
  if value == "W" then
    return "Restatement Reason: Wash (W)"
  end
  if value == "L" then
    return "Restatement Reason: Reload (L)"
  end
  if value == "Q" then
    return "Restatement Reason: Liquidity Updated (Q)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_cxeequities_binaryorderentry_boe_v2_0_83.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Risk Reset
cboe_cxeequities_binaryorderentry_boe_v2_0_83.risk_reset = {}

-- Size: Risk Reset
cboe_cxeequities_binaryorderentry_boe_v2_0_83.risk_reset.size = 8

-- Display: Risk Reset
cboe_cxeequities_binaryorderentry_boe_v2_0_83.risk_reset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Risk Reset: No Value"
  end

  return "Risk Reset: "..value
end

-- Dissect: Risk Reset
cboe_cxeequities_binaryorderentry_boe_v2_0_83.risk_reset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.risk_reset.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.risk_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.risk_reset, range, value, display)

  return offset + length, value
end

-- Routing Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.routing_inst = {}

-- Size: Routing Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.routing_inst.size = 4

-- Display: Routing Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.routing_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Routing Inst: No Value"
  end

  return "Routing Inst: "..value
end

-- Dissect: Routing Inst
cboe_cxeequities_binaryorderentry_boe_v2_0_83.routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.routing_inst.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.routing_inst, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id = {}

-- Size: Secondary Order Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.size = 8

-- Display: Secondary Order Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Secondary Trd Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_trd_type = {}

-- Size: Secondary Trd Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_trd_type.size = 1

-- Display: Secondary Trd Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_trd_type.display = function(value)
  return "Secondary Trd Type: "..value
end

-- Dissect: Secondary Trd Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_trd_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_trd_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_trd_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.secondary_trd_type, range, value, display)

  return offset + length, value
end

-- Security Exchange
cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange = {}

-- Size: Security Exchange
cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.size = 4

-- Display: Security Exchange
cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Security Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id = {}

-- Size: Security Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.size = 16

-- Display: Security Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.security_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.sequence_number = {}

-- Size: Sequence Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.sequence_number.size = 4

-- Display: Sequence Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.session_sub_id = {}

-- Size: Session Sub Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.session_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Sub Id: No Value"
  end

  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.session_sub_id.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Settlement Currency
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_currency = {}

-- Size: Settlement Currency
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_currency.size = 3

-- Display: Settlement Currency
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settlement Currency: No Value"
  end

  return "Settlement Currency: "..value
end

-- Dissect: Settlement Currency
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_currency.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.settlement_currency, range, value, display)

  return offset + length, value
end

-- Settlement Date
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_date = {}

-- Size: Settlement Date
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_date.size = 8

-- Display: Settlement Date
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_date.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Settlement Date: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Settlement Date
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Settlement Location
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_location = {}

-- Size: Settlement Location
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_location.size = 2

-- Display: Settlement Location
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_location.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settlement Location: No Value"
  end

  return "Settlement Location: "..value
end

-- Dissect: Settlement Location
cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_location.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_location.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_location.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.settlement_location, range, value, display)

  return offset + length, value
end

-- Side
cboe_cxeequities_binaryorderentry_boe_v2_0_83.side = {}

-- Size: Side
cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.size = 1

-- Display: Side
cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.display = function(value)
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
  if value == "H" then
    return "Side: Sell Undisclosed (H)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.start_of_message = {}

-- Size: Start Of Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.start_of_message.size = 2

-- Display: Start Of Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Sub Liquidity Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.sub_liquidity_indicator = {}

-- Size: Sub Liquidity Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.sub_liquidity_indicator.size = 1

-- Display: Sub Liquidity Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.sub_liquidity_indicator.display = function(value)
  if value == "D" then
    return "Sub Liquidity Indicator: Cboe Dark Pool Execution (D)"
  end
  if value == "T" then
    return "Sub Liquidity Indicator: Removed Liquidity From The Cboe Dark Pool By Ioc Order (T)"
  end
  if value == "H" then
    return "Sub Liquidity Indicator: Trade Added Hidden Liquidity (H)"
  end
  if value == "I" then
    return "Sub Liquidity Indicator: Trade Added Hidden Liquidity That Was Price Improved (I)"
  end
  if value == "K" then
    return "Sub Liquidity Indicator: Add Liquidity From Hidden Reserve (K)"
  end
  if value == "P" then
    return "Sub Liquidity Indicator: Periodic Auction (P)"
  end
  if value == "C" then
    return "Sub Liquidity Indicator: Cboe Closing Cross (C)"
  end
  if value == "S" then
    return "Sub Liquidity Indicator: Liquidity Alps Bbo (S)"
  end
  if value == "O" then
    return "Sub Liquidity Indicator: Open Auction (O)"
  end
  if value == "L" then
    return "Sub Liquidity Indicator: Close Auction (L)"
  end
  if value == "A" then
    return "Sub Liquidity Indicator: Halt Auction (A)"
  end
  if value == "V" then
    return "Sub Liquidity Indicator: Volatility Auction (V)"
  end
  if value == "R" then
    return "Sub Liquidity Indicator: Carried (R)"
  end
  if value == "F" then
    return "Sub Liquidity Indicator: Done For Day (F)"
  end

  return "Sub Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.sub_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.sub_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.sub_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol = {}

-- Size: Symbol
cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.size = 8

-- Display: Symbol
cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tertiary Trd Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.tertiary_trd_type = {}

-- Size: Tertiary Trd Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.tertiary_trd_type.size = 1

-- Display: Tertiary Trd Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.tertiary_trd_type.display = function(value)
  return "Tertiary Trd Type: "..value
end

-- Dissect: Tertiary Trd Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.tertiary_trd_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.tertiary_trd_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.tertiary_trd_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.tertiary_trd_type, range, value, display)

  return offset + length, value
end

-- Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.text = {}

-- Size: Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.size = 60

-- Display: Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force = {}

-- Size: Time In Force
cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.size = 1

-- Display: Time In Force
cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.display = function(value)
  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "1" then
    return "Time In Force: Gtc (1)"
  end
  if value == "2" then
    return "Time In Force: At The Open (2)"
  end
  if value == "3" then
    return "Time In Force: Ioc (3)"
  end
  if value == "6" then
    return "Time In Force: Gtd (6)"
  end
  if value == "7" then
    return "Time In Force: At The Close (7)"
  end
  if value == "8" then
    return "Time In Force: Good For Auction (8)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Tolerance
cboe_cxeequities_binaryorderentry_boe_v2_0_83.tolerance = {}

-- Size: Tolerance
cboe_cxeequities_binaryorderentry_boe_v2_0_83.tolerance.size = 2

-- Display: Tolerance
cboe_cxeequities_binaryorderentry_boe_v2_0_83.tolerance.display = function(value)
  return "Tolerance: "..value
end

-- Dissect: Tolerance
cboe_cxeequities_binaryorderentry_boe_v2_0_83.tolerance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.tolerance.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.tolerance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.tolerance, range, value, display)

  return offset + length, value
end

-- Trade Handling Instruction
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_handling_instruction = {}

-- Size: Trade Handling Instruction
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_handling_instruction.size = 1

-- Display: Trade Handling Instruction
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_handling_instruction.display = function(value)
  return "Trade Handling Instruction: "..value
end

-- Dissect: Trade Handling Instruction
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_handling_instruction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_handling_instruction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_handling_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_handling_instruction, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_id = {}

-- Size: Trade Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_id.size = 8

-- Display: Trade Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Link Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_link_id = {}

-- Size: Trade Link Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_link_id.size = 1

-- Display: Trade Link Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_link_id.display = function(value)
  return "Trade Link Id: "..value
end

-- Dissect: Trade Link Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_link_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_link_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_link_id, range, value, display)

  return offset + length, value
end

-- Trade Price Condition
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_price_condition = {}

-- Size: Trade Price Condition
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_price_condition.size = 1

-- Display: Trade Price Condition
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_price_condition.display = function(value)
  return "Trade Price Condition: "..value
end

-- Dissect: Trade Price Condition
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_price_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_price_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_price_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_price_condition, range, value, display)

  return offset + length, value
end

-- Trade Publish Ind
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_ind = {}

-- Size: Trade Publish Ind
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_ind.size = 1

-- Display: Trade Publish Ind
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_ind.display = function(value)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_ind.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_ind.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_publish_ind, range, value, display)

  return offset + length, value
end

-- Trade Publish Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_indicator = {}

-- Size: Trade Publish Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_indicator.size = 1

-- Display: Trade Publish Indicator
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_indicator.display = function(value)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_publish_indicator, range, value, display)

  return offset + length, value
end

-- Trade Report Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id = {}

-- Size: Trade Report Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id.size = 20

-- Display: Trade Report Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Report Id: No Value"
  end

  return "Trade Report Id: "..value
end

-- Dissect: Trade Report Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_report_id, range, value, display)

  return offset + length, value
end

-- Trade Report Ref Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_ref_id = {}

-- Size: Trade Report Ref Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_ref_id.size = 20

-- Display: Trade Report Ref Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_ref_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Report Ref Id: No Value"
  end

  return "Trade Report Ref Id: "..value
end

-- Dissect: Trade Report Ref Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_ref_id.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_report_ref_id, range, value, display)

  return offset + length, value
end

-- Trade Report Trans Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_trans_type = {}

-- Size: Trade Report Trans Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_trans_type.size = 1

-- Display: Trade Report Trans Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_trans_type.display = function(value)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_trans_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_report_trans_type, range, value, display)

  return offset + length, value
end

-- Trade Report Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type = {}

-- Size: Trade Report Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type.size = 1

-- Display: Trade Report Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type.display = function(value)
  if value == 0 then
    return "Trade Report Type: Submit For All New Trade Reports (0)"
  end
  if value == 6 then
    return "Trade Report Type: Trade Report Cancel To Cancel Any Acknowledged But (6)"
  end

  return "Trade Report Type: Unknown("..value..")"
end

-- Dissect: Trade Report Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_report_type, range, value, display)

  return offset + length, value
end

-- Trade Report Type Return
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type_return = {}

-- Size: Trade Report Type Return
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type_return.size = 2

-- Display: Trade Report Type Return
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type_return.display = function(value)
  return "Trade Report Type Return: "..value
end

-- Dissect: Trade Report Type Return
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type_return.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type_return.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type_return.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_report_type_return, range, value, display)

  return offset + length, value
end

-- Trade Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_time = {}

-- Size: Trade Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_time.size = 8

-- Display: Trade Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trade Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trade Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trading_session_sub_id.display = function(value)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Transaction Category
cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_category = {}

-- Size: Transaction Category
cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_category.size = 1

-- Display: Transaction Category
cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_category.display = function(value)
  if value == "P" then
    return "Transaction Category: Regular Trade (P)"
  end
  if value == "O" then
    return "Transaction Category: Portfolio Trade (O)"
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time = {}

-- Size: Transaction Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.size = 8

-- Display: Transaction Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Trd Sub Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_sub_type = {}

-- Size: Trd Sub Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_sub_type.size = 1

-- Display: Trd Sub Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_sub_type.display = function(value)
  return "Trd Sub Type: "..value
end

-- Dissect: Trd Sub Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trd_sub_type, range, value, display)

  return offset + length, value
end

-- Unit Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_number = {}

-- Size: Unit Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_number.size = 1

-- Display: Unit Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Unit Sequence
cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_sequence = {}

-- Size: Unit Sequence
cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_sequence.size = 4

-- Display: Unit Sequence
cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_sequence.display = function(value)
  return "Unit Sequence: "..value
end

-- Dissect: Unit Sequence
cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.unit_sequence, range, value, display)

  return offset + length, value
end

-- Username
cboe_cxeequities_binaryorderentry_boe_v2_0_83.username = {}

-- Size: Username
cboe_cxeequities_binaryorderentry_boe_v2_0_83.username.size = 4

-- Display: Username
cboe_cxeequities_binaryorderentry_boe_v2_0_83.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
cboe_cxeequities_binaryorderentry_boe_v2_0_83.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.username.size
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

  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.username, range, value, display)

  return offset + length, value
end

-- Venue Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.venue_type = {}

-- Size: Venue Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.venue_type.size = 1

-- Display: Venue Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.venue_type.display = function(value)
  return "Venue Type: "..value
end

-- Dissect: Venue Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.venue_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.venue_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.venue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.venue_type, range, value, display)

  return offset + length, value
end

-- Waiver Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type = {}

-- Size: Waiver Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.size = 1

-- Display: Waiver Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.display = function(value)
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
  if value == "3" then
    return "Waiver Type: Reference Price (3)"
  end
  if value == "A" then
    return "Waiver Type: Order Management Facility (A)"
  end
  if value == "8" then
    return "Waiver Type: Negotiated Trade Subject To A Pre Trade Transparency (8)"
  end
  if value == "c" then
    return "Waiver Type: Negotiated Trade That Is Large In Scale Subject To A Pre (c)"
  end
  if value == "9" then
    return "Waiver Type: Large In Scale (9)"
  end

  return "Waiver Type: Unknown("..value..")"
end

-- Dissect: Waiver Type
cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.waiver_type, range, value, display)

  return offset + length, value
end

-- Working Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price = {}

-- Size: Working Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.size = 8

-- Display: Working Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.translate(raw)
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CxeEquities BinaryOrderEntry Boe 2.0.83
-----------------------------------------------------------------------

-- Trd Cap Ack Side Grp
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp = {}

-- Size: Trd Cap Ack Side Grp
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.size =
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_id.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_role.size

-- Display: Trd Cap Ack Side Grp
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trd Cap Ack Side Grp
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.fields = function(buffer, offset, packet, parent, trd_cap_ack_side_grp_index)
  local index = offset

  -- Implicit Trd Cap Ack Side Grp Index
  if trd_cap_ack_side_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trd_cap_ack_side_grp_index, trd_cap_ack_side_grp_index)
    iteration:set_generated()
  end

  -- Side: Alphanumeric
  index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)

  -- Party Id: Alpha
  index, party_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_id.dissect(buffer, index, packet, parent)

  -- Party Role: Alphanumeric
  index, party_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trd Cap Ack Side Grp
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.dissect = function(buffer, offset, packet, parent, trd_cap_ack_side_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trd_cap_ack_side_grp, buffer(offset, 0))
    local index = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.fields(buffer, offset, packet, parent, trd_cap_ack_side_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.fields(buffer, offset, packet, parent, trd_cap_ack_side_grp_index)
  end
end

-- Return Bitfield 19
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19 = {}

-- Size: Return Bitfield 19
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.size = 1

-- Display: Return Bitfield 19
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.bits = function(range, value, packet, parent)

  -- Return Bitfield 19 Reserved 1: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_1, range, value)

  -- Return Bitfield 19 Reserved 2: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_2, range, value)

  -- Return Bitfield 19 Reserved 4: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_4, range, value)

  -- Return Bitfield 19 Reserved 8: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_8, range, value)

  -- Return Bitfield 19 Intra Firm Trade Ind: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_intra_firm_trade_ind, range, value)

  -- Return Bitfield 19 Reserved 32: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_32, range, value)

  -- Return Bitfield 19 Reserved 64: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_64, range, value)

  -- Return Bitfield 19 Reserved 128: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19_reserved_128, range, value)
end

-- Dissect: Return Bitfield 19
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_19, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 18
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18 = {}

-- Size: Return Bitfield 18
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.size = 1

-- Display: Return Bitfield 18
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.bits = function(range, value, packet, parent)

  -- Return Bitfield 18 Account Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_account_type, range, value)

  -- Return Bitfield 18 Cross Initiator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_cross_initiator, range, value)

  -- Return Bitfield 18 Subreason: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_subreason, range, value)

  -- Return Bitfield 18 Cross Trade Flag: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_cross_trade_flag, range, value)

  -- Return Bitfield 18 Leg Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_leg_price, range, value)

  -- Return Bitfield 18 Held Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_held_indicator, range, value)

  -- Return Bitfield 18 Locate Broker: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_locate_broker, range, value)

  -- Return Bitfield 18 Multi Juris Reporting Ind: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18_multi_juris_reporting_ind, range, value)
end

-- Dissect: Return Bitfield 18
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_18, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 17
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17 = {}

-- Size: Return Bitfield 17
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.size = 1

-- Display: Return Bitfield 17
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.bits = function(range, value, packet, parent)

  -- Return Bitfield 17 Price Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_price_type, range, value)

  -- Return Bitfield 17 Strategy Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_strategy_id, range, value)

  -- Return Bitfield 17 Trading Session Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_trading_session_id, range, value)

  -- Return Bitfield 17 Trade Through Alert Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_trade_through_alert_type, range, value)

  -- Return Bitfield 17 Sender Location Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_sender_location_id, range, value)

  -- Return Bitfield 17 Floor Trader Acronym: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_floor_trader_acronym, range, value)

  -- Return Bitfield 17 Exec Leg Cfi Code: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_exec_leg_cfi_code, range, value)

  -- Return Bitfield 17 Cust Order Handling Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17_cust_order_handling_inst, range, value)
end

-- Dissect: Return Bitfield 17
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_17, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 16
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16 = {}

-- Size: Return Bitfield 16
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.size = 1

-- Display: Return Bitfield 16
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.bits = function(range, value, packet, parent)

  -- Return Bitfield 16 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_frequent_trader_id, range, value)

  -- Return Bitfield 16 Session Eligibility: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_session_eligibility, range, value)

  -- Return Bitfield 16 Combo Order: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_combo_order, range, value)

  -- Return Bitfield 16 Compression: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_compression, range, value)

  -- Return Bitfield 16 Floor Destination: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_floor_destination, range, value)

  -- Return Bitfield 16 Floor Routing Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_floor_routing_inst, range, value)

  -- Return Bitfield 16 Multi Class Spread: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_multi_class_spread, range, value)

  -- Return Bitfield 16 Order Origin: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16_order_origin, range, value)
end

-- Dissect: Return Bitfield 16
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_16, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 15
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15 = {}

-- Size: Return Bitfield 15
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.size = 1

-- Display: Return Bitfield 15
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.bits = function(range, value, packet, parent)

  -- Return Bitfield 15 Trade Reporting Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_trade_reporting_indicator, range, value)

  -- Return Bitfield 15 Equity Party Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_equity_party_id, range, value)

  -- Return Bitfield 15 Equity Nbbo Protect: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_equity_nbbo_protect, range, value)

  -- Return Bitfield 15 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_mass_cancel_id, range, value)

  -- Return Bitfield 15 Trade Publish Ind: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_trade_publish_ind, range, value)

  -- Return Bitfield 15 Report Time: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_report_time, range, value)

  -- Return Bitfield 15 Leg Symbol Sfx: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_leg_symbol_sfx, range, value)

  -- Return Bitfield 15 Client Id Attr: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15_client_id_attr, range, value)
end

-- Dissect: Return Bitfield 15
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_15, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 14
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14 = {}

-- Size: Return Bitfield 14
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.size = 1

-- Display: Return Bitfield 14
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.bits = function(range, value, packet, parent)

  -- Return Bitfield 14 Leg Cfi Code: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_leg_cfi_code, range, value)

  -- Return Bitfield 14 Leg Maturity Date: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_leg_maturity_date, range, value)

  -- Return Bitfield 14 Leg Strike Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_leg_strike_price, range, value)

  -- Return Bitfield 14 Quote Room Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_quote_room_id, range, value)

  -- Return Bitfield 14 Secondary Exec Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_secondary_exec_id, range, value)

  -- Return Bitfield 14 User Request Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_user_request_id, range, value)

  -- Return Bitfield 14 Username: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_username, range, value)

  -- Return Bitfield 14 User Status: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14_user_status, range, value)
end

-- Dissect: Return Bitfield 14
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_14, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 13
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13 = {}

-- Size: Return Bitfield 13
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.size = 1

-- Display: Return Bitfield 13
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.bits = function(range, value, packet, parent)

  -- Return Bitfield 13 Cum Qty: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_cum_qty, range, value)

  -- Return Bitfield 13 Day Order Qty: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_day_order_qty, range, value)

  -- Return Bitfield 13 Day Cum Qty: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_day_cum_qty, range, value)

  -- Return Bitfield 13 Avg Px: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_avg_px, range, value)

  -- Return Bitfield 13 Day Avg Px: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_day_avg_px, range, value)

  -- Return Bitfield 13 Pending Status: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_pending_status, range, value)

  -- Return Bitfield 13 Drill Thru Protection: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_drill_thru_protection, range, value)

  -- Return Bitfield 13 Multileg Reporting Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13_multileg_reporting_type, range, value)
end

-- Dissect: Return Bitfield 13
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_13, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 12
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12 = {}

-- Size: Return Bitfield 12
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.size = 1

-- Display: Return Bitfield 12
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.bits = function(range, value, packet, parent)

  -- Return Bitfield 12 Cti Code: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_cti_code, range, value)

  -- Return Bitfield 12 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_manual_order_indicator, range, value)

  -- Return Bitfield 12 Operator Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_operator_id, range, value)

  -- Return Bitfield 12 Trade Date: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_trade_date, range, value)

  -- Return Bitfield 12 Clearing Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_clearing_price, range, value)

  -- Return Bitfield 12 Clearing Size: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_clearing_size, range, value)

  -- Return Bitfield 12 Clearing Symbol: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_clearing_symbol, range, value)

  -- Return Bitfield 12 Clearing Optional Data: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12_clearing_optional_data, range, value)
end

-- Dissect: Return Bitfield 12
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_12, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 11
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11 = {}

-- Size: Return Bitfield 11
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.size = 1

-- Display: Return Bitfield 11
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.bits = function(range, value, packet, parent)

  -- Return Bitfield 11 Client Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_client_id, range, value)

  -- Return Bitfield 11 Investor Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_investor_id, range, value)

  -- Return Bitfield 11 Executor Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_executor_id, range, value)

  -- Return Bitfield 11 Order Origination: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_order_origination, range, value)

  -- Return Bitfield 11 Algorithmic Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_algorithmic_indicator, range, value)

  -- Return Bitfield 11 Deferral Reason: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_deferral_reason, range, value)

  -- Return Bitfield 11 Investor Qualified Role: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_investor_qualified_role, range, value)

  -- Return Bitfield 11 Executor Qualified Role: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11_executor_qualified_role, range, value)
end

-- Dissect: Return Bitfield 11
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_11, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 10
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10 = {}

-- Size: Return Bitfield 10
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.size = 1

-- Display: Return Bitfield 10
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.bits = function(range, value, packet, parent)

  -- Return Bitfield 10 Cross Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_cross_id, range, value)

  -- Return Bitfield 10 Alloc Qty: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_alloc_qty, range, value)

  -- Return Bitfield 10 Give Up Firm Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_give_up_firm_id, range, value)

  -- Return Bitfield 10 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_routing_firm_id, range, value)

  -- Return Bitfield 10 Waiver Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_waiver_type, range, value)

  -- Return Bitfield 10 Cross Exclusion Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_cross_exclusion_indicator, range, value)

  -- Return Bitfield 10 Price Formation: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_price_formation, range, value)

  -- Return Bitfield 10 Client Qualified Role: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10_client_qualified_role, range, value)
end

-- Dissect: Return Bitfield 10
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_10, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 9
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9 = {}

-- Size: Return Bitfield 9
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.size = 1

-- Display: Return Bitfield 9
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.bits = function(range, value, packet, parent)

  -- Return Bitfield 9 Marketing Fee Code: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_marketing_fee_code, range, value)

  -- Return Bitfield 9 Target Party Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_target_party_id, range, value)

  -- Return Bitfield 9 Auction Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_auction_id, range, value)

  -- Return Bitfield 9 Order Category: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_order_category, range, value)

  -- Return Bitfield 9 Liquidity Provision: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_liquidity_provision, range, value)

  -- Return Bitfield 9 Cmta Number: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_cmta_number, range, value)

  -- Return Bitfield 9 Cross Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_cross_type, range, value)

  -- Return Bitfield 9 Cross Prioritization: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9_cross_prioritization, range, value)
end

-- Dissect: Return Bitfield 9
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_9, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 8
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8 = {}

-- Size: Return Bitfield 8
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.size = 1

-- Display: Return Bitfield 8
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.bits = function(range, value, packet, parent)

  -- Return Bitfield 8 Fee Code: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_fee_code, range, value)

  -- Return Bitfield 8 Echo Text: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_echo_text, range, value)

  -- Return Bitfield 8 Stop Px: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_stop_px, range, value)

  -- Return Bitfield 8 Routing Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_routing_inst, range, value)

  -- Return Bitfield 8 Rout Strategy: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_rout_strategy, range, value)

  -- Return Bitfield 8 Route Delivery Method: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_route_delivery_method, range, value)

  -- Return Bitfield 8 Ex Destination: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_ex_destination, range, value)

  -- Return Bitfield 8 Trade Report Ref Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8_trade_report_ref_id, range, value)
end

-- Dissect: Return Bitfield 8
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_8, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 7
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7 = {}

-- Size: Return Bitfield 7
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.size = 1

-- Display: Return Bitfield 7
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.bits = function(range, value, packet, parent)

  -- Return Bitfield 7 Sub Liquidity Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_sub_liquidity_indicator, range, value)

  -- Return Bitfield 7 Trade Report Type Return: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_trade_report_type_return, range, value)

  -- Return Bitfield 7 Trade Publish Ind Return: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_trade_publish_ind_return, range, value)

  -- Return Bitfield 7 Text: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_text, range, value)

  -- Return Bitfield 7 Bid: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_bid, range, value)

  -- Return Bitfield 7 Offer: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_offer, range, value)

  -- Return Bitfield 7 Large Size: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_large_size, range, value)

  -- Return Bitfield 7 Last Mkt: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7_last_mkt, range, value)
end

-- Dissect: Return Bitfield 7
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_7, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6 = {}

-- Size: Return Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.size = 1

-- Display: Return Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.bits = function(range, value, packet, parent)

  -- Return Bitfield 6 Secondary Order Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_secondary_order_id, range, value)

  -- Return Bitfield 6 Ccp: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_ccp, range, value)

  -- Return Bitfield 6 Contra Capacity: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_contra_capacity, range, value)

  -- Return Bitfield 6 Attributed Quote: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_attributed_quote, range, value)

  -- Return Bitfield 6 Ext Exec Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_ext_exec_inst, range, value)

  -- Return Bitfield 6 Bulk Order Ids: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_bulk_order_ids, range, value)

  -- Return Bitfield 6 Bulk Reject Reasons: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_bulk_reject_reasons, range, value)

  -- Return Bitfield 6 Party Role: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6_party_role, range, value)
end

-- Dissect: Return Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_6, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5 = {}

-- Size: Return Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.size = 1

-- Display: Return Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.bits = function(range, value, packet, parent)

  -- Return Bitfield 5 Orig Cl Ord Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_orig_cl_ord_id, range, value)

  -- Return Bitfield 5 Leaves Qty: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_leaves_qty, range, value)

  -- Return Bitfield 5 Last Shares: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_last_shares, range, value)

  -- Return Bitfield 5 Last Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_last_price, range, value)

  -- Return Bitfield 5 Display Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_display_price, range, value)

  -- Return Bitfield 5 Working Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_working_price, range, value)

  -- Return Bitfield 5 Base Liquidity Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_base_liquidity_indicator, range, value)

  -- Return Bitfield 5 Expire Time: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5_expire_time, range, value)
end

-- Dissect: Return Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_5, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4 = {}

-- Size: Return Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.size = 1

-- Display: Return Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.bits = function(range, value, packet, parent)

  -- Return Bitfield 4 Maturity Date: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_maturity_date, range, value)

  -- Return Bitfield 4 Strike Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_strike_price, range, value)

  -- Return Bitfield 4 Put Or Call: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_put_or_call, range, value)

  -- Return Bitfield 4 Open Close: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_open_close, range, value)

  -- Return Bitfield 4 Cl Ord Id Batch: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_cl_ord_id_batch, range, value)

  -- Return Bitfield 4 Corrected Size: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_corrected_size, range, value)

  -- Return Bitfield 4 Party Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_party_id, range, value)

  -- Return Bitfield 4 Access Fee: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4_access_fee, range, value)
end

-- Dissect: Return Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_4, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3 = {}

-- Size: Return Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.size = 1

-- Display: Return Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.bits = function(range, value, packet, parent)

  -- Return Bitfield 3 Account: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_account, range, value)

  -- Return Bitfield 3 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_clearing_firm, range, value)

  -- Return Bitfield 3 Clearing Account: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_clearing_account, range, value)

  -- Return Bitfield 3 Display Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_display_indicator, range, value)

  -- Return Bitfield 3 Max Floor: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_max_floor, range, value)

  -- Return Bitfield 3 Discretion Amount: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_discretion_amount, range, value)

  -- Return Bitfield 3 Order Qty: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_order_qty, range, value)

  -- Return Bitfield 3 Prevent Match: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3_prevent_match, range, value)
end

-- Dissect: Return Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_3, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2 = {}

-- Size: Return Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.size = 1

-- Display: Return Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.display = function(range, value, packet, parent)
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
  -- Is Return Bitfield 2 Contra Trader flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Contra Trader"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.bits = function(range, value, packet, parent)

  -- Return Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_symbol, range, value)

  -- Return Bitfield 2 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_symbol_sfx, range, value)

  -- Return Bitfield 2 Currency: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_currency, range, value)

  -- Return Bitfield 2 Id Source: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_id_source, range, value)

  -- Return Bitfield 2 Security Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_security_id, range, value)

  -- Return Bitfield 2 Security Exchange: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_security_exchange, range, value)

  -- Return Bitfield 2 Capacity: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_capacity, range, value)

  -- Return Bitfield 2 Contra Trader: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2_contra_trader, range, value)
end

-- Dissect: Return Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_2, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1 = {}

-- Size: Return Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.size = 1

-- Display: Return Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.bits = function(range, value, packet, parent)

  -- Return Bitfield 1 Side: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_side, range, value)

  -- Return Bitfield 1 Peg Difference: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_peg_difference, range, value)

  -- Return Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_price, range, value)

  -- Return Bitfield 1 Exec Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_exec_inst, range, value)

  -- Return Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_ord_type, range, value)

  -- Return Bitfield 1 Time In Force: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_time_in_force, range, value)

  -- Return Bitfield 1 Min Qty: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_min_qty, range, value)

  -- Return Bitfield 1 Max Remove Pct: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1_max_remove_pct, range, value)
end

-- Dissect: Return Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.display(range, value, packet, parent)
  local element = parent:add_le(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.return_bitfield_1, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report Decline V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_decline_v_2_message = {}

-- Read runtime size of: Trade Capture Report Decline V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_decline_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Capture Report Decline V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_decline_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report Decline V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_decline_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_capture_report_decline_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Trade Report Id: Text
  index, trade_report_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: Text
  index, trade_report_ref_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_cxeequities_binaryorderentry_boe_v2_0_83.contra_broker.dissect(buffer, index, packet, parent)

  -- Reason: Text
  index, reason = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- No Sides: Binary
  index, no_sides = cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides.dissect(buffer, index, packet, parent)

  -- Repeating: Trd Cap Ack Side Grp
  for trd_cap_ack_side_grp_index = 1, no_sides do
    index, trd_cap_ack_side_grp = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.dissect(buffer, index, packet, parent, trd_cap_ack_side_grp_index)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Type Return
  local trade_report_type_return = nil

  local trade_report_type_return_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x02) > 0

  if trade_report_type_return_exists then
    index, trade_report_type_return = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type_return.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Formation
  local price_formation = nil

  local price_formation_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x40) > 0

  if price_formation_exists then
    index, price_formation = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Intra Firm Trade Ind
  local intra_firm_trade_ind = nil

  local intra_firm_trade_ind_exists = number_of_return_bitfields >= 19 and bit.band(return_bitfield_19, 0x10) > 0

  if intra_firm_trade_ind_exists then
    index, intra_firm_trade_ind = cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Capture Report Decline V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_decline_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_capture_report_decline_v_2_message)
  local size_of_trade_capture_report_decline_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_decline_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_capture_report_decline_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_decline_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_decline_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_decline_v_2_message)
    parent:set_len(size_of_trade_capture_report_decline_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_decline_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_decline_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_decline_v_2_message)

    return index
  end
end

-- Trade Capture Confirm V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_confirm_v_2_message = {}

-- Read runtime size of: Trade Capture Confirm V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_confirm_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Capture Confirm V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_confirm_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Confirm V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_confirm_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_capture_confirm_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Trade Report Id: Text
  index, trade_report_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: Text
  index, trade_report_ref_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_cxeequities_binaryorderentry_boe_v2_0_83.contra_broker.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- No Sides: Binary
  index, no_sides = cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides.dissect(buffer, index, packet, parent)

  -- Repeating: Trd Cap Ack Side Grp
  for trd_cap_ack_side_grp_index = 1, no_sides do
    index, trd_cap_ack_side_grp = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.dissect(buffer, index, packet, parent, trd_cap_ack_side_grp_index)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Type Return
  local trade_report_type_return = nil

  local trade_report_type_return_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x02) > 0

  if trade_report_type_return_exists then
    index, trade_report_type_return = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type_return.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Fee Code
  local fee_code = nil

  local fee_code_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x01) > 0

  if fee_code_exists then
    index, fee_code = cboe_cxeequities_binaryorderentry_boe_v2_0_83.fee_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Category
  local order_category = nil

  local order_category_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x08) > 0

  if order_category_exists then
    index, order_category = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_category.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Formation
  local price_formation = nil

  local price_formation_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x40) > 0

  if price_formation_exists then
    index, price_formation = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Deferral Reason
  local deferral_reason = nil

  local deferral_reason_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x20) > 0

  if deferral_reason_exists then
    index, deferral_reason = cboe_cxeequities_binaryorderentry_boe_v2_0_83.deferral_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Publish Ind
  local trade_publish_ind = nil

  local trade_publish_ind_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x10) > 0

  if trade_publish_ind_exists then
    index, trade_publish_ind = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_ind.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Report Time
  local report_time = nil

  local report_time_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x20) > 0

  if report_time_exists then
    index, report_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.report_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Intra Firm Trade Ind
  local intra_firm_trade_ind = nil

  local intra_firm_trade_ind_exists = number_of_return_bitfields >= 19 and bit.band(return_bitfield_19, 0x10) > 0

  if intra_firm_trade_ind_exists then
    index, intra_firm_trade_ind = cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Capture Confirm V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_confirm_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_capture_confirm_v_2_message)
  local size_of_trade_capture_confirm_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_confirm_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_capture_confirm_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_confirm_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_confirm_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_confirm_v_2_message)
    parent:set_len(size_of_trade_capture_confirm_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_confirm_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_confirm_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_confirm_v_2_message)

    return index
  end
end

-- Trade Capture Report Reject V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_reject_v_2_message = {}

-- Read runtime size of: Trade Capture Report Reject V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_reject_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Capture Report Reject V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_reject_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report Reject V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_reject_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_capture_report_reject_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Trade Report Id: Text
  index, trade_report_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id.dissect(buffer, index, packet, parent)

  -- Reason: Text
  index, reason = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- No Sides: Binary
  index, no_sides = cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides.dissect(buffer, index, packet, parent)

  -- Repeating: Trd Cap Ack Side Grp
  for trd_cap_ack_side_grp_index = 1, no_sides do
    index, trd_cap_ack_side_grp = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.dissect(buffer, index, packet, parent, trd_cap_ack_side_grp_index)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Type Return
  local trade_report_type_return = nil

  local trade_report_type_return_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x02) > 0

  if trade_report_type_return_exists then
    index, trade_report_type_return = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type_return.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Formation
  local price_formation = nil

  local price_formation_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x40) > 0

  if price_formation_exists then
    index, price_formation = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Intra Firm Trade Ind
  local intra_firm_trade_ind = nil

  local intra_firm_trade_ind_exists = number_of_return_bitfields >= 19 and bit.band(return_bitfield_19, 0x10) > 0

  if intra_firm_trade_ind_exists then
    index, intra_firm_trade_ind = cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Capture Report Reject V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_reject_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_capture_report_reject_v_2_message)
  local size_of_trade_capture_report_reject_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_reject_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_capture_report_reject_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_reject_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_reject_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_reject_v_2_message)
    parent:set_len(size_of_trade_capture_report_reject_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_reject_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_reject_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_reject_v_2_message)

    return index
  end
end

-- Trade Capture Report Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_acknowledgment_v_2_message = {}

-- Read runtime size of: Trade Capture Report Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_acknowledgment_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Capture Report Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_acknowledgment_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_acknowledgment_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_capture_report_acknowledgment_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Trade Report Id: Text
  index, trade_report_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- No Sides: Binary
  index, no_sides = cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides.dissect(buffer, index, packet, parent)

  -- Repeating: Trd Cap Ack Side Grp
  for trd_cap_ack_side_grp_index = 1, no_sides do
    index, trd_cap_ack_side_grp = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_ack_side_grp.dissect(buffer, index, packet, parent, trd_cap_ack_side_grp_index)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Type Return
  local trade_report_type_return = nil

  local trade_report_type_return_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x02) > 0

  if trade_report_type_return_exists then
    index, trade_report_type_return = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type_return.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Ref Id
  local trade_report_ref_id = nil

  local trade_report_ref_id_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x80) > 0

  if trade_report_ref_id_exists then
    index, trade_report_ref_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_ref_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Category
  local order_category = nil

  local order_category_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x08) > 0

  if order_category_exists then
    index, order_category = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_category.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Liquidity Provision
  local liquidity_provision = nil

  local liquidity_provision_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x10) > 0

  if liquidity_provision_exists then
    index, liquidity_provision = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Formation
  local price_formation = nil

  local price_formation_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x40) > 0

  if price_formation_exists then
    index, price_formation = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Intra Firm Trade Ind
  local intra_firm_trade_ind = nil

  local intra_firm_trade_ind_exists = number_of_return_bitfields >= 19 and bit.band(return_bitfield_19, 0x10) > 0

  if intra_firm_trade_ind_exists then
    index, intra_firm_trade_ind = cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Capture Report Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_acknowledgment_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_capture_report_acknowledgment_v_2_message)
  local size_of_trade_capture_report_acknowledgment_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_acknowledgment_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_capture_report_acknowledgment_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_acknowledgment_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_acknowledgment_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_acknowledgment_v_2_message)
    parent:set_len(size_of_trade_capture_report_acknowledgment_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_acknowledgment_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_acknowledgment_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_acknowledgment_v_2_message)

    return index
  end
end

-- Mass Cancel Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_acknowledgment_v_2_message = {}

-- Read runtime size of: Mass Cancel Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_acknowledgment_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Mass Cancel Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_acknowledgment_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_acknowledgment_v_2_message.fields = function(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_acknowledgment_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_v_2_message)
  local size_of_mass_cancel_acknowledgment_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_acknowledgment_v_2_message.size(buffer, offset)
  local index = offset + size_of_mass_cancel_acknowledgment_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.mass_cancel_acknowledgment_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_acknowledgment_v_2_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_v_2_message)
    parent:set_len(size_of_mass_cancel_acknowledgment_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_acknowledgment_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_acknowledgment_v_2_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_v_2_message)

    return index
  end
end

-- Purge Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_rejected_v_2_message = {}

-- Read runtime size of: Purge Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_rejected_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Purge Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_rejected_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_rejected_v_2_message.fields = function(buffer, offset, packet, parent, size_of_purge_rejected_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_rejected_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_purge_rejected_v_2_message)
  local size_of_purge_rejected_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_rejected_v_2_message.size(buffer, offset)
  local index = offset + size_of_purge_rejected_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_rejected_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_rejected_v_2_message.fields(buffer, offset, packet, parent, size_of_purge_rejected_v_2_message)
    parent:set_len(size_of_purge_rejected_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_rejected_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_rejected_v_2_message.fields(buffer, offset, packet, parent, size_of_purge_rejected_v_2_message)

    return index
  end
end

-- Trade Cancel Or Correct V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_cancel_or_correct_v_2_message = {}

-- Read runtime size of: Trade Cancel Or Correct V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_cancel_or_correct_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Cancel Or Correct V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_cancel_or_correct_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Or Correct V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_cancel_or_correct_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_px.dissect(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_price.dissect(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_time.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Corrected Size
  local corrected_size = nil

  local corrected_size_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x20) > 0

  if corrected_size_exists then
    index, corrected_size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.corrected_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Mkt
  local last_mkt = nil

  local last_mkt_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x80) > 0

  if last_mkt_exists then
    index, last_mkt = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_mkt.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Cancel Or Correct V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_cancel_or_correct_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_v_2_message)
  local size_of_trade_cancel_or_correct_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_cancel_or_correct_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_cancel_or_correct_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_cancel_or_correct_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_cancel_or_correct_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_v_2_message)
    parent:set_len(size_of_trade_cancel_or_correct_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_cancel_or_correct_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_cancel_or_correct_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_v_2_message)

    return index
  end
end

-- Order Execution V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_execution_v_2_message = {}

-- Read runtime size of: Order Execution V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_execution_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Execution V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_execution_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_execution_v_2_message.fields = function(buffer, offset, packet, parent, size_of_order_execution_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_cxeequities_binaryorderentry_boe_v2_0_83.contra_broker.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Mkt
  local last_mkt = nil

  local last_mkt_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x80) > 0

  if last_mkt_exists then
    index, last_mkt = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_mkt.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Fee Code
  local fee_code = nil

  local fee_code_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x01) > 0

  if fee_code_exists then
    index, fee_code = cboe_cxeequities_binaryorderentry_boe_v2_0_83.fee_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x08) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Liquidity Provision
  local liquidity_provision = nil

  local liquidity_provision_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x10) > 0

  if liquidity_provision_exists then
    index, liquidity_provision = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Qualified Role
  local client_qualified_role = nil

  local client_qualified_role_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x80) > 0

  if client_qualified_role_exists then
    index, client_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Id
  local client_id = nil

  local client_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x01) > 0

  if client_id_exists then
    index, client_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Id
  local investor_id = nil

  local investor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x02) > 0

  if investor_id_exists then
    index, investor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Id
  local executor_id = nil

  local executor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x04) > 0

  if executor_id_exists then
    index, executor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Origination
  local order_origination = nil

  local order_origination_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x08) > 0

  if order_origination_exists then
    index, order_origination = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Qualified Role
  local investor_qualified_role = nil

  local investor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x40) > 0

  if investor_qualified_role_exists then
    index, investor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Qualified Role
  local executor_qualified_role = nil

  local executor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x80) > 0

  if executor_qualified_role_exists then
    index, executor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Execution V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_execution_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_order_execution_v_2_message)
  local size_of_order_execution_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_execution_v_2_message.size(buffer, offset)
  local index = offset + size_of_order_execution_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_execution_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_execution_v_2_message.fields(buffer, offset, packet, parent, size_of_order_execution_v_2_message)
    parent:set_len(size_of_order_execution_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_execution_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_execution_v_2_message.fields(buffer, offset, packet, parent, size_of_order_execution_v_2_message)

    return index
  end
end

-- Cancel Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_rejected_v_2_message = {}

-- Read runtime size of: Cancel Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_rejected_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Cancel Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_rejected_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_rejected_v_2_message.fields = function(buffer, offset, packet, parent, size_of_cancel_rejected_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Liquidity Provision
  local liquidity_provision = nil

  local liquidity_provision_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x10) > 0

  if liquidity_provision_exists then
    index, liquidity_provision = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Qualified Role
  local client_qualified_role = nil

  local client_qualified_role_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x80) > 0

  if client_qualified_role_exists then
    index, client_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Id
  local client_id = nil

  local client_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x01) > 0

  if client_id_exists then
    index, client_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Id
  local investor_id = nil

  local investor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x02) > 0

  if investor_id_exists then
    index, investor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Id
  local executor_id = nil

  local executor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x04) > 0

  if executor_id_exists then
    index, executor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Origination
  local order_origination = nil

  local order_origination_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x08) > 0

  if order_origination_exists then
    index, order_origination = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Qualified Role
  local investor_qualified_role = nil

  local investor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x40) > 0

  if investor_qualified_role_exists then
    index, investor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Qualified Role
  local executor_qualified_role = nil

  local executor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x80) > 0

  if executor_qualified_role_exists then
    index, executor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Cancel Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_rejected_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_cancel_rejected_v_2_message)
  local size_of_cancel_rejected_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_rejected_v_2_message.size(buffer, offset)
  local index = offset + size_of_cancel_rejected_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_rejected_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_rejected_v_2_message.fields(buffer, offset, packet, parent, size_of_cancel_rejected_v_2_message)
    parent:set_len(size_of_cancel_rejected_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_rejected_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_rejected_v_2_message.fields(buffer, offset, packet, parent, size_of_cancel_rejected_v_2_message)

    return index
  end
end

-- Order Cancelled V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_cancelled_v_2_message = {}

-- Read runtime size of: Order Cancelled V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_cancelled_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Cancelled V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_cancelled_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_cancelled_v_2_message.fields = function(buffer, offset, packet, parent, size_of_order_cancelled_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_reason.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x10) > 0

  if display_price_exists then
    index, display_price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Working Price
  local working_price = nil

  local working_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x20) > 0

  if working_price_exists then
    index, working_price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Base Liquidity Indicator
  local base_liquidity_indicator = nil

  local base_liquidity_indicator_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if base_liquidity_indicator_exists then
    index, base_liquidity_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Liquidity Provision
  local liquidity_provision = nil

  local liquidity_provision_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x10) > 0

  if liquidity_provision_exists then
    index, liquidity_provision = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Qualified Role
  local client_qualified_role = nil

  local client_qualified_role_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x80) > 0

  if client_qualified_role_exists then
    index, client_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Id
  local client_id = nil

  local client_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x01) > 0

  if client_id_exists then
    index, client_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Id
  local investor_id = nil

  local investor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x02) > 0

  if investor_id_exists then
    index, investor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Id
  local executor_id = nil

  local executor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x04) > 0

  if executor_id_exists then
    index, executor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Origination
  local order_origination = nil

  local order_origination_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x08) > 0

  if order_origination_exists then
    index, order_origination = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Qualified Role
  local investor_qualified_role = nil

  local investor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x40) > 0

  if investor_qualified_role_exists then
    index, investor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Qualified Role
  local executor_qualified_role = nil

  local executor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x80) > 0

  if executor_qualified_role_exists then
    index, executor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Cancelled V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_cancelled_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_order_cancelled_v_2_message)
  local size_of_order_cancelled_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_cancelled_v_2_message.size(buffer, offset)
  local index = offset + size_of_order_cancelled_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_cancelled_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_cancelled_v_2_message.fields(buffer, offset, packet, parent, size_of_order_cancelled_v_2_message)
    parent:set_len(size_of_order_cancelled_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_cancelled_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_cancelled_v_2_message.fields(buffer, offset, packet, parent, size_of_order_cancelled_v_2_message)

    return index
  end
end

-- User Modify Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.user_modify_rejected_v_2_message = {}

-- Read runtime size of: User Modify Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.user_modify_rejected_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: User Modify Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.user_modify_rejected_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Modify Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.user_modify_rejected_v_2_message.fields = function(buffer, offset, packet, parent, size_of_user_modify_rejected_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: User Modify Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.user_modify_rejected_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_user_modify_rejected_v_2_message)
  local size_of_user_modify_rejected_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.user_modify_rejected_v_2_message.size(buffer, offset)
  local index = offset + size_of_user_modify_rejected_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.user_modify_rejected_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.user_modify_rejected_v_2_message.fields(buffer, offset, packet, parent, size_of_user_modify_rejected_v_2_message)
    parent:set_len(size_of_user_modify_rejected_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.user_modify_rejected_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.user_modify_rejected_v_2_message.fields(buffer, offset, packet, parent, size_of_user_modify_rejected_v_2_message)

    return index
  end
end

-- Order Restated V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_restated_v_2_message = {}

-- Read runtime size of: Order Restated V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_restated_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Restated V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_restated_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_restated_v_2_message.fields = function(buffer, offset, packet, parent, size_of_order_restated_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_id.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Alphanumeric
  index, restatement_reason = cboe_cxeequities_binaryorderentry_boe_v2_0_83.restatement_reason.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x10) > 0

  if display_price_exists then
    index, display_price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Working Price
  local working_price = nil

  local working_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x20) > 0

  if working_price_exists then
    index, working_price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Base Liquidity Indicator
  local base_liquidity_indicator = nil

  local base_liquidity_indicator_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if base_liquidity_indicator_exists then
    index, base_liquidity_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Liquidity Provision
  local liquidity_provision = nil

  local liquidity_provision_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x10) > 0

  if liquidity_provision_exists then
    index, liquidity_provision = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Qualified Role
  local client_qualified_role = nil

  local client_qualified_role_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x80) > 0

  if client_qualified_role_exists then
    index, client_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Id
  local client_id = nil

  local client_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x01) > 0

  if client_id_exists then
    index, client_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Id
  local investor_id = nil

  local investor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x02) > 0

  if investor_id_exists then
    index, investor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Id
  local executor_id = nil

  local executor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x04) > 0

  if executor_id_exists then
    index, executor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Origination
  local order_origination = nil

  local order_origination_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x08) > 0

  if order_origination_exists then
    index, order_origination = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Qualified Role
  local investor_qualified_role = nil

  local investor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x40) > 0

  if investor_qualified_role_exists then
    index, investor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Qualified Role
  local executor_qualified_role = nil

  local executor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x80) > 0

  if executor_qualified_role_exists then
    index, executor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Restated V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_restated_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_order_restated_v_2_message)
  local size_of_order_restated_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_restated_v_2_message.size(buffer, offset)
  local index = offset + size_of_order_restated_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_restated_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_restated_v_2_message.fields(buffer, offset, packet, parent, size_of_order_restated_v_2_message)
    parent:set_len(size_of_order_restated_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_restated_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_restated_v_2_message.fields(buffer, offset, packet, parent, size_of_order_restated_v_2_message)

    return index
  end
end

-- Order Modified V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_modified_v_2_message = {}

-- Read runtime size of: Order Modified V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_modified_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Modified V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_modified_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_modified_v_2_message.fields = function(buffer, offset, packet, parent, size_of_order_modified_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x10) > 0

  if display_price_exists then
    index, display_price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Working Price
  local working_price = nil

  local working_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x20) > 0

  if working_price_exists then
    index, working_price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Base Liquidity Indicator
  local base_liquidity_indicator = nil

  local base_liquidity_indicator_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if base_liquidity_indicator_exists then
    index, base_liquidity_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Liquidity Provision
  local liquidity_provision = nil

  local liquidity_provision_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x10) > 0

  if liquidity_provision_exists then
    index, liquidity_provision = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Qualified Role
  local client_qualified_role = nil

  local client_qualified_role_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x80) > 0

  if client_qualified_role_exists then
    index, client_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Id
  local client_id = nil

  local client_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x01) > 0

  if client_id_exists then
    index, client_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Id
  local investor_id = nil

  local investor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x02) > 0

  if investor_id_exists then
    index, investor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Id
  local executor_id = nil

  local executor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x04) > 0

  if executor_id_exists then
    index, executor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Origination
  local order_origination = nil

  local order_origination_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x08) > 0

  if order_origination_exists then
    index, order_origination = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Qualified Role
  local investor_qualified_role = nil

  local investor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x40) > 0

  if investor_qualified_role_exists then
    index, investor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Qualified Role
  local executor_qualified_role = nil

  local executor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x80) > 0

  if executor_qualified_role_exists then
    index, executor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Modified V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_modified_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_order_modified_v_2_message)
  local size_of_order_modified_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_modified_v_2_message.size(buffer, offset)
  local index = offset + size_of_order_modified_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_modified_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_modified_v_2_message.fields(buffer, offset, packet, parent, size_of_order_modified_v_2_message)
    parent:set_len(size_of_order_modified_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_modified_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_modified_v_2_message.fields(buffer, offset, packet, parent, size_of_order_modified_v_2_message)

    return index
  end
end

-- Order Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_rejected_v_2_message = {}

-- Read runtime size of: Order Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_rejected_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_rejected_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_rejected_v_2_message.fields = function(buffer, offset, packet, parent, size_of_order_rejected_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxeequities_binaryorderentry_boe_v2_0_83.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Liquidity Provision
  local liquidity_provision = nil

  local liquidity_provision_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x10) > 0

  if liquidity_provision_exists then
    index, liquidity_provision = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Qualified Role
  local client_qualified_role = nil

  local client_qualified_role_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x80) > 0

  if client_qualified_role_exists then
    index, client_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Id
  local client_id = nil

  local client_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x01) > 0

  if client_id_exists then
    index, client_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Id
  local investor_id = nil

  local investor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x02) > 0

  if investor_id_exists then
    index, investor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Id
  local executor_id = nil

  local executor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x04) > 0

  if executor_id_exists then
    index, executor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Origination
  local order_origination = nil

  local order_origination_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x08) > 0

  if order_origination_exists then
    index, order_origination = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Qualified Role
  local investor_qualified_role = nil

  local investor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x40) > 0

  if investor_qualified_role_exists then
    index, investor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Qualified Role
  local executor_qualified_role = nil

  local executor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x80) > 0

  if executor_qualified_role_exists then
    index, executor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Rejected V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_rejected_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_order_rejected_v_2_message)
  local size_of_order_rejected_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_rejected_v_2_message.size(buffer, offset)
  local index = offset + size_of_order_rejected_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_rejected_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_rejected_v_2_message.fields(buffer, offset, packet, parent, size_of_order_rejected_v_2_message)
    parent:set_len(size_of_order_rejected_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_rejected_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_rejected_v_2_message.fields(buffer, offset, packet, parent, size_of_order_rejected_v_2_message)

    return index
  end
end

-- Order Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_acknowledgment_v_2_message = {}

-- Read runtime size of: Order Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_acknowledgment_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_acknowledgment_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_acknowledgment_v_2_message.fields = function(buffer, offset, packet, parent, size_of_order_acknowledgment_v_2_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x10) > 0

  if display_price_exists then
    index, display_price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Working Price
  local working_price = nil

  local working_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x20) > 0

  if working_price_exists then
    index, working_price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.working_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Base Liquidity Indicator
  local base_liquidity_indicator = nil

  local base_liquidity_indicator_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if base_liquidity_indicator_exists then
    index, base_liquidity_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.base_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sub Liquidity Indicator
  local sub_liquidity_indicator = nil

  local sub_liquidity_indicator_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x01) > 0

  if sub_liquidity_indicator_exists then
    index, sub_liquidity_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.sub_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Liquidity Provision
  local liquidity_provision = nil

  local liquidity_provision_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x10) > 0

  if liquidity_provision_exists then
    index, liquidity_provision = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Waiver Type
  local waiver_type = nil

  local waiver_type_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x10) > 0

  if waiver_type_exists then
    index, waiver_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.waiver_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Qualified Role
  local client_qualified_role = nil

  local client_qualified_role_exists = number_of_return_bitfields >= 10 and bit.band(return_bitfield_10, 0x80) > 0

  if client_qualified_role_exists then
    index, client_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Id
  local client_id = nil

  local client_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x01) > 0

  if client_id_exists then
    index, client_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Id
  local investor_id = nil

  local investor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x02) > 0

  if investor_id_exists then
    index, investor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Id
  local executor_id = nil

  local executor_id_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x04) > 0

  if executor_id_exists then
    index, executor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Origination
  local order_origination = nil

  local order_origination_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x08) > 0

  if order_origination_exists then
    index, order_origination = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x10) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Qualified Role
  local investor_qualified_role = nil

  local investor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x40) > 0

  if investor_qualified_role_exists then
    index, investor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Qualified Role
  local executor_qualified_role = nil

  local executor_qualified_role_exists = number_of_return_bitfields >= 11 and bit.band(return_bitfield_11, 0x80) > 0

  if executor_qualified_role_exists then
    index, executor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Acknowledgment V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_acknowledgment_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_order_acknowledgment_v_2_message)
  local size_of_order_acknowledgment_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_acknowledgment_v_2_message.size(buffer, offset)
  local index = offset + size_of_order_acknowledgment_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.order_acknowledgment_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_acknowledgment_v_2_message.fields(buffer, offset, packet, parent, size_of_order_acknowledgment_v_2_message)
    parent:set_len(size_of_order_acknowledgment_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_acknowledgment_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_acknowledgment_v_2_message.fields(buffer, offset, packet, parent, size_of_order_acknowledgment_v_2_message)

    return index
  end
end

-- Trd Cap Rpt Side Grp
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_rpt_side_grp = {}

-- Size: Trd Cap Rpt Side Grp
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_rpt_side_grp.size =
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_id.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_role.size

-- Display: Trd Cap Rpt Side Grp
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_rpt_side_grp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trd Cap Rpt Side Grp
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_rpt_side_grp.fields = function(buffer, offset, packet, parent, trd_cap_rpt_side_grp_index)
  local index = offset

  -- Implicit Trd Cap Rpt Side Grp Index
  if trd_cap_rpt_side_grp_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trd_cap_rpt_side_grp_index, trd_cap_rpt_side_grp_index)
    iteration:set_generated()
  end

  -- Side: Alphanumeric
  index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)

  -- Party Id: Alpha
  index, party_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_id.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)

  -- Party Role: Alphanumeric
  index, party_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trd Cap Rpt Side Grp
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_rpt_side_grp.dissect = function(buffer, offset, packet, parent, trd_cap_rpt_side_grp_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trd_cap_rpt_side_grp, buffer(offset, 0))
    local index = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_rpt_side_grp.fields(buffer, offset, packet, parent, trd_cap_rpt_side_grp_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_rpt_side_grp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_rpt_side_grp.fields(buffer, offset, packet, parent, trd_cap_rpt_side_grp_index)
  end
end

-- Trade Capture Report V 2 Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_6 = {}

-- Size: Trade Capture Report V 2 Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_6.size = 1

-- Display: Trade Capture Report V 2 Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_6.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_6.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 6 Cust Order Handling Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_cust_order_handling_inst, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Open Close: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_open_close, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Account Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_account_type, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Multi Juris Reporting Ind: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_multi_juris_reporting_ind, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Intra Firm Trade Ind: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_intra_firm_trade_ind, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Tertiary Trd Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_tertiary_trd_type, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Reserved 64: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_reserved_64, range, value)

  -- Trade Capture Report V 2 Bitfield 6 Reserved 128: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6_reserved_128, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_6, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_5 = {}

-- Size: Trade Capture Report V 2 Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_5.size = 1

-- Display: Trade Capture Report V 2 Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_5.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_5.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 5 Settlement Date: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_settlement_date, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Price Formation: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_price_formation, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Algorithmic Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_algorithmic_indicator, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Waiver Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_waiver_type, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Deferral Reason: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_deferral_reason, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Settlement Currency: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_settlement_currency, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Settlement Location: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_settlement_location, range, value)

  -- Trade Capture Report V 2 Bitfield 5 Third Party: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5_third_party, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_5, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_4 = {}

-- Size: Trade Capture Report V 2 Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_4.size = 1

-- Display: Trade Capture Report V 2 Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_4.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_4.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 4 Trade Report Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_trade_report_type, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Trade Handling Instruction: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_trade_handling_instruction, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Trade Link Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_trade_link_id, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Trade Report Ref Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_trade_report_ref_id, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Gross Trade Amt: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_gross_trade_amt, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Tolerance: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_tolerance, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Order Category: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_order_category, range, value)

  -- Trade Capture Report V 2 Bitfield 4 Settlement Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4_settlement_price, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_4, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_3 = {}

-- Size: Trade Capture Report V 2 Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_3.size = 1

-- Display: Trade Capture Report V 2 Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_3.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_3.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 3 Trading Session Sub Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_trading_session_sub_id, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Match Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_match_type, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Trd Sub Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_trd_sub_type, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Secondary Trd Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_secondary_trd_type, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Trade Price Condition: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_trade_price_condition, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Trade Publish Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_trade_publish_indicator, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Large Size: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_large_size, range, value)

  -- Trade Capture Report V 2 Bitfield 3 Execution Method: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3_execution_method, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_3, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_2 = {}

-- Size: Trade Capture Report V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_2.size = 1

-- Display: Trade Capture Report V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_2.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_2.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 2 Capacity: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_capacity, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Account: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_account, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Transaction Category: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_transaction_category, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Trade Time: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_trade_time, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Party Role: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_party_role, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Trade Report Trans Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_trade_report_trans_type, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Trade Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_trade_id, range, value)

  -- Trade Capture Report V 2 Bitfield 2 Venue Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2_venue_type, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_2, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_1 = {}

-- Size: Trade Capture Report V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_1.size = 1

-- Display: Trade Capture Report V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_1.display = function(range, value, packet, parent)
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
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_1.bits = function(range, value, packet, parent)

  -- Trade Capture Report V 2 Bitfield 1 Symbol: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_symbol, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_reserved_2, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Currency: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_currency, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Id Source: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_id_source, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Security Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_security_id, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Security Exchange: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_security_exchange, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Last Mkt: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_last_mkt, range, value)

  -- Trade Capture Report V 2 Bitfield 1 Reserved 128: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1_reserved_128, range, value)
end

-- Dissect: Trade Capture Report V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_bitfield_1, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_message = {}

-- Read runtime size of: Trade Capture Report V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Capture Report V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_message.fields = function(buffer, offset, packet, parent, size_of_trade_capture_report_v_2_message)
  local index = offset

  -- Trade Report Id: Text
  index, trade_report_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_shares.dissect(buffer, index, packet, parent)

  -- Number Of Trade Capture Report V 2 Bitfields: Binary
  index, number_of_trade_capture_report_v_2_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_trade_capture_report_v_2_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 1
  local trade_capture_report_v_2_bitfield_1 = nil

  local trade_capture_report_v_2_bitfield_1_exists = number_of_trade_capture_report_v_2_bitfields >= 1

  if trade_capture_report_v_2_bitfield_1_exists then

    -- Trade Capture Report V 2 Bitfield 1: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 2
  local trade_capture_report_v_2_bitfield_2 = nil

  local trade_capture_report_v_2_bitfield_2_exists = number_of_trade_capture_report_v_2_bitfields >= 2

  if trade_capture_report_v_2_bitfield_2_exists then

    -- Trade Capture Report V 2 Bitfield 2: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 3
  local trade_capture_report_v_2_bitfield_3 = nil

  local trade_capture_report_v_2_bitfield_3_exists = number_of_trade_capture_report_v_2_bitfields >= 3

  if trade_capture_report_v_2_bitfield_3_exists then

    -- Trade Capture Report V 2 Bitfield 3: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 4
  local trade_capture_report_v_2_bitfield_4 = nil

  local trade_capture_report_v_2_bitfield_4_exists = number_of_trade_capture_report_v_2_bitfields >= 4

  if trade_capture_report_v_2_bitfield_4_exists then

    -- Trade Capture Report V 2 Bitfield 4: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 5
  local trade_capture_report_v_2_bitfield_5 = nil

  local trade_capture_report_v_2_bitfield_5_exists = number_of_trade_capture_report_v_2_bitfields >= 5

  if trade_capture_report_v_2_bitfield_5_exists then

    -- Trade Capture Report V 2 Bitfield 5: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Capture Report V 2 Bitfield 6
  local trade_capture_report_v_2_bitfield_6 = nil

  local trade_capture_report_v_2_bitfield_6_exists = number_of_trade_capture_report_v_2_bitfields >= 6

  if trade_capture_report_v_2_bitfield_6_exists then

    -- Trade Capture Report V 2 Bitfield 6: Struct of 8 fields
    index, trade_capture_report_v_2_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- No Sides: Binary
  index, no_sides = cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_sides.dissect(buffer, index, packet, parent)

  -- Repeating: Trd Cap Rpt Side Grp
  for trd_cap_rpt_side_grp_index = 1, no_sides do
    index, trd_cap_rpt_side_grp = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_cap_rpt_side_grp.dissect(buffer, index, packet, parent, trd_cap_rpt_side_grp_index)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_trade_capture_report_v_2_bitfields >= 1 and bit.band(trade_capture_report_v_2_bitfield_1, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x01) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x02) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Transaction Category
  local transaction_category = nil

  local transaction_category_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x04) > 0

  if transaction_category_exists then
    index, transaction_category = cboe_cxeequities_binaryorderentry_boe_v2_0_83.transaction_category.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Time
  local trade_time = nil

  local trade_time_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x08) > 0

  if trade_time_exists then
    index, trade_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Trans Type
  local trade_report_trans_type = nil

  local trade_report_trans_type_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x20) > 0

  if trade_report_trans_type_exists then
    index, trade_report_trans_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_trans_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Id
  local trade_id = nil

  local trade_id_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x40) > 0

  if trade_id_exists then
    index, trade_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Venue Type
  local venue_type = nil

  local venue_type_exists = number_of_trade_capture_report_v_2_bitfields >= 2 and bit.band(trade_capture_report_v_2_bitfield_2, 0x80) > 0

  if venue_type_exists then
    index, venue_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.venue_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trading Session Sub Id
  local trading_session_sub_id = nil

  local trading_session_sub_id_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x01) > 0

  if trading_session_sub_id_exists then
    index, trading_session_sub_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trading_session_sub_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Match Type
  local match_type = nil

  local match_type_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x02) > 0

  if match_type_exists then
    index, match_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.match_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trd Sub Type
  local trd_sub_type = nil

  local trd_sub_type_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x04) > 0

  if trd_sub_type_exists then
    index, trd_sub_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trd_sub_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Trd Type
  local secondary_trd_type = nil

  local secondary_trd_type_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x08) > 0

  if secondary_trd_type_exists then
    index, secondary_trd_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.secondary_trd_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Price Condition
  local trade_price_condition = nil

  local trade_price_condition_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x10) > 0

  if trade_price_condition_exists then
    index, trade_price_condition = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_price_condition.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Publish Indicator
  local trade_publish_indicator = nil

  local trade_publish_indicator_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x20) > 0

  if trade_publish_indicator_exists then
    index, trade_publish_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_publish_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Large Size
  local large_size = nil

  local large_size_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x40) > 0

  if large_size_exists then
    index, large_size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.large_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Execution Method
  local execution_method = nil

  local execution_method_exists = number_of_trade_capture_report_v_2_bitfields >= 3 and bit.band(trade_capture_report_v_2_bitfield_3, 0x80) > 0

  if execution_method_exists then
    index, execution_method = cboe_cxeequities_binaryorderentry_boe_v2_0_83.execution_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Type
  local trade_report_type = nil

  local trade_report_type_exists = number_of_trade_capture_report_v_2_bitfields >= 4 and bit.band(trade_capture_report_v_2_bitfield_4, 0x01) > 0

  if trade_report_type_exists then
    index, trade_report_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Handling Instruction
  local trade_handling_instruction = nil

  local trade_handling_instruction_exists = number_of_trade_capture_report_v_2_bitfields >= 4 and bit.band(trade_capture_report_v_2_bitfield_4, 0x02) > 0

  if trade_handling_instruction_exists then
    index, trade_handling_instruction = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_handling_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Link Id
  local trade_link_id = nil

  local trade_link_id_exists = number_of_trade_capture_report_v_2_bitfields >= 4 and bit.band(trade_capture_report_v_2_bitfield_4, 0x04) > 0

  if trade_link_id_exists then
    index, trade_link_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_link_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Report Ref Id
  local trade_report_ref_id = nil

  local trade_report_ref_id_exists = number_of_trade_capture_report_v_2_bitfields >= 4 and bit.band(trade_capture_report_v_2_bitfield_4, 0x08) > 0

  if trade_report_ref_id_exists then
    index, trade_report_ref_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_report_ref_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Gross Trade Amt
  local gross_trade_amt = nil

  local gross_trade_amt_exists = number_of_trade_capture_report_v_2_bitfields >= 4 and bit.band(trade_capture_report_v_2_bitfield_4, 0x10) > 0

  if gross_trade_amt_exists then
    index, gross_trade_amt = cboe_cxeequities_binaryorderentry_boe_v2_0_83.gross_trade_amt.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Tolerance
  local tolerance = nil

  local tolerance_exists = number_of_trade_capture_report_v_2_bitfields >= 4 and bit.band(trade_capture_report_v_2_bitfield_4, 0x20) > 0

  if tolerance_exists then
    index, tolerance = cboe_cxeequities_binaryorderentry_boe_v2_0_83.tolerance.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Category
  local order_category = nil

  local order_category_exists = number_of_trade_capture_report_v_2_bitfields >= 4 and bit.band(trade_capture_report_v_2_bitfield_4, 0x40) > 0

  if order_category_exists then
    index, order_category = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_category.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Settlement Date
  local settlement_date = nil

  local settlement_date_exists = number_of_trade_capture_report_v_2_bitfields >= 5 and bit.band(trade_capture_report_v_2_bitfield_5, 0x01) > 0

  if settlement_date_exists then
    index, settlement_date = cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Formation
  local price_formation = nil

  local price_formation_exists = number_of_trade_capture_report_v_2_bitfields >= 5 and bit.band(trade_capture_report_v_2_bitfield_5, 0x02) > 0

  if price_formation_exists then
    index, price_formation = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price_formation.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_trade_capture_report_v_2_bitfields >= 5 and bit.band(trade_capture_report_v_2_bitfield_5, 0x04) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Settlement Currency
  local settlement_currency = nil

  local settlement_currency_exists = number_of_trade_capture_report_v_2_bitfields >= 5 and bit.band(trade_capture_report_v_2_bitfield_5, 0x20) > 0

  if settlement_currency_exists then
    index, settlement_currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Settlement Location
  local settlement_location = nil

  local settlement_location_exists = number_of_trade_capture_report_v_2_bitfields >= 5 and bit.band(trade_capture_report_v_2_bitfield_5, 0x40) > 0

  if settlement_location_exists then
    index, settlement_location = cboe_cxeequities_binaryorderentry_boe_v2_0_83.settlement_location.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Intra Firm Trade Ind
  local intra_firm_trade_ind = nil

  local intra_firm_trade_ind_exists = number_of_trade_capture_report_v_2_bitfields >= 6 and bit.band(trade_capture_report_v_2_bitfield_6, 0x10) > 0

  if intra_firm_trade_ind_exists then
    index, intra_firm_trade_ind = cboe_cxeequities_binaryorderentry_boe_v2_0_83.intra_firm_trade_ind.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Tertiary Trd Type
  local tertiary_trd_type = nil

  local tertiary_trd_type_exists = number_of_trade_capture_report_v_2_bitfields >= 6 and bit.band(trade_capture_report_v_2_bitfield_6, 0x20) > 0

  if tertiary_trd_type_exists then
    index, tertiary_trd_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.tertiary_trd_type.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Capture Report V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_trade_capture_report_v_2_message)
  local size_of_trade_capture_report_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_message.size(buffer, offset)
  local index = offset + size_of_trade_capture_report_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.trade_capture_report_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_v_2_message)
    parent:set_len(size_of_trade_capture_report_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_message.fields(buffer, offset, packet, parent, size_of_trade_capture_report_v_2_message)

    return index
  end
end

-- Custom Group Ids
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_ids = {}

-- Size: Custom Group Ids
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_ids.size =
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id.size

-- Display: Custom Group Ids
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_ids.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Group Ids
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_ids.fields = function(buffer, offset, packet, parent, custom_group_ids_index)
  local index = offset

  -- Implicit Custom Group Ids Index
  if custom_group_ids_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.custom_group_ids_index, custom_group_ids_index)
    iteration:set_generated()
  end

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Group Ids
cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_ids.dissect = function(buffer, offset, packet, parent, custom_group_ids_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.custom_group_ids, buffer(offset, 0))
    local index = cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_ids.fields(buffer, offset, packet, parent, custom_group_ids_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_ids.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_ids.fields(buffer, offset, packet, parent, custom_group_ids_index)
  end
end

-- Purge Orders V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_2 = {}

-- Size: Purge Orders V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_2.size = 1

-- Display: Purge Orders V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Purge Orders V 2 Bitfield 2 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 2 Symbol"
  end
  -- Is Purge Orders V 2 Bitfield 2 Symbol Sfx flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 2 Symbol Sfx"
  end
  -- Is Purge Orders V 2 Bitfield 2 Currency flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 2 Currency"
  end
  -- Is Purge Orders V 2 Bitfield 2 Id Source flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 2 Id Source"
  end
  -- Is Purge Orders V 2 Bitfield 2 Security Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 2 Security Id"
  end
  -- Is Purge Orders V 2 Bitfield 2 Security Exchange flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 2 Security Exchange"
  end
  -- Is Purge Orders V 2 Bitfield 2 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 2 Reserved 64"
  end
  -- Is Purge Orders V 2 Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Purge Orders V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_2.bits = function(range, value, packet, parent)

  -- Purge Orders V 2 Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_symbol, range, value)

  -- Purge Orders V 2 Bitfield 2 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_symbol_sfx, range, value)

  -- Purge Orders V 2 Bitfield 2 Currency: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_currency, range, value)

  -- Purge Orders V 2 Bitfield 2 Id Source: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_id_source, range, value)

  -- Purge Orders V 2 Bitfield 2 Security Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_security_id, range, value)

  -- Purge Orders V 2 Bitfield 2 Security Exchange: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_security_exchange, range, value)

  -- Purge Orders V 2 Bitfield 2 Reserved 64: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_reserved_64, range, value)

  -- Purge Orders V 2 Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2_reserved_128, range, value)
end

-- Dissect: Purge Orders V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_2, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purge Orders V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_1 = {}

-- Size: Purge Orders V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_1.size = 1

-- Display: Purge Orders V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Purge Orders V 2 Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 1 Clearing Firm"
  end
  -- Is Purge Orders V 2 Bitfield 1 Mass Cancel Lockout flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 1 Mass Cancel Lockout"
  end
  -- Is Purge Orders V 2 Bitfield 1 Mass Cancel Inst flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 1 Mass Cancel Inst"
  end
  -- Is Purge Orders V 2 Bitfield 1 Osi Root flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 1 Osi Root"
  end
  -- Is Purge Orders V 2 Bitfield 1 Mass Cancel Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 1 Mass Cancel Id"
  end
  -- Is Purge Orders V 2 Bitfield 1 Routing Firm Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 1 Routing Firm Id"
  end
  -- Is Purge Orders V 2 Bitfield 1 Manual Order Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 1 Manual Order Indicator"
  end
  -- Is Purge Orders V 2 Bitfield 1 Operator Id flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Purge Orders V 2 Bitfield 1 Operator Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Purge Orders V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_1.bits = function(range, value, packet, parent)

  -- Purge Orders V 2 Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_clearing_firm, range, value)

  -- Purge Orders V 2 Bitfield 1 Mass Cancel Lockout: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_mass_cancel_lockout, range, value)

  -- Purge Orders V 2 Bitfield 1 Mass Cancel Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_mass_cancel_inst, range, value)

  -- Purge Orders V 2 Bitfield 1 Osi Root: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_osi_root, range, value)

  -- Purge Orders V 2 Bitfield 1 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_mass_cancel_id, range, value)

  -- Purge Orders V 2 Bitfield 1 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_routing_firm_id, range, value)

  -- Purge Orders V 2 Bitfield 1 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_manual_order_indicator, range, value)

  -- Purge Orders V 2 Bitfield 1 Operator Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1_operator_id, range, value)
end

-- Dissect: Purge Orders V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_bitfield_1, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purge Orders V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_message = {}

-- Read runtime size of: Purge Orders V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Purge Orders V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Orders V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_message.fields = function(buffer, offset, packet, parent, size_of_purge_orders_v_2_message)
  local index = offset

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Purge Orders V 2 Bitfields: Binary
  index, number_of_purge_orders_v_2_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_purge_orders_v_2_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Purge Orders V 2 Bitfield 1
  local purge_orders_v_2_bitfield_1 = nil

  local purge_orders_v_2_bitfield_1_exists = number_of_purge_orders_v_2_bitfields >= 1

  if purge_orders_v_2_bitfield_1_exists then

    -- Purge Orders V 2 Bitfield 1: Struct of 8 fields
    index, purge_orders_v_2_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Purge Orders V 2 Bitfield 2
  local purge_orders_v_2_bitfield_2 = nil

  local purge_orders_v_2_bitfield_2_exists = number_of_purge_orders_v_2_bitfields >= 2

  if purge_orders_v_2_bitfield_2_exists then

    -- Purge Orders V 2 Bitfield 2: Struct of 8 fields
    index, purge_orders_v_2_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Custom Group Id Cnt: Binary
  index, custom_group_id_cnt = cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_id_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Custom Group Ids
  for custom_group_ids_index = 1, custom_group_id_cnt do
    index, custom_group_ids = cboe_cxeequities_binaryorderentry_boe_v2_0_83.custom_group_ids.dissect(buffer, index, packet, parent, custom_group_ids_index)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_purge_orders_v_2_bitfields >= 1 and bit.band(purge_orders_v_2_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Inst
  local mass_cancel_inst = nil

  local mass_cancel_inst_exists = number_of_purge_orders_v_2_bitfields >= 1 and bit.band(purge_orders_v_2_bitfield_1, 0x04) > 0

  if mass_cancel_inst_exists then
    index, mass_cancel_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_purge_orders_v_2_bitfields >= 1 and bit.band(purge_orders_v_2_bitfield_1, 0x10) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_purge_orders_v_2_bitfields >= 2 and bit.band(purge_orders_v_2_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_purge_orders_v_2_bitfields >= 2 and bit.band(purge_orders_v_2_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_purge_orders_v_2_bitfields >= 2 and bit.band(purge_orders_v_2_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_purge_orders_v_2_bitfields >= 2 and bit.band(purge_orders_v_2_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_purge_orders_v_2_bitfields >= 2 and bit.band(purge_orders_v_2_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Purge Orders V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_purge_orders_v_2_message)
  local size_of_purge_orders_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_message.size(buffer, offset)
  local index = offset + size_of_purge_orders_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.purge_orders_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_message.fields(buffer, offset, packet, parent, size_of_purge_orders_v_2_message)
    parent:set_len(size_of_purge_orders_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_message.fields(buffer, offset, packet, parent, size_of_purge_orders_v_2_message)

    return index
  end
end

-- Modify Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_2 = {}

-- Size: Modify Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_2.size = 1

-- Display: Modify Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Modify Order V 2 Bitfield 2 Max Floor flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 2 Max Floor"
  end
  -- Is Modify Order V 2 Bitfield 2 Stop Px flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 2 Stop Px"
  end
  -- Is Modify Order V 2 Bitfield 2 Routing Firm Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 2 Routing Firm Id"
  end
  -- Is Modify Order V 2 Bitfield 2 Manual Order Indicator flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 2 Manual Order Indicator"
  end
  -- Is Modify Order V 2 Bitfield 2 Operator Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 2 Operator Id"
  end
  -- Is Modify Order V 2 Bitfield 2 Frequent Trader Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 2 Frequent Trader Id"
  end
  -- Is Modify Order V 2 Bitfield 2 Cust Order Handling Inst flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 2 Cust Order Handling Inst"
  end
  -- Is Modify Order V 2 Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_2.bits = function(range, value, packet, parent)

  -- Modify Order V 2 Bitfield 2 Max Floor: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_max_floor, range, value)

  -- Modify Order V 2 Bitfield 2 Stop Px: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_stop_px, range, value)

  -- Modify Order V 2 Bitfield 2 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_routing_firm_id, range, value)

  -- Modify Order V 2 Bitfield 2 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_manual_order_indicator, range, value)

  -- Modify Order V 2 Bitfield 2 Operator Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_operator_id, range, value)

  -- Modify Order V 2 Bitfield 2 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_frequent_trader_id, range, value)

  -- Modify Order V 2 Bitfield 2 Cust Order Handling Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_cust_order_handling_inst, range, value)

  -- Modify Order V 2 Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2_reserved_128, range, value)
end

-- Dissect: Modify Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_2, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_1 = {}

-- Size: Modify Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_1.size = 1

-- Display: Modify Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Modify Order V 2 Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 1 Clearing Firm"
  end
  -- Is Modify Order V 2 Bitfield 1 Expire Time flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 1 Expire Time"
  end
  -- Is Modify Order V 2 Bitfield 1 Order Qty flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 1 Order Qty"
  end
  -- Is Modify Order V 2 Bitfield 1 Price flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 1 Price"
  end
  -- Is Modify Order V 2 Bitfield 1 Ord Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 1 Ord Type"
  end
  -- Is Modify Order V 2 Bitfield 1 Cancel Orig On Reject flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 1 Cancel Orig On Reject"
  end
  -- Is Modify Order V 2 Bitfield 1 Exec Inst flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 1 Exec Inst"
  end
  -- Is Modify Order V 2 Bitfield 1 Side flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Modify Order V 2 Bitfield 1 Side"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_1.bits = function(range, value, packet, parent)

  -- Modify Order V 2 Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_clearing_firm, range, value)

  -- Modify Order V 2 Bitfield 1 Expire Time: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_expire_time, range, value)

  -- Modify Order V 2 Bitfield 1 Order Qty: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_order_qty, range, value)

  -- Modify Order V 2 Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_price, range, value)

  -- Modify Order V 2 Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_ord_type, range, value)

  -- Modify Order V 2 Bitfield 1 Cancel Orig On Reject: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_cancel_orig_on_reject, range, value)

  -- Modify Order V 2 Bitfield 1 Exec Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_exec_inst, range, value)

  -- Modify Order V 2 Bitfield 1 Side: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1_side, range, value)
end

-- Dissect: Modify Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_bitfield_1, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_message = {}

-- Read runtime size of: Modify Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Modify Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_message.fields = function(buffer, offset, packet, parent, size_of_modify_order_v_2_message)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Number Of Modify Order V 2 Bitfields: Binary
  index, number_of_modify_order_v_2_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_modify_order_v_2_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Modify Order V 2 Bitfield 1
  local modify_order_v_2_bitfield_1 = nil

  local modify_order_v_2_bitfield_1_exists = number_of_modify_order_v_2_bitfields >= 1

  if modify_order_v_2_bitfield_1_exists then

    -- Modify Order V 2 Bitfield 1: Struct of 8 fields
    index, modify_order_v_2_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Modify Order V 2 Bitfield 2
  local modify_order_v_2_bitfield_2 = nil

  local modify_order_v_2_bitfield_2_exists = number_of_modify_order_v_2_bitfields >= 2

  if modify_order_v_2_bitfield_2_exists then

    -- Modify Order V 2 Bitfield 2: Struct of 8 fields
    index, modify_order_v_2_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_modify_order_v_2_bitfields >= 1 and bit.band(modify_order_v_2_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_modify_order_v_2_bitfields >= 1 and bit.band(modify_order_v_2_bitfield_1, 0x02) > 0

  if expire_time_exists then
    index, expire_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_modify_order_v_2_bitfields >= 1 and bit.band(modify_order_v_2_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cancel Orig On Reject
  local cancel_orig_on_reject = nil

  local cancel_orig_on_reject_exists = number_of_modify_order_v_2_bitfields >= 1 and bit.band(modify_order_v_2_bitfield_1, 0x20) > 0

  if cancel_orig_on_reject_exists then
    index, cancel_orig_on_reject = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_orig_on_reject.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_modify_order_v_2_bitfields >= 1 and bit.band(modify_order_v_2_bitfield_1, 0x40) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Modify Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_modify_order_v_2_message)
  local size_of_modify_order_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_message.size(buffer, offset)
  local index = offset + size_of_modify_order_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.modify_order_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_message.fields(buffer, offset, packet, parent, size_of_modify_order_v_2_message)
    parent:set_len(size_of_modify_order_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_message.fields(buffer, offset, packet, parent, size_of_modify_order_v_2_message)

    return index
  end
end

-- Cancel Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_2 = {}

-- Size: Cancel Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_2.size = 1

-- Display: Cancel Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Cancel Order V 2 Bitfield 2 Mass Cancel Inst flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 2 Mass Cancel Inst"
  end
  -- Is Cancel Order V 2 Bitfield 2 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 2 Reserved 2"
  end
  -- Is Cancel Order V 2 Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 2 Reserved 4"
  end
  -- Is Cancel Order V 2 Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 2 Reserved 8"
  end
  -- Is Cancel Order V 2 Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 2 Reserved 16"
  end
  -- Is Cancel Order V 2 Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 2 Reserved 32"
  end
  -- Is Cancel Order V 2 Bitfield 2 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 2 Reserved 64"
  end
  -- Is Cancel Order V 2 Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Cancel Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_2.bits = function(range, value, packet, parent)

  -- Cancel Order V 2 Bitfield 2 Mass Cancel Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_mass_cancel_inst, range, value)

  -- Cancel Order V 2 Bitfield 2 Reserved 2: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_2, range, value)

  -- Cancel Order V 2 Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_4, range, value)

  -- Cancel Order V 2 Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_8, range, value)

  -- Cancel Order V 2 Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_16, range, value)

  -- Cancel Order V 2 Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_32, range, value)

  -- Cancel Order V 2 Bitfield 2 Reserved 64: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_64, range, value)

  -- Cancel Order V 2 Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2_reserved_128, range, value)
end

-- Dissect: Cancel Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_2, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cancel Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_1 = {}

-- Size: Cancel Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_1.size = 1

-- Display: Cancel Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Cancel Order V 2 Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 1 Clearing Firm"
  end
  -- Is Cancel Order V 2 Bitfield 1 Mass Cancel Lockout flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 1 Mass Cancel Lockout"
  end
  -- Is Cancel Order V 2 Bitfield 1 Mass Cancel flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 1 Mass Cancel"
  end
  -- Is Cancel Order V 2 Bitfield 1 Underlying flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 1 Underlying"
  end
  -- Is Cancel Order V 2 Bitfield 1 Mass Cancel Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 1 Mass Cancel Id"
  end
  -- Is Cancel Order V 2 Bitfield 1 Routing Firm Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 1 Routing Firm Id"
  end
  -- Is Cancel Order V 2 Bitfield 1 Manual Order Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 1 Manual Order Indicator"
  end
  -- Is Cancel Order V 2 Bitfield 1 Operator Id flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Cancel Order V 2 Bitfield 1 Operator Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Cancel Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_1.bits = function(range, value, packet, parent)

  -- Cancel Order V 2 Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_clearing_firm, range, value)

  -- Cancel Order V 2 Bitfield 1 Mass Cancel Lockout: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_mass_cancel_lockout, range, value)

  -- Cancel Order V 2 Bitfield 1 Mass Cancel: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_mass_cancel, range, value)

  -- Cancel Order V 2 Bitfield 1 Underlying: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_underlying, range, value)

  -- Cancel Order V 2 Bitfield 1 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_mass_cancel_id, range, value)

  -- Cancel Order V 2 Bitfield 1 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_routing_firm_id, range, value)

  -- Cancel Order V 2 Bitfield 1 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_manual_order_indicator, range, value)

  -- Cancel Order V 2 Bitfield 1 Operator Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1_operator_id, range, value)
end

-- Dissect: Cancel Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_bitfield_1, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cancel Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_message = {}

-- Read runtime size of: Cancel Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Cancel Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_message.fields = function(buffer, offset, packet, parent, size_of_cancel_order_v_2_message)
  local index = offset

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Number Of Cancel Order V 2 Bitfields: Binary
  index, number_of_cancel_order_v_2_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_cancel_order_v_2_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Cancel Order V 2 Bitfield 1
  local cancel_order_v_2_bitfield_1 = nil

  local cancel_order_v_2_bitfield_1_exists = number_of_cancel_order_v_2_bitfields >= 1

  if cancel_order_v_2_bitfield_1_exists then

    -- Cancel Order V 2 Bitfield 1: Struct of 8 fields
    index, cancel_order_v_2_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cancel Order V 2 Bitfield 2
  local cancel_order_v_2_bitfield_2 = nil

  local cancel_order_v_2_bitfield_2_exists = number_of_cancel_order_v_2_bitfields >= 2

  if cancel_order_v_2_bitfield_2_exists then

    -- Cancel Order V 2 Bitfield 2: Struct of 8 fields
    index, cancel_order_v_2_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_cancel_order_v_2_bitfields >= 1 and bit.band(cancel_order_v_2_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Cancel Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_cancel_order_v_2_message)
  local size_of_cancel_order_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_message.size(buffer, offset)
  local index = offset + size_of_cancel_order_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.cancel_order_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_message.fields(buffer, offset, packet, parent, size_of_cancel_order_v_2_message)
    parent:set_len(size_of_cancel_order_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_message.fields(buffer, offset, packet, parent, size_of_cancel_order_v_2_message)

    return index
  end
end

-- New Order V 2 Bitfield 9
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_9 = {}

-- Size: New Order V 2 Bitfield 9
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_9.size = 1

-- Display: New Order V 2 Bitfield 9
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_9.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order V 2 Bitfield 9 Order Origin flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 9 Order Origin"
  end
  -- Is New Order V 2 Bitfield 9 Ors flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 9 Ors"
  end
  -- Is New Order V 2 Bitfield 9 Price Type flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 9 Price Type"
  end
  -- Is New Order V 2 Bitfield 9 Trading Session Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 9 Trading Session Id"
  end
  -- Is New Order V 2 Bitfield 9 Cust Order Handling Inst flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 9 Cust Order Handling Inst"
  end
  -- Is New Order V 2 Bitfield 9 Account Type flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 9 Account Type"
  end
  -- Is New Order V 2 Bitfield 9 Cross Trade Flag flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 9 Cross Trade Flag"
  end
  -- Is New Order V 2 Bitfield 9 Drill Thru Protection flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 9 Drill Thru Protection"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order V 2 Bitfield 9
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_9.bits = function(range, value, packet, parent)

  -- New Order V 2 Bitfield 9 Order Origin: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_order_origin, range, value)

  -- New Order V 2 Bitfield 9 Ors: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_ors, range, value)

  -- New Order V 2 Bitfield 9 Price Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_price_type, range, value)

  -- New Order V 2 Bitfield 9 Trading Session Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_trading_session_id, range, value)

  -- New Order V 2 Bitfield 9 Cust Order Handling Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_cust_order_handling_inst, range, value)

  -- New Order V 2 Bitfield 9 Account Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_account_type, range, value)

  -- New Order V 2 Bitfield 9 Cross Trade Flag: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_cross_trade_flag, range, value)

  -- New Order V 2 Bitfield 9 Drill Thru Protection: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9_drill_thru_protection, range, value)
end

-- Dissect: New Order V 2 Bitfield 9
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_9.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_9.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_9.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_9, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_9.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order V 2 Bitfield 8
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_8 = {}

-- Size: New Order V 2 Bitfield 8
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_8.size = 1

-- Display: New Order V 2 Bitfield 8
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_8.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order V 2 Bitfield 8 Quote Room Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 8 Quote Room Id"
  end
  -- Is New Order V 2 Bitfield 8 Si Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 8 Si Indicator"
  end
  -- Is New Order V 2 Bitfield 8 Clearing Optional Data flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 8 Clearing Optional Data"
  end
  -- Is New Order V 2 Bitfield 8 Client Id Attr flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 8 Client Id Attr"
  end
  -- Is New Order V 2 Bitfield 8 Frequent Trader Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 8 Frequent Trader Id"
  end
  -- Is New Order V 2 Bitfield 8 Compression flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 8 Compression"
  end
  -- Is New Order V 2 Bitfield 8 Floor Destination flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 8 Floor Destination"
  end
  -- Is New Order V 2 Bitfield 8 Floor Routing Inst flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 8 Floor Routing Inst"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order V 2 Bitfield 8
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_8.bits = function(range, value, packet, parent)

  -- New Order V 2 Bitfield 8 Quote Room Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_quote_room_id, range, value)

  -- New Order V 2 Bitfield 8 Si Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_si_indicator, range, value)

  -- New Order V 2 Bitfield 8 Clearing Optional Data: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_clearing_optional_data, range, value)

  -- New Order V 2 Bitfield 8 Client Id Attr: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_client_id_attr, range, value)

  -- New Order V 2 Bitfield 8 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_frequent_trader_id, range, value)

  -- New Order V 2 Bitfield 8 Compression: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_compression, range, value)

  -- New Order V 2 Bitfield 8 Floor Destination: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_floor_destination, range, value)

  -- New Order V 2 Bitfield 8 Floor Routing Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8_floor_routing_inst, range, value)
end

-- Dissect: New Order V 2 Bitfield 8
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_8.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_8.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_8.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_8, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_8.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order V 2 Bitfield 7
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_7 = {}

-- Size: New Order V 2 Bitfield 7
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_7.size = 1

-- Display: New Order V 2 Bitfield 7
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_7.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order V 2 Bitfield 7 Algorithmic Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 7 Algorithmic Indicator"
  end
  -- Is New Order V 2 Bitfield 7 Custom Group Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 7 Custom Group Id"
  end
  -- Is New Order V 2 Bitfield 7 Client Qualified Role flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 7 Client Qualified Role"
  end
  -- Is New Order V 2 Bitfield 7 Investor Qualified Role flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 7 Investor Qualified Role"
  end
  -- Is New Order V 2 Bitfield 7 Executor Qualified Role flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 7 Executor Qualified Role"
  end
  -- Is New Order V 2 Bitfield 7 Cti Code flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 7 Cti Code"
  end
  -- Is New Order V 2 Bitfield 7 Manual Order Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 7 Manual Order Indicator"
  end
  -- Is New Order V 2 Bitfield 7 Operator Id flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 7 Operator Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order V 2 Bitfield 7
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_7.bits = function(range, value, packet, parent)

  -- New Order V 2 Bitfield 7 Algorithmic Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_algorithmic_indicator, range, value)

  -- New Order V 2 Bitfield 7 Custom Group Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_custom_group_id, range, value)

  -- New Order V 2 Bitfield 7 Client Qualified Role: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_client_qualified_role, range, value)

  -- New Order V 2 Bitfield 7 Investor Qualified Role: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_investor_qualified_role, range, value)

  -- New Order V 2 Bitfield 7 Executor Qualified Role: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_executor_qualified_role, range, value)

  -- New Order V 2 Bitfield 7 Cti Code: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_cti_code, range, value)

  -- New Order V 2 Bitfield 7 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_manual_order_indicator, range, value)

  -- New Order V 2 Bitfield 7 Operator Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7_operator_id, range, value)
end

-- Dissect: New Order V 2 Bitfield 7
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_7.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_7.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_7, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order V 2 Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_6 = {}

-- Size: New Order V 2 Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_6.size = 1

-- Display: New Order V 2 Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_6.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order V 2 Bitfield 6 Display Range flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 6 Display Range"
  end
  -- Is New Order V 2 Bitfield 6 Stop Px flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 6 Stop Px"
  end
  -- Is New Order V 2 Bitfield 6 Rout Strategy flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 6 Rout Strategy"
  end
  -- Is New Order V 2 Bitfield 6 Route Delivery Method flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 6 Route Delivery Method"
  end
  -- Is New Order V 2 Bitfield 6 Ex Destination flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 6 Ex Destination"
  end
  -- Is New Order V 2 Bitfield 6 Echo Text flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 6 Echo Text"
  end
  -- Is New Order V 2 Bitfield 6 Auction Id flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 6 Auction Id"
  end
  -- Is New Order V 2 Bitfield 6 Routing Firm Id flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 6 Routing Firm Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order V 2 Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_6.bits = function(range, value, packet, parent)

  -- New Order V 2 Bitfield 6 Display Range: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_display_range, range, value)

  -- New Order V 2 Bitfield 6 Stop Px: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_stop_px, range, value)

  -- New Order V 2 Bitfield 6 Rout Strategy: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_rout_strategy, range, value)

  -- New Order V 2 Bitfield 6 Route Delivery Method: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_route_delivery_method, range, value)

  -- New Order V 2 Bitfield 6 Ex Destination: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_ex_destination, range, value)

  -- New Order V 2 Bitfield 6 Echo Text: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_echo_text, range, value)

  -- New Order V 2 Bitfield 6 Auction Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_auction_id, range, value)

  -- New Order V 2 Bitfield 6 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6_routing_firm_id, range, value)
end

-- Dissect: New Order V 2 Bitfield 6
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_6, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order V 2 Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_5 = {}

-- Size: New Order V 2 Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_5.size = 1

-- Display: New Order V 2 Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_5.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order V 2 Bitfield 5 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 5 Reserved 1"
  end
  -- Is New Order V 2 Bitfield 5 Attributed Quote flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 5 Attributed Quote"
  end
  -- Is New Order V 2 Bitfield 5 Booking Type flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 5 Booking Type"
  end
  -- Is New Order V 2 Bitfield 5 Ext Exec Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 5 Ext Exec Inst"
  end
  -- Is New Order V 2 Bitfield 5 Client Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 5 Client Id"
  end
  -- Is New Order V 2 Bitfield 5 Investor Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 5 Investor Id"
  end
  -- Is New Order V 2 Bitfield 5 Executor Id flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 5 Executor Id"
  end
  -- Is New Order V 2 Bitfield 5 Order Origination flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 5 Order Origination"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order V 2 Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_5.bits = function(range, value, packet, parent)

  -- New Order V 2 Bitfield 5 Reserved 1: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_reserved_1, range, value)

  -- New Order V 2 Bitfield 5 Attributed Quote: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_attributed_quote, range, value)

  -- New Order V 2 Bitfield 5 Booking Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_booking_type, range, value)

  -- New Order V 2 Bitfield 5 Ext Exec Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_ext_exec_inst, range, value)

  -- New Order V 2 Bitfield 5 Client Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_client_id, range, value)

  -- New Order V 2 Bitfield 5 Investor Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_investor_id, range, value)

  -- New Order V 2 Bitfield 5 Executor Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_executor_id, range, value)

  -- New Order V 2 Bitfield 5 Order Origination: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5_order_origination, range, value)
end

-- Dissect: New Order V 2 Bitfield 5
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_5, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order V 2 Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_4 = {}

-- Size: New Order V 2 Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_4.size = 1

-- Display: New Order V 2 Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_4.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order V 2 Bitfield 4 Maturity Date flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 4 Maturity Date"
  end
  -- Is New Order V 2 Bitfield 4 Strike Price flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 4 Strike Price"
  end
  -- Is New Order V 2 Bitfield 4 Put Or Call flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 4 Put Or Call"
  end
  -- Is New Order V 2 Bitfield 4 Risk Reset flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 4 Risk Reset"
  end
  -- Is New Order V 2 Bitfield 4 Open Close flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 4 Open Close"
  end
  -- Is New Order V 2 Bitfield 4 Cmta Number flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 4 Cmta Number"
  end
  -- Is New Order V 2 Bitfield 4 Target Party Id flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 4 Target Party Id"
  end
  -- Is New Order V 2 Bitfield 4 Liquidity Provision flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 4 Liquidity Provision"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order V 2 Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_4.bits = function(range, value, packet, parent)

  -- New Order V 2 Bitfield 4 Maturity Date: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_maturity_date, range, value)

  -- New Order V 2 Bitfield 4 Strike Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_strike_price, range, value)

  -- New Order V 2 Bitfield 4 Put Or Call: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_put_or_call, range, value)

  -- New Order V 2 Bitfield 4 Risk Reset: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_risk_reset, range, value)

  -- New Order V 2 Bitfield 4 Open Close: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_open_close, range, value)

  -- New Order V 2 Bitfield 4 Cmta Number: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_cmta_number, range, value)

  -- New Order V 2 Bitfield 4 Target Party Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_target_party_id, range, value)

  -- New Order V 2 Bitfield 4 Liquidity Provision: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4_liquidity_provision, range, value)
end

-- Dissect: New Order V 2 Bitfield 4
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_4, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order V 2 Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_3 = {}

-- Size: New Order V 2 Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_3.size = 1

-- Display: New Order V 2 Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_3.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order V 2 Bitfield 3 Account flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 3 Account"
  end
  -- Is New Order V 2 Bitfield 3 Display Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 3 Display Indicator"
  end
  -- Is New Order V 2 Bitfield 3 Max Remove Pct flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 3 Max Remove Pct"
  end
  -- Is New Order V 2 Bitfield 3 Discretion Amount flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 3 Discretion Amount"
  end
  -- Is New Order V 2 Bitfield 3 Peg Difference flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 3 Peg Difference"
  end
  -- Is New Order V 2 Bitfield 3 Prevent Match flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 3 Prevent Match"
  end
  -- Is New Order V 2 Bitfield 3 Locate Required flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 3 Locate Required"
  end
  -- Is New Order V 2 Bitfield 3 Expire Time flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 3 Expire Time"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order V 2 Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_3.bits = function(range, value, packet, parent)

  -- New Order V 2 Bitfield 3 Account: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_account, range, value)

  -- New Order V 2 Bitfield 3 Display Indicator: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_display_indicator, range, value)

  -- New Order V 2 Bitfield 3 Max Remove Pct: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_max_remove_pct, range, value)

  -- New Order V 2 Bitfield 3 Discretion Amount: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_discretion_amount, range, value)

  -- New Order V 2 Bitfield 3 Peg Difference: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_peg_difference, range, value)

  -- New Order V 2 Bitfield 3 Prevent Match: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_prevent_match, range, value)

  -- New Order V 2 Bitfield 3 Locate Required: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_locate_required, range, value)

  -- New Order V 2 Bitfield 3 Expire Time: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3_expire_time, range, value)
end

-- Dissect: New Order V 2 Bitfield 3
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_3, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_2 = {}

-- Size: New Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_2.size = 1

-- Display: New Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order V 2 Bitfield 2 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 2 Symbol"
  end
  -- Is New Order V 2 Bitfield 2 Symbol Sfx flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 2 Symbol Sfx"
  end
  -- Is New Order V 2 Bitfield 2 Currency flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 2 Currency"
  end
  -- Is New Order V 2 Bitfield 2 Id Source flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 2 Id Source"
  end
  -- Is New Order V 2 Bitfield 2 Security Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 2 Security Id"
  end
  -- Is New Order V 2 Bitfield 2 Security Exchange flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 2 Security Exchange"
  end
  -- Is New Order V 2 Bitfield 2 Capacity flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 2 Capacity"
  end
  -- Is New Order V 2 Bitfield 2 Routing Inst flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 2 Routing Inst"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_2.bits = function(range, value, packet, parent)

  -- New Order V 2 Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_symbol, range, value)

  -- New Order V 2 Bitfield 2 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_symbol_sfx, range, value)

  -- New Order V 2 Bitfield 2 Currency: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_currency, range, value)

  -- New Order V 2 Bitfield 2 Id Source: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_id_source, range, value)

  -- New Order V 2 Bitfield 2 Security Id: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_security_id, range, value)

  -- New Order V 2 Bitfield 2 Security Exchange: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_security_exchange, range, value)

  -- New Order V 2 Bitfield 2 Capacity: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_capacity, range, value)

  -- New Order V 2 Bitfield 2 Routing Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2_routing_inst, range, value)
end

-- Dissect: New Order V 2 Bitfield 2
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_2, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_1 = {}

-- Size: New Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_1.size = 1

-- Display: New Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order V 2 Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 1 Clearing Firm"
  end
  -- Is New Order V 2 Bitfield 1 Clearing Account flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 1 Clearing Account"
  end
  -- Is New Order V 2 Bitfield 1 Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 1 Price"
  end
  -- Is New Order V 2 Bitfield 1 Exec Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 1 Exec Inst"
  end
  -- Is New Order V 2 Bitfield 1 Ord Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 1 Ord Type"
  end
  -- Is New Order V 2 Bitfield 1 Time In Force flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 1 Time In Force"
  end
  -- Is New Order V 2 Bitfield 1 Min Qty flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 1 Min Qty"
  end
  -- Is New Order V 2 Bitfield 1 Max Floor flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order V 2 Bitfield 1 Max Floor"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_1.bits = function(range, value, packet, parent)

  -- New Order V 2 Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_clearing_firm, range, value)

  -- New Order V 2 Bitfield 1 Clearing Account: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_clearing_account, range, value)

  -- New Order V 2 Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_price, range, value)

  -- New Order V 2 Bitfield 1 Exec Inst: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_exec_inst, range, value)

  -- New Order V 2 Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_ord_type, range, value)

  -- New Order V 2 Bitfield 1 Time In Force: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_time_in_force, range, value)

  -- New Order V 2 Bitfield 1 Min Qty: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_min_qty, range, value)

  -- New Order V 2 Bitfield 1 Max Floor: 1 Bit
  parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1_max_floor, range, value)
end

-- Dissect: New Order V 2 Bitfield 1
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_bitfield_1, range, display)

  if show.structs then
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_message = {}

-- Read runtime size of: New Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: New Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_message.fields = function(buffer, offset, packet, parent, size_of_new_order_v_2_message)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cxeequities_binaryorderentry_boe_v2_0_83.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_qty.dissect(buffer, index, packet, parent)

  -- Number Of New Order V 2 Bitfields: Binary
  index, number_of_new_order_v_2_bitfields = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_new_order_v_2_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: New Order V 2 Bitfield 1
  local new_order_v_2_bitfield_1 = nil

  local new_order_v_2_bitfield_1_exists = number_of_new_order_v_2_bitfields >= 1

  if new_order_v_2_bitfield_1_exists then

    -- New Order V 2 Bitfield 1: Struct of 8 fields
    index, new_order_v_2_bitfield_1 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order V 2 Bitfield 2
  local new_order_v_2_bitfield_2 = nil

  local new_order_v_2_bitfield_2_exists = number_of_new_order_v_2_bitfields >= 2

  if new_order_v_2_bitfield_2_exists then

    -- New Order V 2 Bitfield 2: Struct of 8 fields
    index, new_order_v_2_bitfield_2 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order V 2 Bitfield 3
  local new_order_v_2_bitfield_3 = nil

  local new_order_v_2_bitfield_3_exists = number_of_new_order_v_2_bitfields >= 3

  if new_order_v_2_bitfield_3_exists then

    -- New Order V 2 Bitfield 3: Struct of 8 fields
    index, new_order_v_2_bitfield_3 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order V 2 Bitfield 4
  local new_order_v_2_bitfield_4 = nil

  local new_order_v_2_bitfield_4_exists = number_of_new_order_v_2_bitfields >= 4

  if new_order_v_2_bitfield_4_exists then

    -- New Order V 2 Bitfield 4: Struct of 8 fields
    index, new_order_v_2_bitfield_4 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order V 2 Bitfield 5
  local new_order_v_2_bitfield_5 = nil

  local new_order_v_2_bitfield_5_exists = number_of_new_order_v_2_bitfields >= 5

  if new_order_v_2_bitfield_5_exists then

    -- New Order V 2 Bitfield 5: Struct of 8 fields
    index, new_order_v_2_bitfield_5 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order V 2 Bitfield 6
  local new_order_v_2_bitfield_6 = nil

  local new_order_v_2_bitfield_6_exists = number_of_new_order_v_2_bitfields >= 6

  if new_order_v_2_bitfield_6_exists then

    -- New Order V 2 Bitfield 6: Struct of 8 fields
    index, new_order_v_2_bitfield_6 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order V 2 Bitfield 7
  local new_order_v_2_bitfield_7 = nil

  local new_order_v_2_bitfield_7_exists = number_of_new_order_v_2_bitfields >= 7

  if new_order_v_2_bitfield_7_exists then

    -- New Order V 2 Bitfield 7: Struct of 8 fields
    index, new_order_v_2_bitfield_7 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order V 2 Bitfield 8
  local new_order_v_2_bitfield_8 = nil

  local new_order_v_2_bitfield_8_exists = number_of_new_order_v_2_bitfields >= 8

  if new_order_v_2_bitfield_8_exists then

    -- New Order V 2 Bitfield 8: Struct of 8 fields
    index, new_order_v_2_bitfield_8 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order V 2 Bitfield 9
  local new_order_v_2_bitfield_9 = nil

  local new_order_v_2_bitfield_9_exists = number_of_new_order_v_2_bitfields >= 9

  if new_order_v_2_bitfield_9_exists then

    -- New Order V 2 Bitfield 9: Struct of 8 fields
    index, new_order_v_2_bitfield_9 = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_new_order_v_2_bitfields >= 1 and bit.band(new_order_v_2_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_new_order_v_2_bitfields >= 1 and bit.band(new_order_v_2_bitfield_1, 0x02) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_new_order_v_2_bitfields >= 1 and bit.band(new_order_v_2_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cxeequities_binaryorderentry_boe_v2_0_83.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_new_order_v_2_bitfields >= 1 and bit.band(new_order_v_2_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_new_order_v_2_bitfields >= 1 and bit.band(new_order_v_2_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_new_order_v_2_bitfields >= 1 and bit.band(new_order_v_2_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cxeequities_binaryorderentry_boe_v2_0_83.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_new_order_v_2_bitfields >= 1 and bit.band(new_order_v_2_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cxeequities_binaryorderentry_boe_v2_0_83.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_new_order_v_2_bitfields >= 1 and bit.band(new_order_v_2_bitfield_1, 0x80) > 0

  if max_floor_exists then
    index, max_floor = cboe_cxeequities_binaryorderentry_boe_v2_0_83.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_new_order_v_2_bitfields >= 2 and bit.band(new_order_v_2_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_cxeequities_binaryorderentry_boe_v2_0_83.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Currency
  local currency = nil

  local currency_exists = number_of_new_order_v_2_bitfields >= 2 and bit.band(new_order_v_2_bitfield_2, 0x04) > 0

  if currency_exists then
    index, currency = cboe_cxeequities_binaryorderentry_boe_v2_0_83.currency.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Id Source
  local id_source = nil

  local id_source_exists = number_of_new_order_v_2_bitfields >= 2 and bit.band(new_order_v_2_bitfield_2, 0x08) > 0

  if id_source_exists then
    index, id_source = cboe_cxeequities_binaryorderentry_boe_v2_0_83.id_source.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Id
  local security_id = nil

  local security_id_exists = number_of_new_order_v_2_bitfields >= 2 and bit.band(new_order_v_2_bitfield_2, 0x10) > 0

  if security_id_exists then
    index, security_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Security Exchange
  local security_exchange = nil

  local security_exchange_exists = number_of_new_order_v_2_bitfields >= 2 and bit.band(new_order_v_2_bitfield_2, 0x20) > 0

  if security_exchange_exists then
    index, security_exchange = cboe_cxeequities_binaryorderentry_boe_v2_0_83.security_exchange.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_new_order_v_2_bitfields >= 2 and bit.band(new_order_v_2_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cxeequities_binaryorderentry_boe_v2_0_83.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_new_order_v_2_bitfields >= 2 and bit.band(new_order_v_2_bitfield_2, 0x80) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_new_order_v_2_bitfields >= 3 and bit.band(new_order_v_2_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cxeequities_binaryorderentry_boe_v2_0_83.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_new_order_v_2_bitfields >= 3 and bit.band(new_order_v_2_bitfield_3, 0x02) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_new_order_v_2_bitfields >= 3 and bit.band(new_order_v_2_bitfield_3, 0x10) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_cxeequities_binaryorderentry_boe_v2_0_83.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_new_order_v_2_bitfields >= 3 and bit.band(new_order_v_2_bitfield_3, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cxeequities_binaryorderentry_boe_v2_0_83.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Risk Reset
  local risk_reset = nil

  local risk_reset_exists = number_of_new_order_v_2_bitfields >= 4 and bit.band(new_order_v_2_bitfield_4, 0x08) > 0

  if risk_reset_exists then
    index, risk_reset = cboe_cxeequities_binaryorderentry_boe_v2_0_83.risk_reset.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Liquidity Provision
  local liquidity_provision = nil

  local liquidity_provision_exists = number_of_new_order_v_2_bitfields >= 4 and bit.band(new_order_v_2_bitfield_4, 0x80) > 0

  if liquidity_provision_exists then
    index, liquidity_provision = cboe_cxeequities_binaryorderentry_boe_v2_0_83.liquidity_provision.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_new_order_v_2_bitfields >= 5 and bit.band(new_order_v_2_bitfield_5, 0x08) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_cxeequities_binaryorderentry_boe_v2_0_83.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Id
  local client_id = nil

  local client_id_exists = number_of_new_order_v_2_bitfields >= 5 and bit.band(new_order_v_2_bitfield_5, 0x10) > 0

  if client_id_exists then
    index, client_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Id
  local investor_id = nil

  local investor_id_exists = number_of_new_order_v_2_bitfields >= 5 and bit.band(new_order_v_2_bitfield_5, 0x20) > 0

  if investor_id_exists then
    index, investor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Id
  local executor_id = nil

  local executor_id_exists = number_of_new_order_v_2_bitfields >= 5 and bit.band(new_order_v_2_bitfield_5, 0x40) > 0

  if executor_id_exists then
    index, executor_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Origination
  local order_origination = nil

  local order_origination_exists = number_of_new_order_v_2_bitfields >= 5 and bit.band(new_order_v_2_bitfield_5, 0x80) > 0

  if order_origination_exists then
    index, order_origination = cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_origination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Algorithmic Indicator
  local algorithmic_indicator = nil

  local algorithmic_indicator_exists = number_of_new_order_v_2_bitfields >= 7 and bit.band(new_order_v_2_bitfield_7, 0x01) > 0

  if algorithmic_indicator_exists then
    index, algorithmic_indicator = cboe_cxeequities_binaryorderentry_boe_v2_0_83.algorithmic_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Client Qualified Role
  local client_qualified_role = nil

  local client_qualified_role_exists = number_of_new_order_v_2_bitfields >= 7 and bit.band(new_order_v_2_bitfield_7, 0x04) > 0

  if client_qualified_role_exists then
    index, client_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.client_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Investor Qualified Role
  local investor_qualified_role = nil

  local investor_qualified_role_exists = number_of_new_order_v_2_bitfields >= 7 and bit.band(new_order_v_2_bitfield_7, 0x08) > 0

  if investor_qualified_role_exists then
    index, investor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.investor_qualified_role.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Executor Qualified Role
  local executor_qualified_role = nil

  local executor_qualified_role_exists = number_of_new_order_v_2_bitfields >= 7 and bit.band(new_order_v_2_bitfield_7, 0x10) > 0

  if executor_qualified_role_exists then
    index, executor_qualified_role = cboe_cxeequities_binaryorderentry_boe_v2_0_83.executor_qualified_role.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_new_order_v_2_message)
  local size_of_new_order_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_message.size(buffer, offset)
  local index = offset + size_of_new_order_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.new_order_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_message.fields(buffer, offset, packet, parent, size_of_new_order_v_2_message)
    parent:set_len(size_of_new_order_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_message.fields(buffer, offset, packet, parent, size_of_new_order_v_2_message)

    return index
  end
end

-- Units
cboe_cxeequities_binaryorderentry_boe_v2_0_83.units = {}

-- Size: Units
cboe_cxeequities_binaryorderentry_boe_v2_0_83.units.size =
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_number.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_sequence.size

-- Display: Units
cboe_cxeequities_binaryorderentry_boe_v2_0_83.units.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Units
cboe_cxeequities_binaryorderentry_boe_v2_0_83.units.fields = function(buffer, offset, packet, parent, units_index)
  local index = offset

  -- Implicit Units Index
  if units_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.units_index, units_index)
    iteration:set_generated()
  end

  -- Unit Number: Binary
  index, unit_number = cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_number.dissect(buffer, index, packet, parent)

  -- Unit Sequence: Binary
  index, unit_sequence = cboe_cxeequities_binaryorderentry_boe_v2_0_83.unit_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Units
cboe_cxeequities_binaryorderentry_boe_v2_0_83.units.dissect = function(buffer, offset, packet, parent, units_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.units, buffer(offset, 0))
    local index = cboe_cxeequities_binaryorderentry_boe_v2_0_83.units.fields(buffer, offset, packet, parent, units_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.units.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.units.fields(buffer, offset, packet, parent, units_index)
  end
end

-- Logout Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_message = {}

-- Read runtime size of: Logout Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Logout Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_message.fields = function(buffer, offset, packet, parent, size_of_logout_message)
  local index = offset

  -- Logout Reason: Alphanumeric
  index, logout_reason = cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: Text
  index, logout_reason_text = cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_reason_text.dissect(buffer, index, packet, parent)

  -- Last Received Sequence Number: Binary
  index, last_received_sequence_number = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_received_sequence_number.dissect(buffer, index, packet, parent)

  -- Number Of Units: Binary
  index, number_of_units = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Units
  for units_index = 1, number_of_units do
    index, units = cboe_cxeequities_binaryorderentry_boe_v2_0_83.units.dissect(buffer, index, packet, parent, units_index)
  end

  return index
end

-- Dissect: Logout Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_message.dissect = function(buffer, offset, packet, parent, size_of_logout_message)
  local size_of_logout_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_message.size(buffer, offset)
  local index = offset + size_of_logout_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.logout_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_message.fields(buffer, offset, packet, parent, size_of_logout_message)
    parent:set_len(size_of_logout_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_message.fields(buffer, offset, packet, parent, size_of_logout_message)

    return index
  end
end

-- Param Group
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group = {}

-- Size: Param Group
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group.size =
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_length.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_type.size

-- Display: Param Group
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Param Group
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group.fields = function(buffer, offset, packet, parent, param_group_index)
  local index = offset

  -- Implicit Param Group Index
  if param_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.param_group_index, param_group_index)
    iteration:set_generated()
  end

  -- Param Group Length: Binary
  index, param_group_length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_length.dissect(buffer, index, packet, parent)

  -- Param Group Type: Binary
  index, param_group_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Param Group
cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group.dissect = function(buffer, offset, packet, parent, param_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.param_group, buffer(offset, 0))
    local index = cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group.fields(buffer, offset, packet, parent, param_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group.fields(buffer, offset, packet, parent, param_group_index)
  end
end

-- Login Response V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_v_2_message = {}

-- Read runtime size of: Login Response V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Login Response V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_v_2_message.fields = function(buffer, offset, packet, parent, size_of_login_response_v_2_message)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: Text
  index, login_response_text = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_text.dissect(buffer, index, packet, parent)

  -- No Unspecified Unit Replay: Binary
  index, no_unspecified_unit_replay = cboe_cxeequities_binaryorderentry_boe_v2_0_83.no_unspecified_unit_replay.dissect(buffer, index, packet, parent)

  -- Last Received Sequence Number: Binary
  index, last_received_sequence_number = cboe_cxeequities_binaryorderentry_boe_v2_0_83.last_received_sequence_number.dissect(buffer, index, packet, parent)

  -- Number Of Units: Binary
  index, number_of_units = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Units
  for units_index = 1, number_of_units do
    index, units = cboe_cxeequities_binaryorderentry_boe_v2_0_83.units.dissect(buffer, index, packet, parent, units_index)
  end

  -- Number Of Param Groups: Binary
  index, number_of_param_groups = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_param_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Param Group
  for param_group_index = 1, number_of_param_groups do
    index, param_group = cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group.dissect(buffer, index, packet, parent, param_group_index)
  end

  return index
end

-- Dissect: Login Response V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_login_response_v_2_message)
  local size_of_login_response_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_v_2_message.size(buffer, offset)
  local index = offset + size_of_login_response_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.login_response_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_v_2_message.fields(buffer, offset, packet, parent, size_of_login_response_v_2_message)
    parent:set_len(size_of_login_response_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_v_2_message.fields(buffer, offset, packet, parent, size_of_login_response_v_2_message)

    return index
  end
end

-- Login Request V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_request_v_2_message = {}

-- Read runtime size of: Login Request V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_request_v_2_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Login Request V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_request_v_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_request_v_2_message.fields = function(buffer, offset, packet, parent, size_of_login_request_v_2_message)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_cxeequities_binaryorderentry_boe_v2_0_83.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_cxeequities_binaryorderentry_boe_v2_0_83.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_cxeequities_binaryorderentry_boe_v2_0_83.password.dissect(buffer, index, packet, parent)

  -- Number Of Param Groups: Binary
  index, number_of_param_groups = cboe_cxeequities_binaryorderentry_boe_v2_0_83.number_of_param_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Param Group
  for param_group_index = 1, number_of_param_groups do
    index, param_group = cboe_cxeequities_binaryorderentry_boe_v2_0_83.param_group.dissect(buffer, index, packet, parent, param_group_index)
  end

  return index
end

-- Dissect: Login Request V 2 Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_request_v_2_message.dissect = function(buffer, offset, packet, parent, size_of_login_request_v_2_message)
  local size_of_login_request_v_2_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_request_v_2_message.size(buffer, offset)
  local index = offset + size_of_login_request_v_2_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.login_request_v_2_message, buffer(offset, 0))
    local current = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_request_v_2_message.fields(buffer, offset, packet, parent, size_of_login_request_v_2_message)
    parent:set_len(size_of_login_request_v_2_message)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_request_v_2_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_request_v_2_message.fields(buffer, offset, packet, parent, size_of_login_request_v_2_message)

    return index
  end
end

-- Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message = {}

-- Dissect: Message
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request V 2 Message
  if message_type == 0x37 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_request_v_2_message.dissect(buffer, offset, packet, parent)
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
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.login_response_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == 0x08 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Message
  if message_type == 0x09 then
    return offset
  end
  -- Dissect Replay Complete Message
  if message_type == 0x13 then
    return offset
  end
  -- Dissect New Order V 2 Message
  if message_type == 0x38 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.new_order_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order V 2 Message
  if message_type == 0x39 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_order_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order V 2 Message
  if message_type == 0x3A then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.modify_order_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Orders V 2 Message
  if message_type == 0x47 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_orders_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Report V 2 Message
  if message_type == 0x3C then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgment V 2 Message
  if message_type == 0x25 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_acknowledgment_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected V 2 Message
  if message_type == 0x26 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_rejected_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified V 2 Message
  if message_type == 0x27 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_modified_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated V 2 Message
  if message_type == 0x28 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_restated_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Modify Rejected V 2 Message
  if message_type == 0x29 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.user_modify_rejected_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled V 2 Message
  if message_type == 0x2A then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_cancelled_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected V 2 Message
  if message_type == 0x2B then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.cancel_rejected_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution V 2 Message
  if message_type == 0x2C then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.order_execution_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Or Correct V 2 Message
  if message_type == 0x2D then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_cancel_or_correct_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected V 2 Message
  if message_type == 0x48 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.purge_rejected_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Acknowledgment V 2 Message
  if message_type == 0x36 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.mass_cancel_acknowledgment_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Report Acknowledgment V 2 Message
  if message_type == 0x30 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_acknowledgment_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Report Reject V 2 Message
  if message_type == 0x31 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_reject_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Confirm V 2 Message
  if message_type == 0x32 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_confirm_v_2_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Report Decline V 2 Message
  if message_type == 0x33 then
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.trade_capture_report_decline_v_2_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_header = {}

-- Size: Message Header
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_header.size =
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.start_of_message.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_length.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_type.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.matching_unit.size + 
  cboe_cxeequities_binaryorderentry_boe_v2_0_83.sequence_number.size

-- Display: Message Header
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_cxeequities_binaryorderentry_boe_v2_0_83.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: Binary
  index, message_type = cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_cxeequities_binaryorderentry_boe_v2_0_83.matching_unit.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_cxeequities_binaryorderentry_boe_v2_0_83.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.fields.message_header, buffer(offset, 0))
    local index = cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cxeequities_binaryorderentry_boe_v2_0_83.packet = {}

-- Verify required size of Tcp packet
cboe_cxeequities_binaryorderentry_boe_v2_0_83.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_header.size
end

-- Dissect Packet
cboe_cxeequities_binaryorderentry_boe_v2_0_83.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 5 fields
  index, message_header = cboe_cxeequities_binaryorderentry_boe_v2_0_83.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 6, 1):le_uint()

  -- Message: Runtime Type with 27 branches
  index = cboe_cxeequities_binaryorderentry_boe_v2_0_83.message.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.init()
end

-- Dissector for Cboe CxeEquities BinaryOrderEntry Boe 2.0.83
function omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83, buffer(), omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.description, "("..buffer:len().." Bytes)")
  return cboe_cxeequities_binaryorderentry_boe_v2_0_83.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CxeEquities BinaryOrderEntry Boe 2.0.83 (Tcp)
local function omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cxeequities_binaryorderentry_boe_v2_0_83.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83
  omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CxeEquities BinaryOrderEntry Boe 2.0.83
omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83:register_heuristic("tcp", omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83_tcp_heuristic)

-- Register Cboe CxeEquities BinaryOrderEntry Boe 2.0.83 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_cxeequities_binaryorderentry_boe_v2_0_83)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.0.83
--   Date: Wednesday, May 27, 2026
--   Specification: Cboe Europe BOE2 Specification.pdf
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
