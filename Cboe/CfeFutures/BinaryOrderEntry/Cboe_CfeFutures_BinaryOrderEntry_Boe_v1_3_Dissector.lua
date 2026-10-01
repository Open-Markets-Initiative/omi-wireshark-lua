-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CfeFutures BinaryOrderEntry Boe 1.3 Protocol
local omi_cboe_cfefutures_binaryorderentry_boe_v1_3 = Proto("Omi.Cboe.CfeFutures.BinaryOrderEntry.Boe.v1.3", "Cboe CfeFutures BinaryOrderEntry Boe 1.3")

-- Protocol table
local cboe_cfefutures_binaryorderentry_boe_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CfeFutures BinaryOrderEntry Boe 1.3 Fields
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.account = ProtoField.new("Account", "cboe.cfefutures.binaryorderentry.boe.v1.3.account", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.avg_px = ProtoField.new("Avg Px", "cboe.cfefutures.binaryorderentry.boe.v1.3.avgpx", ftypes.DOUBLE)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.baseliquidityindicator", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1 = ProtoField.new("Cancel Order Bitfield 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield1", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_clearing_firm = ProtoField.new("Cancel Order Bitfield 1 Clearing Firm", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_manual_order_indicator = ProtoField.new("Cancel Order Bitfield 1 Manual Order Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield1manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_mass_cancel_id = ProtoField.new("Cancel Order Bitfield 1 Mass Cancel Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield1masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_oeoid = ProtoField.new("Cancel Order Bitfield 1 Oeoid", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield1oeoid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_product_name = ProtoField.new("Cancel Order Bitfield 1 Product Name", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield1productname", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_reserved_2 = ProtoField.new("Cancel Order Bitfield 1 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_reserved_32 = ProtoField.new("Cancel Order Bitfield 1 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield1reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_reserved_4 = ProtoField.new("Cancel Order Bitfield 1 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield1reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2 = ProtoField.new("Cancel Order Bitfield 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield2", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_mass_cancel_inst = ProtoField.new("Cancel Order Bitfield 2 Mass Cancel Inst", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield2masscancelinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_128 = ProtoField.new("Cancel Order Bitfield 2 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_16 = ProtoField.new("Cancel Order Bitfield 2 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_2 = ProtoField.new("Cancel Order Bitfield 2 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield2reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_32 = ProtoField.new("Cancel Order Bitfield 2 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_4 = ProtoField.new("Cancel Order Bitfield 2 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_64 = ProtoField.new("Cancel Order Bitfield 2 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield2reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_8 = ProtoField.new("Cancel Order Bitfield 2 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorderbitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelorigonreject", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelreason", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelrejectreason", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelledordercount", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.capacity = ProtoField.new("Capacity", "cboe.cfefutures.binaryorderentry.boe.v1.3.capacity", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.clordid", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.cfefutures.binaryorderentry.boe.v1.3.clearingaccount", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.cfefutures.binaryorderentry.boe.v1.3.clearingfirm", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.clearing_price = ProtoField.new("Clearing Price", "cboe.cfefutures.binaryorderentry.boe.v1.3.clearingprice", ftypes.DOUBLE)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.clearing_size = ProtoField.new("Clearing Size", "cboe.cfefutures.binaryorderentry.boe.v1.3.clearingsize", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.clearing_symbol = ProtoField.new("Clearing Symbol", "cboe.cfefutures.binaryorderentry.boe.v1.3.clearingsymbol", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cmta_number = ProtoField.new("Cmta Number", "cboe.cfefutures.binaryorderentry.boe.v1.3.cmtanumber", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.contra_broker = ProtoField.new("Contra Broker", "cboe.cfefutures.binaryorderentry.boe.v1.3.contrabroker", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.cfefutures.binaryorderentry.boe.v1.3.correctedprice", ftypes.DOUBLE)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.corrected_size = ProtoField.new("Corrected Size", "cboe.cfefutures.binaryorderentry.boe.v1.3.correctedsize", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cti_code = ProtoField.new("Cti Code", "cboe.cfefutures.binaryorderentry.boe.v1.3.cticode", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cum_qty = ProtoField.new("Cum Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.cumqty", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.custom_group_id = ProtoField.new("Custom Group Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.customgroupid", ftypes.UINT16)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.day_avg_px = ProtoField.new("Day Avg Px", "cboe.cfefutures.binaryorderentry.boe.v1.3.dayavgpx", ftypes.DOUBLE)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.day_cum_qty = ProtoField.new("Day Cum Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.daycumqty", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.day_order_qty = ProtoField.new("Day Order Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.dayorderqty", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.exec_id = ProtoField.new("Exec Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.execid", ftypes.UINT64)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.execrefid", ftypes.UINT64)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.expire_time = ProtoField.new("Expire Time", "cboe.cfefutures.binaryorderentry.boe.v1.3.expiretime", ftypes.UINT64)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.fee_code = ProtoField.new("Fee Code", "cboe.cfefutures.binaryorderentry.boe.v1.3.feecode", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.frequent_trader_id = ProtoField.new("Frequent Trader Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.frequenttraderid", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.last_px = ProtoField.new("Last Px", "cboe.cfefutures.binaryorderentry.boe.v1.3.lastpx", ftypes.DOUBLE)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.last_received_sequence_number = ProtoField.new("Last Received Sequence Number", "cboe.cfefutures.binaryorderentry.boe.v1.3.lastreceivedsequencenumber", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.last_shares = ProtoField.new("Last Shares", "cboe.cfefutures.binaryorderentry.boe.v1.3.lastshares", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.leavesqty", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.cfefutures.binaryorderentry.boe.v1.3.loginresponsestatus", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.cfefutures.binaryorderentry.boe.v1.3.loginresponsetext", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.cfefutures.binaryorderentry.boe.v1.3.logoutreason", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.cfefutures.binaryorderentry.boe.v1.3.logoutreasontext", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.manualorderindicator", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.masscancelid", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.cfefutures.binaryorderentry.boe.v1.3.masscancelinst", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.cfefutures.binaryorderentry.boe.v1.3.matchingunit", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.maturity_date = ProtoField.new("Maturity Date", "cboe.cfefutures.binaryorderentry.boe.v1.3.maturitydate", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.message_length = ProtoField.new("Message Length", "cboe.cfefutures.binaryorderentry.boe.v1.3.messagelength", ftypes.UINT16)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.message_type = ProtoField.new("Message Type", "cboe.cfefutures.binaryorderentry.boe.v1.3.messagetype", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.min_qty = ProtoField.new("Min Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.minqty", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1 = ProtoField.new("Modify Order Bitfield 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield1", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_cancel_orig_on_reject = ProtoField.new("Modify Order Bitfield 1 Cancel Orig On Reject", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield1cancelorigonreject", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_clearing_firm = ProtoField.new("Modify Order Bitfield 1 Clearing Firm", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_exec_inst = ProtoField.new("Modify Order Bitfield 1 Exec Inst", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield1execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_ord_type = ProtoField.new("Modify Order Bitfield 1 Ord Type", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_order_qty = ProtoField.new("Modify Order Bitfield 1 Order Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield1orderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_price = ProtoField.new("Modify Order Bitfield 1 Price", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_reserved_2 = ProtoField.new("Modify Order Bitfield 1 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_side = ProtoField.new("Modify Order Bitfield 1 Side", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield1side", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2 = ProtoField.new("Modify Order Bitfield 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield2", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_frequent_trader_id = ProtoField.new("Modify Order Bitfield 2 Frequent Trader Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield2frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_manual_order_indicator = ProtoField.new("Modify Order Bitfield 2 Manual Order Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield2manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_max_floor = ProtoField.new("Modify Order Bitfield 2 Max Floor", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield2maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_oeoid = ProtoField.new("Modify Order Bitfield 2 Oeoid", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield2oeoid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_reserved_128 = ProtoField.new("Modify Order Bitfield 2 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_reserved_4 = ProtoField.new("Modify Order Bitfield 2 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_reserved_64 = ProtoField.new("Modify Order Bitfield 2 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield2reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_stop_px = ProtoField.new("Modify Order Bitfield 2 Stop Px", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyorderbitfield2stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyrejectreason", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.multileg_reporting_type = ProtoField.new("Multileg Reporting Type", "cboe.cfefutures.binaryorderentry.boe.v1.3.multilegreportingtype", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1 = ProtoField.new("New Order Bitfield 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield1", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_clearing_account = ProtoField.new("New Order Bitfield 1 Clearing Account", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield1clearingaccount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_clearing_firm = ProtoField.new("New Order Bitfield 1 Clearing Firm", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_min_qty = ProtoField.new("New Order Bitfield 1 Min Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield1minqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_ord_type = ProtoField.new("New Order Bitfield 1 Ord Type", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_price = ProtoField.new("New Order Bitfield 1 Price", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_reserved_128 = ProtoField.new("New Order Bitfield 1 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield1reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_reserved_8 = ProtoField.new("New Order Bitfield 1 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield1reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_time_in_force = ProtoField.new("New Order Bitfield 1 Time In Force", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield1timeinforce", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2 = ProtoField.new("New Order Bitfield 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield2", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_capacity = ProtoField.new("New Order Bitfield 2 Capacity", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield2capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_128 = ProtoField.new("New Order Bitfield 2 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_16 = ProtoField.new("New Order Bitfield 2 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_2 = ProtoField.new("New Order Bitfield 2 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield2reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_32 = ProtoField.new("New Order Bitfield 2 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_4 = ProtoField.new("New Order Bitfield 2 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_8 = ProtoField.new("New Order Bitfield 2 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_symbol = ProtoField.new("New Order Bitfield 2 Symbol", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3 = ProtoField.new("New Order Bitfield 3", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield3", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_account = ProtoField.new("New Order Bitfield 3 Account", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield3account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_expire_time = ProtoField.new("New Order Bitfield 3 Expire Time", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield3expiretime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_prevent_match = ProtoField.new("New Order Bitfield 3 Prevent Match", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield3preventmatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_reserved_16 = ProtoField.new("New Order Bitfield 3 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield3reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_reserved_2 = ProtoField.new("New Order Bitfield 3 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield3reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_reserved_4 = ProtoField.new("New Order Bitfield 3 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield3reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_reserved_64 = ProtoField.new("New Order Bitfield 3 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield3reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_reserved_8 = ProtoField.new("New Order Bitfield 3 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield3reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4 = ProtoField.new("New Order Bitfield 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield4", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_cmta_number = ProtoField.new("New Order Bitfield 4 Cmta Number", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield4cmtanumber", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_maturity_date = ProtoField.new("New Order Bitfield 4 Maturity Date", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield4maturitydate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_open_close = ProtoField.new("New Order Bitfield 4 Open Close", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield4openclose", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_reserved_128 = ProtoField.new("New Order Bitfield 4 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield4reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_reserved_2 = ProtoField.new("New Order Bitfield 4 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield4reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_reserved_4 = ProtoField.new("New Order Bitfield 4 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield4reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_reserved_64 = ProtoField.new("New Order Bitfield 4 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield4reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_risk_reset = ProtoField.new("New Order Bitfield 4 Risk Reset", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield4riskreset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5 = ProtoField.new("New Order Bitfield 5", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield5", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_1 = ProtoField.new("New Order Bitfield 5 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield5reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_128 = ProtoField.new("New Order Bitfield 5 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield5reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_16 = ProtoField.new("New Order Bitfield 5 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield5reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_2 = ProtoField.new("New Order Bitfield 5 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield5reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_32 = ProtoField.new("New Order Bitfield 5 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield5reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_4 = ProtoField.new("New Order Bitfield 5 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield5reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_64 = ProtoField.new("New Order Bitfield 5 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield5reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_8 = ProtoField.new("New Order Bitfield 5 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield5reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6 = ProtoField.new("New Order Bitfield 6", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield6", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_1 = ProtoField.new("New Order Bitfield 6 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield6reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_128 = ProtoField.new("New Order Bitfield 6 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield6reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_16 = ProtoField.new("New Order Bitfield 6 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield6reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_32 = ProtoField.new("New Order Bitfield 6 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield6reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_4 = ProtoField.new("New Order Bitfield 6 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield6reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_64 = ProtoField.new("New Order Bitfield 6 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield6reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_8 = ProtoField.new("New Order Bitfield 6 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield6reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_stop_px = ProtoField.new("New Order Bitfield 6 Stop Px", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield6stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7 = ProtoField.new("New Order Bitfield 7", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield7", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_cti_code = ProtoField.new("New Order Bitfield 7 Cti Code", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield7cticode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_custom_group_id = ProtoField.new("New Order Bitfield 7 Custom Group Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield7customgroupid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_manual_order_indicator = ProtoField.new("New Order Bitfield 7 Manual Order Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield7manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_oeoid = ProtoField.new("New Order Bitfield 7 Oeoid", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield7oeoid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_reserved_1 = ProtoField.new("New Order Bitfield 7 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield7reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_reserved_16 = ProtoField.new("New Order Bitfield 7 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield7reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_reserved_4 = ProtoField.new("New Order Bitfield 7 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield7reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_reserved_8 = ProtoField.new("New Order Bitfield 7 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield7reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8 = ProtoField.new("New Order Bitfield 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield8", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_frequent_trader_id = ProtoField.new("New Order Bitfield 8 Frequent Trader Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield8frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_1 = ProtoField.new("New Order Bitfield 8 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield8reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_128 = ProtoField.new("New Order Bitfield 8 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield8reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_32 = ProtoField.new("New Order Bitfield 8 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield8reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_4 = ProtoField.new("New Order Bitfield 8 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield8reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_64 = ProtoField.new("New Order Bitfield 8 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield8reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_8 = ProtoField.new("New Order Bitfield 8 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield8reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_si_indicator = ProtoField.new("New Order Bitfield 8 Si Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.neworderbitfield8siindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.no_unspecified_unit_replay = ProtoField.new("No Unspecified Unit Replay", "cboe.cfefutures.binaryorderentry.boe.v1.3.nounspecifiedunitreplay", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_cancel_order_bitfields = ProtoField.new("Number Of Cancel Order Bitfields", "cboe.cfefutures.binaryorderentry.boe.v1.3.numberofcancelorderbitfields", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_modify_order_bitfields = ProtoField.new("Number Of Modify Order Bitfields", "cboe.cfefutures.binaryorderentry.boe.v1.3.numberofmodifyorderbitfields", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_new_order_bitfields = ProtoField.new("Number Of New Order Bitfields", "cboe.cfefutures.binaryorderentry.boe.v1.3.numberofneworderbitfields", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_param_groups = ProtoField.new("Number Of Param Groups", "cboe.cfefutures.binaryorderentry.boe.v1.3.numberofparamgroups", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_purge_order_bitfields = ProtoField.new("Number Of Purge Order Bitfields", "cboe.cfefutures.binaryorderentry.boe.v1.3.numberofpurgeorderbitfields", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_quote_results = ProtoField.new("Number Of Quote Results", "cboe.cfefutures.binaryorderentry.boe.v1.3.numberofquoteresults", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_quotes = ProtoField.new("Number Of Quotes", "cboe.cfefutures.binaryorderentry.boe.v1.3.numberofquotes", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_return_bitfields = ProtoField.new("Number Of Return Bitfields", "cboe.cfefutures.binaryorderentry.boe.v1.3.numberofreturnbitfields", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.cfefutures.binaryorderentry.boe.v1.3.numberofunits", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.oeoid = ProtoField.new("Oeoid", "cboe.cfefutures.binaryorderentry.boe.v1.3.oeoid", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.open_close = ProtoField.new("Open Close", "cboe.cfefutures.binaryorderentry.boe.v1.3.openclose", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.ord_type = ProtoField.new("Ord Type", "cboe.cfefutures.binaryorderentry.boe.v1.3.ordtype", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_id = ProtoField.new("Order Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.orderid", ftypes.UINT64)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_qty = ProtoField.new("Order Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.orderqty", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.cfefutures.binaryorderentry.boe.v1.3.orderrejectreason", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.origclordid", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.orig_time = ProtoField.new("Orig Time", "cboe.cfefutures.binaryorderentry.boe.v1.3.origtime", ftypes.UINT64)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.param_group = ProtoField.new("Param Group", "cboe.cfefutures.binaryorderentry.boe.v1.3.paramgroup", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.param_group_length = ProtoField.new("Param Group Length", "cboe.cfefutures.binaryorderentry.boe.v1.3.paramgrouplength", ftypes.UINT16)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.param_group_type = ProtoField.new("Param Group Type", "cboe.cfefutures.binaryorderentry.boe.v1.3.paramgrouptype", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.password = ProtoField.new("Password", "cboe.cfefutures.binaryorderentry.boe.v1.3.password", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.pending_status = ProtoField.new("Pending Status", "cboe.cfefutures.binaryorderentry.boe.v1.3.pendingstatus", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.prevent_match = ProtoField.new("Prevent Match", "cboe.cfefutures.binaryorderentry.boe.v1.3.preventmatch", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.price = ProtoField.new("Price", "cboe.cfefutures.binaryorderentry.boe.v1.3.price", ftypes.DOUBLE)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.product_name = ProtoField.new("Product Name", "cboe.cfefutures.binaryorderentry.boe.v1.3.productname", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1 = ProtoField.new("Purge Order Bitfield 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield1", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_clearing_firm = ProtoField.new("Purge Order Bitfield 1 Clearing Firm", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_manual_order_indicator = ProtoField.new("Purge Order Bitfield 1 Manual Order Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield1manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_mass_cancel_id = ProtoField.new("Purge Order Bitfield 1 Mass Cancel Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield1masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_mass_cancel_inst = ProtoField.new("Purge Order Bitfield 1 Mass Cancel Inst", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield1masscancelinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_oeoid = ProtoField.new("Purge Order Bitfield 1 Oeoid", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield1oeoid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_product_name = ProtoField.new("Purge Order Bitfield 1 Product Name", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield1productname", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_reserved_2 = ProtoField.new("Purge Order Bitfield 1 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_reserved_32 = ProtoField.new("Purge Order Bitfield 1 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield1reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2 = ProtoField.new("Purge Order Bitfield 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield2", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_1 = ProtoField.new("Purge Order Bitfield 2 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield2reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_128 = ProtoField.new("Purge Order Bitfield 2 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_16 = ProtoField.new("Purge Order Bitfield 2 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_2 = ProtoField.new("Purge Order Bitfield 2 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield2reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_32 = ProtoField.new("Purge Order Bitfield 2 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_4 = ProtoField.new("Purge Order Bitfield 2 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_64 = ProtoField.new("Purge Order Bitfield 2 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield2reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_8 = ProtoField.new("Purge Order Bitfield 2 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeorderbitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgerejectreason", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_group = ProtoField.new("Quote Group", "cboe.cfefutures.binaryorderentry.boe.v1.3.quotegroup", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_liquidity_indicator = ProtoField.new("Quote Liquidity Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoteliquidityindicator", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoterejectreason", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_restatement_reason = ProtoField.new("Quote Restatement Reason", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoterestatementreason", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_result = ProtoField.new("Quote Result", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoteresult", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_result_group = ProtoField.new("Quote Result Group", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoteresultgroup", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_update_id = ProtoField.new("Quote Update Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoteupdateid", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.reserved1", ftypes.BYTES)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_12 = ProtoField.new("Reserved 12", "cboe.cfefutures.binaryorderentry.boe.v1.3.reserved12", ftypes.BYTES)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_16 = ProtoField.new("Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.reserved16", ftypes.BYTES)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_17 = ProtoField.new("Reserved 17", "cboe.cfefutures.binaryorderentry.boe.v1.3.reserved17", ftypes.BYTES)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_4 = ProtoField.new("Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.reserved4", ftypes.BYTES)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_6 = ProtoField.new("Reserved 6", "cboe.cfefutures.binaryorderentry.boe.v1.3.reserved6", ftypes.BYTES)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1 = ProtoField.new("Return Bitfield 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield1", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_min_qty = ProtoField.new("Return Bitfield 1 Min Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield1minqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_ord_type = ProtoField.new("Return Bitfield 1 Ord Type", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_price = ProtoField.new("Return Bitfield 1 Price", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_reserved_128 = ProtoField.new("Return Bitfield 1 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield1reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_reserved_2 = ProtoField.new("Return Bitfield 1 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_reserved_8 = ProtoField.new("Return Bitfield 1 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield1reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_side = ProtoField.new("Return Bitfield 1 Side", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield1side", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_time_in_force = ProtoField.new("Return Bitfield 1 Time In Force", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield1timeinforce", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10 = ProtoField.new("Return Bitfield 10", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield10", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_1 = ProtoField.new("Return Bitfield 10 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield10reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_128 = ProtoField.new("Return Bitfield 10 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield10reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_16 = ProtoField.new("Return Bitfield 10 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield10reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_2 = ProtoField.new("Return Bitfield 10 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield10reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_32 = ProtoField.new("Return Bitfield 10 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield10reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_4 = ProtoField.new("Return Bitfield 10 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield10reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_64 = ProtoField.new("Return Bitfield 10 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield10reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_8 = ProtoField.new("Return Bitfield 10 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield10reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11 = ProtoField.new("Return Bitfield 11", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield11", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_1 = ProtoField.new("Return Bitfield 11 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield11reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_128 = ProtoField.new("Return Bitfield 11 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield11reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_16 = ProtoField.new("Return Bitfield 11 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield11reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_2 = ProtoField.new("Return Bitfield 11 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield11reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_32 = ProtoField.new("Return Bitfield 11 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield11reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_4 = ProtoField.new("Return Bitfield 11 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield11reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_64 = ProtoField.new("Return Bitfield 11 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield11reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_8 = ProtoField.new("Return Bitfield 11 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield11reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12 = ProtoField.new("Return Bitfield 12", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield12", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_clearing_price = ProtoField.new("Return Bitfield 12 Clearing Price", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield12clearingprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_clearing_size = ProtoField.new("Return Bitfield 12 Clearing Size", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield12clearingsize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_clearing_symbol = ProtoField.new("Return Bitfield 12 Clearing Symbol", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield12clearingsymbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_cti_code = ProtoField.new("Return Bitfield 12 Cti Code", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield12cticode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_manual_order_indicator = ProtoField.new("Return Bitfield 12 Manual Order Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield12manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_oeoid = ProtoField.new("Return Bitfield 12 Oeoid", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield12oeoid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_reserved_128 = ProtoField.new("Return Bitfield 12 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield12reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_trade_date = ProtoField.new("Return Bitfield 12 Trade Date", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield12tradedate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13 = ProtoField.new("Return Bitfield 13", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield13", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_avg_px = ProtoField.new("Return Bitfield 13 Avg Px", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield13avgpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_cum_qty = ProtoField.new("Return Bitfield 13 Cum Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield13cumqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_day_avg_px = ProtoField.new("Return Bitfield 13 Day Avg Px", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield13dayavgpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_day_cum_qty = ProtoField.new("Return Bitfield 13 Day Cum Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield13daycumqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_day_order_qty = ProtoField.new("Return Bitfield 13 Day Order Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield13dayorderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_multileg_reporting_type = ProtoField.new("Return Bitfield 13 Multileg Reporting Type", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield13multilegreportingtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_pending_status = ProtoField.new("Return Bitfield 13 Pending Status", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield13pendingstatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_reserved_64 = ProtoField.new("Return Bitfield 13 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield13reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14 = ProtoField.new("Return Bitfield 14", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield14", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_1 = ProtoField.new("Return Bitfield 14 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield14reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_128 = ProtoField.new("Return Bitfield 14 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield14reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_2 = ProtoField.new("Return Bitfield 14 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield14reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_32 = ProtoField.new("Return Bitfield 14 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield14reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_4 = ProtoField.new("Return Bitfield 14 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield14reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_64 = ProtoField.new("Return Bitfield 14 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield14reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_8 = ProtoField.new("Return Bitfield 14 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield14reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_secondary_exec_id = ProtoField.new("Return Bitfield 14 Secondary Exec Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield14secondaryexecid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15 = ProtoField.new("Return Bitfield 15", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield15", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_mass_cancel_id = ProtoField.new("Return Bitfield 15 Mass Cancel Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield15masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_1 = ProtoField.new("Return Bitfield 15 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield15reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_128 = ProtoField.new("Return Bitfield 15 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield15reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_16 = ProtoField.new("Return Bitfield 15 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield15reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_2 = ProtoField.new("Return Bitfield 15 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield15reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_32 = ProtoField.new("Return Bitfield 15 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield15reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_4 = ProtoField.new("Return Bitfield 15 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield15reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_64 = ProtoField.new("Return Bitfield 15 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield15reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16 = ProtoField.new("Return Bitfield 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield16", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_frequent_trader_id = ProtoField.new("Return Bitfield 16 Frequent Trader Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield16frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_128 = ProtoField.new("Return Bitfield 16 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield16reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_16 = ProtoField.new("Return Bitfield 16 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield16reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_2 = ProtoField.new("Return Bitfield 16 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield16reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_32 = ProtoField.new("Return Bitfield 16 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield16reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_4 = ProtoField.new("Return Bitfield 16 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield16reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_64 = ProtoField.new("Return Bitfield 16 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield16reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_8 = ProtoField.new("Return Bitfield 16 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield16reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17 = ProtoField.new("Return Bitfield 17", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield17", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_1 = ProtoField.new("Return Bitfield 17 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield17reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_128 = ProtoField.new("Return Bitfield 17 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield17reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_16 = ProtoField.new("Return Bitfield 17 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield17reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_2 = ProtoField.new("Return Bitfield 17 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield17reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_32 = ProtoField.new("Return Bitfield 17 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield17reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_4 = ProtoField.new("Return Bitfield 17 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield17reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_64 = ProtoField.new("Return Bitfield 17 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield17reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_8 = ProtoField.new("Return Bitfield 17 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield17reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2 = ProtoField.new("Return Bitfield 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield2", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_capacity = ProtoField.new("Return Bitfield 2 Capacity", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield2capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_128 = ProtoField.new("Return Bitfield 2 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_16 = ProtoField.new("Return Bitfield 2 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_2 = ProtoField.new("Return Bitfield 2 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield2reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_32 = ProtoField.new("Return Bitfield 2 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_4 = ProtoField.new("Return Bitfield 2 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_8 = ProtoField.new("Return Bitfield 2 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_symbol = ProtoField.new("Return Bitfield 2 Symbol", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3 = ProtoField.new("Return Bitfield 3", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield3", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_account = ProtoField.new("Return Bitfield 3 Account", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield3account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_clearing_account = ProtoField.new("Return Bitfield 3 Clearing Account", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield3clearingaccount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_clearing_firm = ProtoField.new("Return Bitfield 3 Clearing Firm", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield3clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_order_qty = ProtoField.new("Return Bitfield 3 Order Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield3orderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_prevent_match = ProtoField.new("Return Bitfield 3 Prevent Match", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield3preventmatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_reserved_16 = ProtoField.new("Return Bitfield 3 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield3reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_reserved_32 = ProtoField.new("Return Bitfield 3 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield3reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_reserved_8 = ProtoField.new("Return Bitfield 3 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield3reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4 = ProtoField.new("Return Bitfield 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield4", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_corrected_size = ProtoField.new("Return Bitfield 4 Corrected Size", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield4correctedsize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_maturity_date = ProtoField.new("Return Bitfield 4 Maturity Date", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield4maturitydate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_open_close = ProtoField.new("Return Bitfield 4 Open Close", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield4openclose", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_reserved_128 = ProtoField.new("Return Bitfield 4 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield4reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_reserved_16 = ProtoField.new("Return Bitfield 4 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield4reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_reserved_2 = ProtoField.new("Return Bitfield 4 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield4reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_reserved_4 = ProtoField.new("Return Bitfield 4 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield4reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_reserved_64 = ProtoField.new("Return Bitfield 4 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield4reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5 = ProtoField.new("Return Bitfield 5", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield5", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_base_liquidity_indicator = ProtoField.new("Return Bitfield 5 Base Liquidity Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield5baseliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_expire_time = ProtoField.new("Return Bitfield 5 Expire Time", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield5expiretime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_last_px = ProtoField.new("Return Bitfield 5 Last Px", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield5lastpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_last_shares = ProtoField.new("Return Bitfield 5 Last Shares", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield5lastshares", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_leaves_qty = ProtoField.new("Return Bitfield 5 Leaves Qty", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield5leavesqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_orig_cl_ord_id = ProtoField.new("Return Bitfield 5 Orig Cl Ord Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield5origclordid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_reserved_16 = ProtoField.new("Return Bitfield 5 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield5reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_reserved_32 = ProtoField.new("Return Bitfield 5 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield5reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6 = ProtoField.new("Return Bitfield 6", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield6", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_128 = ProtoField.new("Return Bitfield 6 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield6reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_16 = ProtoField.new("Return Bitfield 6 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield6reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_2 = ProtoField.new("Return Bitfield 6 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield6reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_32 = ProtoField.new("Return Bitfield 6 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield6reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_4 = ProtoField.new("Return Bitfield 6 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield6reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_64 = ProtoField.new("Return Bitfield 6 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield6reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_8 = ProtoField.new("Return Bitfield 6 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield6reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_secondary_order_id = ProtoField.new("Return Bitfield 6 Secondary Order Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield6secondaryorderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7 = ProtoField.new("Return Bitfield 7", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield7", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_128 = ProtoField.new("Return Bitfield 7 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield7reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_16 = ProtoField.new("Return Bitfield 7 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield7reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_2 = ProtoField.new("Return Bitfield 7 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield7reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_32 = ProtoField.new("Return Bitfield 7 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield7reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_4 = ProtoField.new("Return Bitfield 7 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield7reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_64 = ProtoField.new("Return Bitfield 7 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield7reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_8 = ProtoField.new("Return Bitfield 7 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield7reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_sub_liquidity_indicator = ProtoField.new("Return Bitfield 7 Sub Liquidity Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield7subliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8 = ProtoField.new("Return Bitfield 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield8", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_fee_code = ProtoField.new("Return Bitfield 8 Fee Code", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield8feecode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_128 = ProtoField.new("Return Bitfield 8 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield8reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_16 = ProtoField.new("Return Bitfield 8 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield8reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_2 = ProtoField.new("Return Bitfield 8 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield8reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_32 = ProtoField.new("Return Bitfield 8 Reserved 32", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield8reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_64 = ProtoField.new("Return Bitfield 8 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield8reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_8 = ProtoField.new("Return Bitfield 8 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield8reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_stop_px = ProtoField.new("Return Bitfield 8 Stop Px", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield8stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9 = ProtoField.new("Return Bitfield 9", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield9", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_cmta_number = ProtoField.new("Return Bitfield 9 Cmta Number", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield9cmtanumber", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_1 = ProtoField.new("Return Bitfield 9 Reserved 1", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield9reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_128 = ProtoField.new("Return Bitfield 9 Reserved 128", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield9reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_16 = ProtoField.new("Return Bitfield 9 Reserved 16", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield9reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_2 = ProtoField.new("Return Bitfield 9 Reserved 2", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield9reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_4 = ProtoField.new("Return Bitfield 9 Reserved 4", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield9reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_64 = ProtoField.new("Return Bitfield 9 Reserved 64", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield9reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_8 = ProtoField.new("Return Bitfield 9 Reserved 8", "cboe.cfefutures.binaryorderentry.boe.v1.3.returnbitfield9reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.risk_reset = ProtoField.new("Risk Reset", "cboe.cfefutures.binaryorderentry.boe.v1.3.riskreset", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.risk_reset_result = ProtoField.new("Risk Reset Result", "cboe.cfefutures.binaryorderentry.boe.v1.3.riskresetresult", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.risk_status_id = ProtoField.new("Risk Status Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.riskstatusid", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.secondaryexecid", ftypes.UINT64)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.secondaryorderid", ftypes.UINT64)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.cfefutures.binaryorderentry.boe.v1.3.sequencenumber", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.cfefutures.binaryorderentry.boe.v1.3.sessionsubid", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.side = ProtoField.new("Side", "cboe.cfefutures.binaryorderentry.boe.v1.3.side", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.size_modifier = ProtoField.new("Size Modifier", "cboe.cfefutures.binaryorderentry.boe.v1.3.sizemodifier", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.startofmessage", ftypes.UINT16)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.stop_px = ProtoField.new("Stop Px", "cboe.cfefutures.binaryorderentry.boe.v1.3.stoppx", ftypes.DOUBLE)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.cfefutures.binaryorderentry.boe.v1.3.subliquidityindicator", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.symbol_long = ProtoField.new("Symbol Long", "cboe.cfefutures.binaryorderentry.boe.v1.3.symbollong", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.cfefutures.binaryorderentry.boe.v1.3.symbolshort", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.text = ProtoField.new("Text", "cboe.cfefutures.binaryorderentry.boe.v1.3.text", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.time_in_force = ProtoField.new("Time In Force", "cboe.cfefutures.binaryorderentry.boe.v1.3.timeinforce", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.trade_date = ProtoField.new("Trade Date", "cboe.cfefutures.binaryorderentry.boe.v1.3.tradedate", ftypes.UINT32)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.cfefutures.binaryorderentry.boe.v1.3.transactiontime", ftypes.UINT64)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.unit_number = ProtoField.new("Unit Number", "cboe.cfefutures.binaryorderentry.boe.v1.3.unitnumber", ftypes.UINT8)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.cfefutures.binaryorderentry.boe.v1.3.unitsequence", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.username = ProtoField.new("Username", "cboe.cfefutures.binaryorderentry.boe.v1.3.username", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.working_price = ProtoField.new("Working Price", "cboe.cfefutures.binaryorderentry.boe.v1.3.workingprice", ftypes.DOUBLE)

-- Cboe CfeFutures BinaryOrderEntry Boe 1.3 Framing
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.message_header = ProtoField.new("Message Header", "cboe.cfefutures.binaryorderentry.boe.v1.3.messageheader", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.packet = ProtoField.new("Packet", "cboe.cfefutures.binaryorderentry.boe.v1.3.packet", ftypes.STRING)

-- Cboe CfeFutures BinaryOrderEntry 1.3 Application Messages
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelordermessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_rejected_message = ProtoField.new("Cancel Rejected Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.cancelrejectedmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.clientheartbeatmessage", ftypes.BYTES)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.loginrequestmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.loginresponsemessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.logout_message = ProtoField.new("Logout Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.logoutmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.logout_request_message = ProtoField.new("Logout Request Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.logoutrequestmessage", ftypes.BYTES)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.mass_cancel_acknowledgment_message = ProtoField.new("Mass Cancel Acknowledgment Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.masscancelacknowledgmentmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_message = ProtoField.new("Modify Order Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.modifyordermessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_message = ProtoField.new("New Order Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.newordermessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_acknowledgment_message = ProtoField.new("Order Acknowledgment Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.orderacknowledgmentmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.ordercancelledmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_execution_message = ProtoField.new("Order Execution Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.orderexecutionmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_modified_message = ProtoField.new("Order Modified Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.ordermodifiedmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.orderrejectedmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_message = ProtoField.new("Purge Order Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgeordermessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_rejected_message = ProtoField.new("Purge Rejected Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.purgerejectedmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_cancelled_message = ProtoField.new("Quote Cancelled Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.quotecancelledmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_execution_message = ProtoField.new("Quote Execution Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoteexecutionmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_restated_message = ProtoField.new("Quote Restated Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoterestatedmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_update_acknowledgment_message = ProtoField.new("Quote Update Acknowledgment Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoteupdateacknowledgmentmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_update_message = ProtoField.new("Quote Update Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoteupdatemessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_update_rejected_message = ProtoField.new("Quote Update Rejected Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoteupdaterejectedmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.replaycompletemessage", ftypes.BYTES)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reset_risk_message = ProtoField.new("Reset Risk Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.resetriskmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.risk_reset_acknowledgment_message = ProtoField.new("Risk Reset Acknowledgment Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.riskresetacknowledgmentmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.server_heartbeat_message = ProtoField.new("Server Heartbeat Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.serverheartbeatmessage", ftypes.BYTES)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.tas_quote_restatement_message = ProtoField.new("Tas Quote Restatement Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.tasquoterestatementmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.tas_restatement_message = ProtoField.new("Tas Restatement Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.tasrestatementmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.trade_cancel_or_correct_message = ProtoField.new("Trade Cancel Or Correct Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.tradecancelorcorrectmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.user_modify_rejected_message = ProtoField.new("User Modify Rejected Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.usermodifyrejectedmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.variance_quote_restatement_message = ProtoField.new("Variance Quote Restatement Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.variancequoterestatementmessage", ftypes.STRING)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.variance_restatement_message = ProtoField.new("Variance Restatement Message", "cboe.cfefutures.binaryorderentry.boe.v1.3.variancerestatementmessage", ftypes.STRING)

-- Cboe CfeFutures BinaryOrderEntry Boe 1.3 Generated Fields
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.param_group_index = ProtoField.new("Param Group Index", "cboe.cfefutures.binaryorderentry.boe.v1.3.paramgroupindex", ftypes.UINT16)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_group_index = ProtoField.new("Quote Group Index", "cboe.cfefutures.binaryorderentry.boe.v1.3.quotegroupindex", ftypes.UINT16)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_result_group_index = ProtoField.new("Quote Result Group Index", "cboe.cfefutures.binaryorderentry.boe.v1.3.quoteresultgroupindex", ftypes.UINT16)
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.unit_sequence_index = ProtoField.new("Unit Sequence Index", "cboe.cfefutures.binaryorderentry.boe.v1.3.unitsequenceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CfeFutures BinaryOrderEntry Boe 1.3 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.repeating_groups = true
show.indexes = true

-- Register Cboe CfeFutures BinaryOrderEntry Boe 1.3 Show Options
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_application_messages then
    show.application_messages = omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_headers then
    show.headers = omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_structs then
    show.structs = omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_indexes then
    show.indexes = omi_cboe_cfefutures_binaryorderentry_boe_v1_3.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cboe CfeFutures BinaryOrderEntry Boe 1.3 Fields
-----------------------------------------------------------------------

-- Account
cboe_cfefutures_binaryorderentry_boe_v1_3.account = {}

-- Size: Account
cboe_cfefutures_binaryorderentry_boe_v1_3.account.size = 16

-- Display: Account
cboe_cfefutures_binaryorderentry_boe_v1_3.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
cboe_cfefutures_binaryorderentry_boe_v1_3.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.account.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.account, range, value, display)

  return offset + length, value
end

-- Avg Px
cboe_cfefutures_binaryorderentry_boe_v1_3.avg_px = {}

-- Size: Avg Px
cboe_cfefutures_binaryorderentry_boe_v1_3.avg_px.size = 8

-- Display: Avg Px
cboe_cfefutures_binaryorderentry_boe_v1_3.avg_px.display = function(value)
  return "Avg Px: "..value
end

-- Translate: Avg Px
cboe_cfefutures_binaryorderentry_boe_v1_3.avg_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Avg Px
cboe_cfefutures_binaryorderentry_boe_v1_3.avg_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.avg_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cfefutures_binaryorderentry_boe_v1_3.avg_px.translate(raw)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.avg_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.avg_px, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator.display = function(value)
  if value == "A" then
    return "Base Liquidity Indicator: Added Liquidity (A)"
  end
  if value == "R" then
    return "Base Liquidity Indicator: Removed Liquidity (R)"
  end
  if value == "C" then
    return "Base Liquidity Indicator: Market Opening (C)"
  end

  return "Base Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Base Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Cancel Orig On Reject
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_orig_on_reject.display = function(value)
  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Modification Fails (Y)"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_orig_on_reject.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Cancel Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reason = {}

-- Size: Cancel Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reason.display = function(value)
  if value == "A" then
    return "Cancel Reason: Admin (A)"
  end
  if value == "B" then
    return "Cancel Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Cancel Reason: Unknown Product Name (C)"
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
  if value == "U" then
    return "Cancel Reason: User Requested (U)"
  end
  if value == "V" then
    return "Cancel Reason: Would Wash (V)"
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
    return "Cancel Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Cancel Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Cancel Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Cancel Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Cancel Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Cancel Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reason: Session End (z)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reject_reason.display = function(value)
  if value == "A" then
    return "Cancel Reject Reason: Admin (A)"
  end
  if value == "B" then
    return "Cancel Reject Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Cancel Reject Reason: Unknown Product Name (C)"
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
  if value == "U" then
    return "Cancel Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Cancel Reject Reason: Would Wash (V)"
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
    return "Cancel Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Cancel Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Cancel Reject Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Cancel Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Cancel Reject Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Cancel Reject Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reject Reason: Session End (z)"
  end

  return "Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancelled Order Count
cboe_cfefutures_binaryorderentry_boe_v1_3.cancelled_order_count = {}

-- Size: Cancelled Order Count
cboe_cfefutures_binaryorderentry_boe_v1_3.cancelled_order_count.size = 4

-- Display: Cancelled Order Count
cboe_cfefutures_binaryorderentry_boe_v1_3.cancelled_order_count.display = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_cfefutures_binaryorderentry_boe_v1_3.cancelled_order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.cancelled_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cancelled_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_cfefutures_binaryorderentry_boe_v1_3.capacity = {}

-- Size: Capacity
cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.size = 1

-- Display: Capacity
cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.display = function(value)
  if value == "C" then
    return "Capacity: Customer (C)"
  end
  if value == "F" then
    return "Capacity: Firm (F)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account = {}

-- Size: Clearing Account
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.size = 4

-- Display: Clearing Account
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Firm
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm = {}

-- Size: Clearing Firm
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.size = 4

-- Display: Clearing Firm
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Clearing Price
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price = {}

-- Size: Clearing Price
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.size = 8

-- Display: Clearing Price
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.display = function(value)
  return "Clearing Price: "..value
end

-- Translate: Clearing Price
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Clearing Price
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.translate(raw)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.clearing_price, range, value, display)

  return offset + length, value
end

-- Clearing Size
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_size = {}

-- Size: Clearing Size
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_size.size = 4

-- Display: Clearing Size
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_size.display = function(value)
  return "Clearing Size: "..value
end

-- Dissect: Clearing Size
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.clearing_size, range, value, display)

  return offset + length, value
end

-- Clearing Symbol
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_symbol = {}

-- Size: Clearing Symbol
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_symbol.size = 8

-- Display: Clearing Symbol
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Symbol: No Value"
  end

  return "Clearing Symbol: "..value
end

-- Dissect: Clearing Symbol
cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_symbol.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.clearing_symbol, range, value, display)

  return offset + length, value
end

-- Cmta Number
cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number = {}

-- Size: Cmta Number
cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.size = 4

-- Display: Cmta Number
cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.display = function(value)
  return "Cmta Number: "..value
end

-- Dissect: Cmta Number
cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cmta_number, range, value, display)

  return offset + length, value
end

-- Contra Broker
cboe_cfefutures_binaryorderentry_boe_v1_3.contra_broker = {}

-- Size: Contra Broker
cboe_cfefutures_binaryorderentry_boe_v1_3.contra_broker.size = 4

-- Display: Contra Broker
cboe_cfefutures_binaryorderentry_boe_v1_3.contra_broker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Broker: No Value"
  end

  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
cboe_cfefutures_binaryorderentry_boe_v1_3.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.contra_broker.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_price = {}

-- Size: Corrected Price
cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_price.size = 8

-- Display: Corrected Price
cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Price
cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_price.translate(raw)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Size
cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_size = {}

-- Size: Corrected Size
cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_size.size = 4

-- Display: Corrected Size
cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_size.display = function(value)
  return "Corrected Size: "..value
end

-- Dissect: Corrected Size
cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.corrected_size, range, value, display)

  return offset + length, value
end

-- Cti Code
cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code = {}

-- Size: Cti Code
cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.size = 1

-- Display: Cti Code
cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.display = function(value)
  if value == "1" then
    return "Cti Code: Cti 2 (1)"
  end
  if value == "2" then
    return "Cti Code: Cti 2 (2)"
  end
  if value == "3" then
    return "Cti Code: Cti 3 (3)"
  end
  if value == "4" then
    return "Cti Code: Cti 4 (4)"
  end

  return "Cti Code: Unknown("..value..")"
end

-- Dissect: Cti Code
cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cti_code, range, value, display)

  return offset + length, value
end

-- Cum Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.cum_qty = {}

-- Size: Cum Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.cum_qty.size = 4

-- Display: Cum Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Custom Group Id
cboe_cfefutures_binaryorderentry_boe_v1_3.custom_group_id = {}

-- Size: Custom Group Id
cboe_cfefutures_binaryorderentry_boe_v1_3.custom_group_id.size = 2

-- Display: Custom Group Id
cboe_cfefutures_binaryorderentry_boe_v1_3.custom_group_id.display = function(value)
  return "Custom Group Id: "..value
end

-- Dissect: Custom Group Id
cboe_cfefutures_binaryorderentry_boe_v1_3.custom_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.custom_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.custom_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.custom_group_id, range, value, display)

  return offset + length, value
end

-- Day Avg Px
cboe_cfefutures_binaryorderentry_boe_v1_3.day_avg_px = {}

-- Size: Day Avg Px
cboe_cfefutures_binaryorderentry_boe_v1_3.day_avg_px.size = 8

-- Display: Day Avg Px
cboe_cfefutures_binaryorderentry_boe_v1_3.day_avg_px.display = function(value)
  return "Day Avg Px: "..value
end

-- Translate: Day Avg Px
cboe_cfefutures_binaryorderentry_boe_v1_3.day_avg_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Day Avg Px
cboe_cfefutures_binaryorderentry_boe_v1_3.day_avg_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.day_avg_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cfefutures_binaryorderentry_boe_v1_3.day_avg_px.translate(raw)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.day_avg_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.day_avg_px, range, value, display)

  return offset + length, value
end

-- Day Cum Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.day_cum_qty = {}

-- Size: Day Cum Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.day_cum_qty.size = 4

-- Display: Day Cum Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.day_cum_qty.display = function(value)
  return "Day Cum Qty: "..value
end

-- Dissect: Day Cum Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.day_cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.day_cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.day_cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.day_cum_qty, range, value, display)

  return offset + length, value
end

-- Day Order Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.day_order_qty = {}

-- Size: Day Order Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.day_order_qty.size = 4

-- Display: Day Order Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.day_order_qty.display = function(value)
  return "Day Order Qty: "..value
end

-- Dissect: Day Order Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.day_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.day_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.day_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.day_order_qty, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id = {}

-- Size: Exec Id
cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.size = 8

-- Display: Exec Id
cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
cboe_cfefutures_binaryorderentry_boe_v1_3.exec_ref_id = {}

-- Size: Exec Ref Id
cboe_cfefutures_binaryorderentry_boe_v1_3.exec_ref_id.size = 8

-- Display: Exec Ref Id
cboe_cfefutures_binaryorderentry_boe_v1_3.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_cfefutures_binaryorderentry_boe_v1_3.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time = {}

-- Size: Expire Time
cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.size = 8

-- Display: Expire Time
cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expire Time
cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Fee Code
cboe_cfefutures_binaryorderentry_boe_v1_3.fee_code = {}

-- Size: Fee Code
cboe_cfefutures_binaryorderentry_boe_v1_3.fee_code.size = 2

-- Display: Fee Code
cboe_cfefutures_binaryorderentry_boe_v1_3.fee_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fee Code: No Value"
  end

  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_cfefutures_binaryorderentry_boe_v1_3.fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.fee_code.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Frequent Trader Id
cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id = {}

-- Size: Frequent Trader Id
cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.size = 6

-- Display: Frequent Trader Id
cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Frequent Trader Id: No Value"
  end

  return "Frequent Trader Id: "..value
end

-- Dissect: Frequent Trader Id
cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.frequent_trader_id, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_cfefutures_binaryorderentry_boe_v1_3.last_px = {}

-- Size: Last Px
cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.size = 8

-- Display: Last Px
cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.translate(raw)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Received Sequence Number
cboe_cfefutures_binaryorderentry_boe_v1_3.last_received_sequence_number = {}

-- Size: Last Received Sequence Number
cboe_cfefutures_binaryorderentry_boe_v1_3.last_received_sequence_number.size = 4

-- Display: Last Received Sequence Number
cboe_cfefutures_binaryorderentry_boe_v1_3.last_received_sequence_number.display = function(value)
  return "Last Received Sequence Number: "..value
end

-- Dissect: Last Received Sequence Number
cboe_cfefutures_binaryorderentry_boe_v1_3.last_received_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.last_received_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.last_received_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.last_received_sequence_number, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares = {}

-- Size: Last Shares
cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.size = 4

-- Display: Last Shares
cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty = {}

-- Size: Leaves Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_status = {}

-- Size: Login Response Status
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_status.size = 1

-- Display: Login Response Status
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_status.display = function(value)
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
    return "Login Response Status: Invalid Return Bit Field In Login Message (F)"
  end
  if value == "M" then
    return "Login Response Status: Invalid Login Request Message Structure (M)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_text = {}

-- Size: Login Response Text
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_text.size = 60

-- Display: Login Response Text
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Login Response Text: No Value"
  end

  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_text.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason = {}

-- Size: Logout Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason.size = 1

-- Display: Logout Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason.display = function(value)
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
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Reason Text
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logout Reason Text: No Value"
  end

  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason_text.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Manual Order Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator = {}

-- Size: Manual Order Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.size = 1

-- Display: Manual Order Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.display = function(value)
  if value == "Y" then
    return "Manual Order Indicator: Manual Order Entry (Y)"
  end
  if value == "N" then
    return "Manual Order Indicator: Automated Order Entry (N)"
  end
  if value == "1" then
    return "Manual Order Indicator: Simple Instrument Execution (1)"
  end
  if value == "2" then
    return "Manual Order Indicator: Simple Instrument Execution That Is Part Of A Spread Execution (2)"
  end
  if value == "3" then
    return "Manual Order Indicator: Spread Instrument Execution (3)"
  end

  return "Manual Order Indicator: Unknown("..value..")"
end

-- Dissect: Manual Order Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.manual_order_indicator, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_id = {}

-- Size: Mass Cancel Id
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_id.size = 20

-- Display: Mass Cancel Id
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Id: No Value"
  end

  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_id.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Inst
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_inst.size = 16

-- Display: Mass Cancel Inst
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Inst: No Value"
  end

  return "Mass Cancel Inst: "..value
end

-- Dissect: Mass Cancel Inst
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_inst.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.mass_cancel_inst, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_cfefutures_binaryorderentry_boe_v1_3.matching_unit = {}

-- Size: Matching Unit
cboe_cfefutures_binaryorderentry_boe_v1_3.matching_unit.size = 1

-- Display: Matching Unit
cboe_cfefutures_binaryorderentry_boe_v1_3.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_cfefutures_binaryorderentry_boe_v1_3.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Maturity Date
cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date = {}

-- Size: Maturity Date
cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.size = 4

-- Display: Maturity Date
cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Maturity Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Maturity Date
cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cfefutures_binaryorderentry_boe_v1_3.message_length = {}

-- Size: Message Length
cboe_cfefutures_binaryorderentry_boe_v1_3.message_length.size = 2

-- Display: Message Length
cboe_cfefutures_binaryorderentry_boe_v1_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cfefutures_binaryorderentry_boe_v1_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cfefutures_binaryorderentry_boe_v1_3.message_type = {}

-- Size: Message Type
cboe_cfefutures_binaryorderentry_boe_v1_3.message_type.size = 1

-- Display: Message Type
cboe_cfefutures_binaryorderentry_boe_v1_3.message_type.display = function(value)
  if value == 0x37 then
    return "Message Type: Login Request Message (0x37)"
  end
  if value == 0x02 then
    return "Message Type: Logout Request Message (0x02)"
  end
  if value == 0x03 then
    return "Message Type: Client Heartbeat Message (0x03)"
  end
  if value == 0x24 then
    return "Message Type: Login Response Message (0x24)"
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
    return "Message Type: New Order Message (0x38)"
  end
  if value == 0x39 then
    return "Message Type: Cancel Order Message (0x39)"
  end
  if value == 0x3A then
    return "Message Type: Modify Order Message (0x3A)"
  end
  if value == 0x70 then
    return "Message Type: Quote Update Message (0x70)"
  end
  if value == 0x47 then
    return "Message Type: Purge Order Message (0x47)"
  end
  if value == 0x56 then
    return "Message Type: Reset Risk Message (0x56)"
  end
  if value == 0x25 then
    return "Message Type: Order Acknowledgment Message (0x25)"
  end
  if value == 0x71 then
    return "Message Type: Quote Update Acknowledgment Message (0x71)"
  end
  if value == 0x26 then
    return "Message Type: Order Rejected Message (0x26)"
  end
  if value == 0x78 then
    return "Message Type: Quote Update Rejected Message (0x78)"
  end
  if value == 0x27 then
    return "Message Type: Order Modified Message (0x27)"
  end
  if value == 0x72 then
    return "Message Type: Quote Restated Message (0x72)"
  end
  if value == 0x29 then
    return "Message Type: User Modify Rejected Message (0x29)"
  end
  if value == 0x2A then
    return "Message Type: Order Cancelled Message (0x2A)"
  end
  if value == 0x73 then
    return "Message Type: Quote Cancelled Message (0x73)"
  end
  if value == 0x2B then
    return "Message Type: Cancel Rejected Message (0x2B)"
  end
  if value == 0x2C then
    return "Message Type: Order Execution Message (0x2C)"
  end
  if value == 0x74 then
    return "Message Type: Quote Execution Message (0x74)"
  end
  if value == 0x2D then
    return "Message Type: Trade Cancel Or Correct Message (0x2D)"
  end
  if value == 0x48 then
    return "Message Type: Purge Rejected Message (0x48)"
  end
  if value == 0x57 then
    return "Message Type: Risk Reset Acknowledgment Message (0x57)"
  end
  if value == 0x36 then
    return "Message Type: Mass Cancel Acknowledgment Message (0x36)"
  end
  if value == 0x49 then
    return "Message Type: Tas Restatement Message (0x49)"
  end
  if value == 0x4A then
    return "Message Type: Variance Restatement Message (0x4A)"
  end
  if value == 0x75 then
    return "Message Type: Tas Quote Restatement Message (0x75)"
  end
  if value == 0x76 then
    return "Message Type: Variance Quote Restatement Message (0x76)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_cfefutures_binaryorderentry_boe_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty = {}

-- Size: Min Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.size = 4

-- Display: Min Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_reject_reason.display = function(value)
  if value == "A" then
    return "Modify Reject Reason: Admin (A)"
  end
  if value == "B" then
    return "Modify Reject Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Modify Reject Reason: Unknown Product Name (C)"
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
  if value == "U" then
    return "Modify Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Modify Reject Reason: Would Wash (V)"
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
    return "Modify Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Modify Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Modify Reject Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Modify Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Modify Reject Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Modify Reject Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Modify Reject Reason: Session End (z)"
  end

  return "Modify Reject Reason: Unknown("..value..")"
end

-- Dissect: Modify Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- Multileg Reporting Type
cboe_cfefutures_binaryorderentry_boe_v1_3.multileg_reporting_type = {}

-- Size: Multileg Reporting Type
cboe_cfefutures_binaryorderentry_boe_v1_3.multileg_reporting_type.size = 1

-- Display: Multileg Reporting Type
cboe_cfefutures_binaryorderentry_boe_v1_3.multileg_reporting_type.display = function(value)
  return "Multileg Reporting Type: "..value
end

-- Dissect: Multileg Reporting Type
cboe_cfefutures_binaryorderentry_boe_v1_3.multileg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.multileg_reporting_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.multileg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.multileg_reporting_type, range, value, display)

  return offset + length, value
end

-- No Unspecified Unit Replay
cboe_cfefutures_binaryorderentry_boe_v1_3.no_unspecified_unit_replay = {}

-- Size: No Unspecified Unit Replay
cboe_cfefutures_binaryorderentry_boe_v1_3.no_unspecified_unit_replay.size = 1

-- Display: No Unspecified Unit Replay
cboe_cfefutures_binaryorderentry_boe_v1_3.no_unspecified_unit_replay.display = function(value)
  if value == 0 then
    return "No Unspecified Unit Replay: False (0)"
  end
  if value == 1 then
    return "No Unspecified Unit Replay: True (1)"
  end

  return "No Unspecified Unit Replay: Unknown("..value..")"
end

-- Dissect: No Unspecified Unit Replay
cboe_cfefutures_binaryorderentry_boe_v1_3.no_unspecified_unit_replay.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.no_unspecified_unit_replay.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.no_unspecified_unit_replay.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.no_unspecified_unit_replay, range, value, display)

  return offset + length, value
end

-- Number Of Cancel Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_cancel_order_bitfields = {}

-- Size: Number Of Cancel Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_cancel_order_bitfields.size = 1

-- Display: Number Of Cancel Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_cancel_order_bitfields.display = function(value)
  return "Number Of Cancel Order Bitfields: "..value
end

-- Dissect: Number Of Cancel Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_cancel_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_cancel_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_cancel_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_cancel_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Modify Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_modify_order_bitfields = {}

-- Size: Number Of Modify Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_modify_order_bitfields.size = 1

-- Display: Number Of Modify Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_modify_order_bitfields.display = function(value)
  return "Number Of Modify Order Bitfields: "..value
end

-- Dissect: Number Of Modify Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_modify_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_modify_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_modify_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_modify_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of New Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_new_order_bitfields = {}

-- Size: Number Of New Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_new_order_bitfields.size = 1

-- Display: Number Of New Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_new_order_bitfields.display = function(value)
  return "Number Of New Order Bitfields: "..value
end

-- Dissect: Number Of New Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_new_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_new_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_new_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_new_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Param Groups
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_param_groups = {}

-- Size: Number Of Param Groups
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_param_groups.size = 1

-- Display: Number Of Param Groups
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_param_groups.display = function(value)
  return "Number Of Param Groups: "..value
end

-- Dissect: Number Of Param Groups
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_param_groups.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_param_groups.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_param_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_param_groups, range, value, display)

  return offset + length, value
end

-- Number Of Purge Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_purge_order_bitfields = {}

-- Size: Number Of Purge Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_purge_order_bitfields.size = 1

-- Display: Number Of Purge Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_purge_order_bitfields.display = function(value)
  return "Number Of Purge Order Bitfields: "..value
end

-- Dissect: Number Of Purge Order Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_purge_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_purge_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_purge_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_purge_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Quote Results
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quote_results = {}

-- Size: Number Of Quote Results
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quote_results.size = 1

-- Display: Number Of Quote Results
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quote_results.display = function(value)
  return "Number Of Quote Results: "..value
end

-- Dissect: Number Of Quote Results
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quote_results.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quote_results.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quote_results.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_quote_results, range, value, display)

  return offset + length, value
end

-- Number Of Quotes
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quotes = {}

-- Size: Number Of Quotes
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quotes.size = 1

-- Display: Number Of Quotes
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quotes.display = function(value)
  return "Number Of Quotes: "..value
end

-- Dissect: Number Of Quotes
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quotes.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quotes.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_quotes, range, value, display)

  return offset + length, value
end

-- Number Of Return Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields = {}

-- Size: Number Of Return Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.size = 1

-- Display: Number Of Return Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.display = function(value)
  return "Number Of Return Bitfields: "..value
end

-- Dissect: Number Of Return Bitfields
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_return_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Units
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_units = {}

-- Size: Number Of Units
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_units.size = 1

-- Display: Number Of Units
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Oeoid
cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid = {}

-- Size: Oeoid
cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.size = 18

-- Display: Oeoid
cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Oeoid: No Value"
  end

  return "Oeoid: "..value
end

-- Dissect: Oeoid
cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.oeoid, range, value, display)

  return offset + length, value
end

-- Open Close
cboe_cfefutures_binaryorderentry_boe_v1_3.open_close = {}

-- Size: Open Close
cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.size = 1

-- Display: Open Close
cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.display = function(value)
  if value == "O" then
    return "Open Close: Open (O)"
  end
  if value == "C" then
    return "Open Close: Close (C)"
  end
  if value == "N" then
    return "Open Close: None (N)"
  end

  return "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.open_close, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type = {}

-- Size: Ord Type
cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.size = 1

-- Display: Ord Type
cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.display = function(value)
  if value == "1" then
    return "Ord Type: Market (1)"
  end
  if value == "2" then
    return "Ord Type: Limit (2)"
  end
  if value == "4" then
    return "Ord Type: Stop Limit (4)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cfefutures_binaryorderentry_boe_v1_3.order_id = {}

-- Size: Order Id
cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.size = 8

-- Display: Order Id
cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty = {}

-- Size: Order Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.size = 4

-- Display: Order Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.order_reject_reason.display = function(value)
  if value == "A" then
    return "Order Reject Reason: Admin (A)"
  end
  if value == "B" then
    return "Order Reject Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Order Reject Reason: Unknown Product Name (C)"
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
  if value == "U" then
    return "Order Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Order Reject Reason: Would Wash (V)"
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
    return "Order Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Order Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Order Reject Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Order Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Order Reject Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Order Reject Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Order Reject Reason: Session End (z)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Orig Time
cboe_cfefutures_binaryorderentry_boe_v1_3.orig_time = {}

-- Size: Orig Time
cboe_cfefutures_binaryorderentry_boe_v1_3.orig_time.size = 8

-- Display: Orig Time
cboe_cfefutures_binaryorderentry_boe_v1_3.orig_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Orig Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Orig Time
cboe_cfefutures_binaryorderentry_boe_v1_3.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Param Group Length
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_length = {}

-- Size: Param Group Length
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_length.size = 2

-- Display: Param Group Length
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_length.display = function(value)
  return "Param Group Length: "..value
end

-- Dissect: Param Group Length
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.param_group_length, range, value, display)

  return offset + length, value
end

-- Param Group Type
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_type = {}

-- Size: Param Group Type
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_type.size = 1

-- Display: Param Group Type
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_type.display = function(value)
  return "Param Group Type: "..value
end

-- Dissect: Param Group Type
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.param_group_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_cfefutures_binaryorderentry_boe_v1_3.password = {}

-- Size: Password
cboe_cfefutures_binaryorderentry_boe_v1_3.password.size = 10

-- Display: Password
cboe_cfefutures_binaryorderentry_boe_v1_3.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
cboe_cfefutures_binaryorderentry_boe_v1_3.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.password.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.password, range, value, display)

  return offset + length, value
end

-- Pending Status
cboe_cfefutures_binaryorderentry_boe_v1_3.pending_status = {}

-- Size: Pending Status
cboe_cfefutures_binaryorderentry_boe_v1_3.pending_status.size = 1

-- Display: Pending Status
cboe_cfefutures_binaryorderentry_boe_v1_3.pending_status.display = function(value)
  if value == "N" then
    return "Pending Status: Not Applicable (N)"
  end
  if value == "P" then
    return "Pending Status: Pending (P)"
  end

  return "Pending Status: Unknown("..value..")"
end

-- Dissect: Pending Status
cboe_cfefutures_binaryorderentry_boe_v1_3.pending_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.pending_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.pending_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.pending_status, range, value, display)

  return offset + length, value
end

-- Prevent Match
cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match = {}

-- Size: Prevent Match
cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.size = 3

-- Display: Prevent Match
cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Prevent Match: No Value"
  end

  return "Prevent Match: "..value
end

-- Dissect: Prevent Match
cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.prevent_match, range, value, display)

  return offset + length, value
end

-- Price
cboe_cfefutures_binaryorderentry_boe_v1_3.price = {}

-- Size: Price
cboe_cfefutures_binaryorderentry_boe_v1_3.price.size = 8

-- Display: Price
cboe_cfefutures_binaryorderentry_boe_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_cfefutures_binaryorderentry_boe_v1_3.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cfefutures_binaryorderentry_boe_v1_3.price.translate(raw)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Product Name
cboe_cfefutures_binaryorderentry_boe_v1_3.product_name = {}

-- Size: Product Name
cboe_cfefutures_binaryorderentry_boe_v1_3.product_name.size = 6

-- Display: Product Name
cboe_cfefutures_binaryorderentry_boe_v1_3.product_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Name: No Value"
  end

  return "Product Name: "..value
end

-- Dissect: Product Name
cboe_cfefutures_binaryorderentry_boe_v1_3.product_name.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.product_name.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.product_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.product_name, range, value, display)

  return offset + length, value
end

-- Purge Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_reject_reason = {}

-- Size: Purge Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_reject_reason.size = 1

-- Display: Purge Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_reject_reason.display = function(value)
  if value == "A" then
    return "Purge Reject Reason: Admin (A)"
  end
  if value == "B" then
    return "Purge Reject Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Purge Reject Reason: Unknown Product Name (C)"
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
  if value == "U" then
    return "Purge Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Purge Reject Reason: Would Wash (V)"
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
    return "Purge Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Purge Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Purge Reject Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Purge Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Purge Reject Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Purge Reject Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Purge Reject Reason: Session End (z)"
  end

  return "Purge Reject Reason: Unknown("..value..")"
end

-- Dissect: Purge Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_liquidity_indicator = {}

-- Size: Quote Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_liquidity_indicator.size = 1

-- Display: Quote Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_liquidity_indicator.display = function(value)
  if value == "C" then
    return "Quote Liquidity Indicator: Carried Order Indicator (C)"
  end
  if value == "U" then
    return "Quote Liquidity Indicator: Market Turner (U)"
  end
  if value == "N" then
    return "Quote Liquidity Indicator: Normal (N)"
  end

  return "Quote Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Quote Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Quote Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_reject_reason = {}

-- Size: Quote Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_reject_reason.size = 1

-- Display: Quote Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_reject_reason.display = function(value)
  return "Quote Reject Reason: "..value
end

-- Dissect: Quote Reject Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Restatement Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restatement_reason = {}

-- Size: Quote Restatement Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restatement_reason.size = 1

-- Display: Quote Restatement Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restatement_reason.display = function(value)
  return "Quote Restatement Reason: "..value
end

-- Dissect: Quote Restatement Reason
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_restatement_reason, range, value, display)

  return offset + length, value
end

-- Quote Result
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result = {}

-- Size: Quote Result
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result.size = 1

-- Display: Quote Result
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result.display = function(value)
  if value == "A" then
    return "Quote Result: New Quote (A)"
  end
  if value == "L" then
    return "Quote Result: Modified Loss Of Priority (L)"
  end
  if value == "R" then
    return "Quote Result: Modified Retains Priority (R)"
  end
  if value == "N" then
    return "Quote Result: No Change Matches Existing Quote (N)"
  end
  if value == "D" then
    return "Quote Result: New Quote But May Remove Liquidity (D)"
  end
  if value == "d" then
    return "Quote Result: Modified But May Remove Liquidity (d)"
  end
  if value == "U" then
    return "Quote Result: User Cancelled (U)"
  end
  if value == "a" then
    return "Quote Result: Admin Rejection (a)"
  end
  if value == "P" then
    return "Quote Result: Rejected Cant Post (P)"
  end
  if value == "f" then
    return "Quote Result: Risk Management Firm Or Custom Group Id Level (f)"
  end
  if value == "S" then
    return "Quote Result: Rejected Symbol Not Found (S)"
  end
  if value == "p" then
    return "Quote Result: Rejected Invalid Price (p)"
  end
  if value == "s" then
    return "Quote Result: Risk Management Risk Root Level (s)"
  end
  if value == "u" then
    return "Quote Result: Rejected Other Reason (u)"
  end

  return "Quote Result: Unknown("..value..")"
end

-- Dissect: Quote Result
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_result, range, value, display)

  return offset + length, value
end

-- Quote Update Id
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id = {}

-- Size: Quote Update Id
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.size = 16

-- Display: Quote Update Id
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Update Id: No Value"
  end

  return "Quote Update Id: "..value
end

-- Dissect: Quote Update Id
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_update_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1 = {}

-- Size: Reserved 1
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.size = 1

-- Display: Reserved 1
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 12
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_12 = {}

-- Size: Reserved 12
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_12.size = 12

-- Display: Reserved 12
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 16
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_16 = {}

-- Size: Reserved 16
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_16.size = 16

-- Display: Reserved 16
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 17
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_17 = {}

-- Size: Reserved 17
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_17.size = 17

-- Display: Reserved 17
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_17.display = function(value)
  return "Reserved 17: "..value
end

-- Dissect: Reserved 17
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_17.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_17.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_17.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_17, range, value, display)

  return offset + length, value
end

-- Reserved 4
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_4 = {}

-- Size: Reserved 4
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_4.size = 4

-- Display: Reserved 4
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 6
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_6 = {}

-- Size: Reserved 6
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_6.size = 6

-- Display: Reserved 6
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_6.display = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reserved_6, range, value, display)

  return offset + length, value
end

-- Risk Reset
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset = {}

-- Size: Risk Reset
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset.size = 8

-- Display: Risk Reset
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset.display = function(value)
  if value == "S" then
    return "Risk Reset: Productlevel Risk Lockout Reset (S)"
  end
  if value == "F" then
    return "Risk Reset: Firmlevel Lockout Reset (F)"
  end
  if value == "C" then
    return "Risk Reset: Custom Group Id Lockout Reset (C)"
  end

  return "Risk Reset: Unknown("..value..")"
end

-- Dissect: Risk Reset
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.risk_reset, range, value, display)

  return offset + length, value
end

-- Risk Reset Result
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_result = {}

-- Size: Risk Reset Result
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_result.size = 1

-- Display: Risk Reset Result
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_result.display = function(value)
  if value == " " then
    return "Risk Reset Result: Ignored (<whitespace>)"
  end
  if value == "Y" then
    return "Risk Reset Result: Success (Y)"
  end
  if value == "F" then
    return "Risk Reset Result: Rejected Exceeds Firm Reset Limit (F)"
  end
  if value == "C" then
    return "Risk Reset Result: Rejected Exceeds Custom Group Id Limit (C)"
  end
  if value == "E" then
    return "Risk Reset Result: Rejected Empty Reset Risk Field (E)"
  end
  if value == "I" then
    return "Risk Reset Result: Rejected Incorrect Data Center (I)"
  end
  if value == "S" then
    return "Risk Reset Result: Rejected Exceeds Product Level Reset Limit (S)"
  end
  if value == "U" then
    return "Risk Reset Result: Rejected Invalid Risk Root (U)"
  end
  if value == "c" then
    return "Risk Reset Result: Rejected Invalid Efid Or Clearing Firm (c)"
  end
  if value == "y" then
    return "Risk Reset Result: Rejected In Replay (y)"
  end

  return "Risk Reset Result: Unknown("..value..")"
end

-- Dissect: Risk Reset Result
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_result.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_result.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.risk_reset_result, range, value, display)

  return offset + length, value
end

-- Risk Status Id
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_status_id = {}

-- Size: Risk Status Id
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_status_id.size = 16

-- Display: Risk Status Id
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_status_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Risk Status Id: No Value"
  end

  return "Risk Status Id: "..value
end

-- Dissect: Risk Status Id
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_status_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_status_id.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_status_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.risk_status_id, range, value, display)

  return offset + length, value
end

-- Secondary Exec Id
cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_exec_id = {}

-- Size: Secondary Exec Id
cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_exec_id.size = 8

-- Display: Secondary Exec Id
cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_exec_id.display = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_order_id = {}

-- Size: Secondary Order Id
cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_order_id.size = 8

-- Display: Secondary Order Id
cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_cfefutures_binaryorderentry_boe_v1_3.sequence_number = {}

-- Size: Sequence Number
cboe_cfefutures_binaryorderentry_boe_v1_3.sequence_number.size = 4

-- Display: Sequence Number
cboe_cfefutures_binaryorderentry_boe_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_cfefutures_binaryorderentry_boe_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_cfefutures_binaryorderentry_boe_v1_3.session_sub_id = {}

-- Size: Session Sub Id
cboe_cfefutures_binaryorderentry_boe_v1_3.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_cfefutures_binaryorderentry_boe_v1_3.session_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Sub Id: No Value"
  end

  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_cfefutures_binaryorderentry_boe_v1_3.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.session_sub_id.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_cfefutures_binaryorderentry_boe_v1_3.side = {}

-- Size: Side
cboe_cfefutures_binaryorderentry_boe_v1_3.side.size = 1

-- Display: Side
cboe_cfefutures_binaryorderentry_boe_v1_3.side.display = function(value)
  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.side, range, value, display)

  return offset + length, value
end

-- Size Modifier
cboe_cfefutures_binaryorderentry_boe_v1_3.size_modifier = {}

-- Size: Size Modifier
cboe_cfefutures_binaryorderentry_boe_v1_3.size_modifier.size = 1

-- Display: Size Modifier
cboe_cfefutures_binaryorderentry_boe_v1_3.size_modifier.display = function(value)
  if value == "R" then
    return "Size Modifier: Reduce (R)"
  end

  return "Size Modifier: Unknown("..value..")"
end

-- Dissect: Size Modifier
cboe_cfefutures_binaryorderentry_boe_v1_3.size_modifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.size_modifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.size_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.size_modifier, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_cfefutures_binaryorderentry_boe_v1_3.start_of_message = {}

-- Size: Start Of Message
cboe_cfefutures_binaryorderentry_boe_v1_3.start_of_message.size = 2

-- Display: Start Of Message
cboe_cfefutures_binaryorderentry_boe_v1_3.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_cfefutures_binaryorderentry_boe_v1_3.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Stop Px
cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px = {}

-- Size: Stop Px
cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.size = 8

-- Display: Stop Px
cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Stop Px
cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.translate(raw)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Sub Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.sub_liquidity_indicator = {}

-- Size: Sub Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.sub_liquidity_indicator.size = 1

-- Display: Sub Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.sub_liquidity_indicator.display = function(value)
  if value == "C" then
    return "Sub Liquidity Indicator: Carried Order Indicator (C)"
  end
  if value == "U" then
    return "Sub Liquidity Indicator: Qualifying Market Turner Order (U)"
  end

  return "Sub Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicator
cboe_cfefutures_binaryorderentry_boe_v1_3.sub_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.sub_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.sub_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Symbol Long
cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long = {}

-- Size: Symbol Long
cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.size = 8

-- Display: Symbol Long
cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Long: No Value"
  end

  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short = {}

-- Size: Symbol Short
cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.size = 6

-- Display: Symbol Short
cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Short: No Value"
  end

  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Text
cboe_cfefutures_binaryorderentry_boe_v1_3.text = {}

-- Size: Text
cboe_cfefutures_binaryorderentry_boe_v1_3.text.size = 60

-- Display: Text
cboe_cfefutures_binaryorderentry_boe_v1_3.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cboe_cfefutures_binaryorderentry_boe_v1_3.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.text.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force = {}

-- Size: Time In Force
cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.size = 1

-- Display: Time In Force
cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.display = function(value)
  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "1" then
    return "Time In Force: Gtc (1)"
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
cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_cfefutures_binaryorderentry_boe_v1_3.trade_date = {}

-- Size: Trade Date
cboe_cfefutures_binaryorderentry_boe_v1_3.trade_date.size = 4

-- Display: Trade Date
cboe_cfefutures_binaryorderentry_boe_v1_3.trade_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Trade Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Trade Date
cboe_cfefutures_binaryorderentry_boe_v1_3.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time = {}

-- Size: Transaction Time
cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.size = 8

-- Display: Transaction Time
cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Unit Number
cboe_cfefutures_binaryorderentry_boe_v1_3.unit_number = {}

-- Size: Unit Number
cboe_cfefutures_binaryorderentry_boe_v1_3.unit_number.size = 1

-- Display: Unit Number
cboe_cfefutures_binaryorderentry_boe_v1_3.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_cfefutures_binaryorderentry_boe_v1_3.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Username
cboe_cfefutures_binaryorderentry_boe_v1_3.username = {}

-- Size: Username
cboe_cfefutures_binaryorderentry_boe_v1_3.username.size = 4

-- Display: Username
cboe_cfefutures_binaryorderentry_boe_v1_3.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
cboe_cfefutures_binaryorderentry_boe_v1_3.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.username.size
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

  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.username, range, value, display)

  return offset + length, value
end

-- Working Price
cboe_cfefutures_binaryorderentry_boe_v1_3.working_price = {}

-- Size: Working Price
cboe_cfefutures_binaryorderentry_boe_v1_3.working_price.size = 8

-- Display: Working Price
cboe_cfefutures_binaryorderentry_boe_v1_3.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
cboe_cfefutures_binaryorderentry_boe_v1_3.working_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_cfefutures_binaryorderentry_boe_v1_3.working_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_binaryorderentry_boe_v1_3.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cfefutures_binaryorderentry_boe_v1_3.working_price.translate(raw)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CfeFutures BinaryOrderEntry Boe 1.3
-----------------------------------------------------------------------

-- Variance Quote Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.variance_quote_restatement_message = {}

-- Read runtime size of: Variance Quote Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.variance_quote_restatement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Variance Quote Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.variance_quote_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Variance Quote Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.variance_quote_restatement_message.fields = function(buffer, offset, packet, parent, size_of_variance_quote_restatement_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.dissect(buffer, index, packet, parent)

  -- Clearing Symbol: Alphanumeric
  index, clearing_symbol = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_symbol.dissect(buffer, index, packet, parent)

  -- Clearing Price: BinaryPrice
  index, clearing_price = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.dissect(buffer, index, packet, parent)

  -- Clearing Size: Binary
  index, clearing_size = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_size.dissect(buffer, index, packet, parent)

  -- Reserved 16: Reserved
  index, reserved_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Variance Quote Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.variance_quote_restatement_message.dissect = function(buffer, offset, packet, parent, size_of_variance_quote_restatement_message)
  local size_of_variance_quote_restatement_message = cboe_cfefutures_binaryorderentry_boe_v1_3.variance_quote_restatement_message.size(buffer, offset)
  local index = offset + size_of_variance_quote_restatement_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.variance_quote_restatement_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.variance_quote_restatement_message.fields(buffer, offset, packet, parent, size_of_variance_quote_restatement_message)
    parent:set_len(size_of_variance_quote_restatement_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.variance_quote_restatement_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.variance_quote_restatement_message.fields(buffer, offset, packet, parent, size_of_variance_quote_restatement_message)

    return index
  end
end

-- Tas Quote Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.tas_quote_restatement_message = {}

-- Read runtime size of: Tas Quote Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.tas_quote_restatement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Tas Quote Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.tas_quote_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tas Quote Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.tas_quote_restatement_message.fields = function(buffer, offset, packet, parent, size_of_tas_quote_restatement_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.dissect(buffer, index, packet, parent)

  -- Clearing Symbol: Alphanumeric
  index, clearing_symbol = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_symbol.dissect(buffer, index, packet, parent)

  -- Clearing Price: BinaryPrice
  index, clearing_price = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.dissect(buffer, index, packet, parent)

  -- Reserved 16: Reserved
  index, reserved_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tas Quote Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.tas_quote_restatement_message.dissect = function(buffer, offset, packet, parent, size_of_tas_quote_restatement_message)
  local size_of_tas_quote_restatement_message = cboe_cfefutures_binaryorderentry_boe_v1_3.tas_quote_restatement_message.size(buffer, offset)
  local index = offset + size_of_tas_quote_restatement_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.tas_quote_restatement_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.tas_quote_restatement_message.fields(buffer, offset, packet, parent, size_of_tas_quote_restatement_message)
    parent:set_len(size_of_tas_quote_restatement_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.tas_quote_restatement_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.tas_quote_restatement_message.fields(buffer, offset, packet, parent, size_of_tas_quote_restatement_message)

    return index
  end
end

-- Return Bitfield 17
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17 = {}

-- Size: Return Bitfield 17
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.size = 1

-- Display: Return Bitfield 17
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 17 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 1"
  end
  -- Is Return Bitfield 17 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 2"
  end
  -- Is Return Bitfield 17 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 4"
  end
  -- Is Return Bitfield 17 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 8"
  end
  -- Is Return Bitfield 17 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 16"
  end
  -- Is Return Bitfield 17 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 32"
  end
  -- Is Return Bitfield 17 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 64"
  end
  -- Is Return Bitfield 17 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 17
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.bits = function(range, value, packet, parent)

  -- Return Bitfield 17 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_1, range, value)

  -- Return Bitfield 17 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_2, range, value)

  -- Return Bitfield 17 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_4, range, value)

  -- Return Bitfield 17 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_8, range, value)

  -- Return Bitfield 17 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_16, range, value)

  -- Return Bitfield 17 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_32, range, value)

  -- Return Bitfield 17 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_64, range, value)

  -- Return Bitfield 17 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17_reserved_128, range, value)
end

-- Dissect: Return Bitfield 17
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_17, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 16
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16 = {}

-- Size: Return Bitfield 16
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.size = 1

-- Display: Return Bitfield 16
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 16 Frequent Trader Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Frequent Trader Id"
  end
  -- Is Return Bitfield 16 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 2"
  end
  -- Is Return Bitfield 16 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 4"
  end
  -- Is Return Bitfield 16 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 8"
  end
  -- Is Return Bitfield 16 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 16"
  end
  -- Is Return Bitfield 16 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 32"
  end
  -- Is Return Bitfield 16 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 64"
  end
  -- Is Return Bitfield 16 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 16
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.bits = function(range, value, packet, parent)

  -- Return Bitfield 16 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_frequent_trader_id, range, value)

  -- Return Bitfield 16 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_2, range, value)

  -- Return Bitfield 16 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_4, range, value)

  -- Return Bitfield 16 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_8, range, value)

  -- Return Bitfield 16 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_16, range, value)

  -- Return Bitfield 16 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_32, range, value)

  -- Return Bitfield 16 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_64, range, value)

  -- Return Bitfield 16 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16_reserved_128, range, value)
end

-- Dissect: Return Bitfield 16
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_16, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 15
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15 = {}

-- Size: Return Bitfield 15
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.size = 1

-- Display: Return Bitfield 15
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 15 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 1"
  end
  -- Is Return Bitfield 15 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 2"
  end
  -- Is Return Bitfield 15 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 4"
  end
  -- Is Return Bitfield 15 Mass Cancel Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Mass Cancel Id"
  end
  -- Is Return Bitfield 15 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 16"
  end
  -- Is Return Bitfield 15 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 32"
  end
  -- Is Return Bitfield 15 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 64"
  end
  -- Is Return Bitfield 15 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 15
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.bits = function(range, value, packet, parent)

  -- Return Bitfield 15 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_1, range, value)

  -- Return Bitfield 15 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_2, range, value)

  -- Return Bitfield 15 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_4, range, value)

  -- Return Bitfield 15 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_mass_cancel_id, range, value)

  -- Return Bitfield 15 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_16, range, value)

  -- Return Bitfield 15 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_32, range, value)

  -- Return Bitfield 15 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_64, range, value)

  -- Return Bitfield 15 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15_reserved_128, range, value)
end

-- Dissect: Return Bitfield 15
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_15, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 14
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14 = {}

-- Size: Return Bitfield 14
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.size = 1

-- Display: Return Bitfield 14
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 14 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 1"
  end
  -- Is Return Bitfield 14 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 2"
  end
  -- Is Return Bitfield 14 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 4"
  end
  -- Is Return Bitfield 14 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 8"
  end
  -- Is Return Bitfield 14 Secondary Exec Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Secondary Exec Id"
  end
  -- Is Return Bitfield 14 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 32"
  end
  -- Is Return Bitfield 14 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 64"
  end
  -- Is Return Bitfield 14 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 14
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.bits = function(range, value, packet, parent)

  -- Return Bitfield 14 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_1, range, value)

  -- Return Bitfield 14 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_2, range, value)

  -- Return Bitfield 14 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_4, range, value)

  -- Return Bitfield 14 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_8, range, value)

  -- Return Bitfield 14 Secondary Exec Id: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_secondary_exec_id, range, value)

  -- Return Bitfield 14 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_32, range, value)

  -- Return Bitfield 14 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_64, range, value)

  -- Return Bitfield 14 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14_reserved_128, range, value)
end

-- Dissect: Return Bitfield 14
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_14, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 13
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13 = {}

-- Size: Return Bitfield 13
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.size = 1

-- Display: Return Bitfield 13
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.display = function(range, value, packet, parent)
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
  -- Is Return Bitfield 13 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Reserved 64"
  end
  -- Is Return Bitfield 13 Multileg Reporting Type flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Multileg Reporting Type"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 13
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.bits = function(range, value, packet, parent)

  -- Return Bitfield 13 Cum Qty: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_cum_qty, range, value)

  -- Return Bitfield 13 Day Order Qty: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_day_order_qty, range, value)

  -- Return Bitfield 13 Day Cum Qty: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_day_cum_qty, range, value)

  -- Return Bitfield 13 Avg Px: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_avg_px, range, value)

  -- Return Bitfield 13 Day Avg Px: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_day_avg_px, range, value)

  -- Return Bitfield 13 Pending Status: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_pending_status, range, value)

  -- Return Bitfield 13 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_reserved_64, range, value)

  -- Return Bitfield 13 Multileg Reporting Type: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13_multileg_reporting_type, range, value)
end

-- Dissect: Return Bitfield 13
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_13, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 12
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12 = {}

-- Size: Return Bitfield 12
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.size = 1

-- Display: Return Bitfield 12
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 12 Cti Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Cti Code"
  end
  -- Is Return Bitfield 12 Manual Order Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Manual Order Indicator"
  end
  -- Is Return Bitfield 12 Oeoid flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Oeoid"
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
  -- Is Return Bitfield 12 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 12
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.bits = function(range, value, packet, parent)

  -- Return Bitfield 12 Cti Code: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_cti_code, range, value)

  -- Return Bitfield 12 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_manual_order_indicator, range, value)

  -- Return Bitfield 12 Oeoid: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_oeoid, range, value)

  -- Return Bitfield 12 Trade Date: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_trade_date, range, value)

  -- Return Bitfield 12 Clearing Price: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_clearing_price, range, value)

  -- Return Bitfield 12 Clearing Size: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_clearing_size, range, value)

  -- Return Bitfield 12 Clearing Symbol: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_clearing_symbol, range, value)

  -- Return Bitfield 12 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12_reserved_128, range, value)
end

-- Dissect: Return Bitfield 12
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_12, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 11
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11 = {}

-- Size: Return Bitfield 11
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.size = 1

-- Display: Return Bitfield 11
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 11 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 1"
  end
  -- Is Return Bitfield 11 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 2"
  end
  -- Is Return Bitfield 11 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 4"
  end
  -- Is Return Bitfield 11 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 8"
  end
  -- Is Return Bitfield 11 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 16"
  end
  -- Is Return Bitfield 11 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 32"
  end
  -- Is Return Bitfield 11 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 64"
  end
  -- Is Return Bitfield 11 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 11
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.bits = function(range, value, packet, parent)

  -- Return Bitfield 11 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_1, range, value)

  -- Return Bitfield 11 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_2, range, value)

  -- Return Bitfield 11 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_4, range, value)

  -- Return Bitfield 11 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_8, range, value)

  -- Return Bitfield 11 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_16, range, value)

  -- Return Bitfield 11 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_32, range, value)

  -- Return Bitfield 11 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_64, range, value)

  -- Return Bitfield 11 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11_reserved_128, range, value)
end

-- Dissect: Return Bitfield 11
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_11, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 10
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10 = {}

-- Size: Return Bitfield 10
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.size = 1

-- Display: Return Bitfield 10
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 10 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 1"
  end
  -- Is Return Bitfield 10 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 2"
  end
  -- Is Return Bitfield 10 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 4"
  end
  -- Is Return Bitfield 10 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 8"
  end
  -- Is Return Bitfield 10 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 16"
  end
  -- Is Return Bitfield 10 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 32"
  end
  -- Is Return Bitfield 10 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 64"
  end
  -- Is Return Bitfield 10 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 10
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.bits = function(range, value, packet, parent)

  -- Return Bitfield 10 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_1, range, value)

  -- Return Bitfield 10 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_2, range, value)

  -- Return Bitfield 10 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_4, range, value)

  -- Return Bitfield 10 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_8, range, value)

  -- Return Bitfield 10 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_16, range, value)

  -- Return Bitfield 10 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_32, range, value)

  -- Return Bitfield 10 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_64, range, value)

  -- Return Bitfield 10 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10_reserved_128, range, value)
end

-- Dissect: Return Bitfield 10
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_10, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 9
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9 = {}

-- Size: Return Bitfield 9
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.size = 1

-- Display: Return Bitfield 9
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 9 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 1"
  end
  -- Is Return Bitfield 9 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 2"
  end
  -- Is Return Bitfield 9 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 4"
  end
  -- Is Return Bitfield 9 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 8"
  end
  -- Is Return Bitfield 9 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 16"
  end
  -- Is Return Bitfield 9 Cmta Number flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Cmta Number"
  end
  -- Is Return Bitfield 9 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 64"
  end
  -- Is Return Bitfield 9 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 9
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.bits = function(range, value, packet, parent)

  -- Return Bitfield 9 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_1, range, value)

  -- Return Bitfield 9 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_2, range, value)

  -- Return Bitfield 9 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_4, range, value)

  -- Return Bitfield 9 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_8, range, value)

  -- Return Bitfield 9 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_16, range, value)

  -- Return Bitfield 9 Cmta Number: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_cmta_number, range, value)

  -- Return Bitfield 9 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_64, range, value)

  -- Return Bitfield 9 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9_reserved_128, range, value)
end

-- Dissect: Return Bitfield 9
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_9, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 8
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8 = {}

-- Size: Return Bitfield 8
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.size = 1

-- Display: Return Bitfield 8
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 8 Fee Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Fee Code"
  end
  -- Is Return Bitfield 8 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Reserved 2"
  end
  -- Is Return Bitfield 8 Stop Px flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Stop Px"
  end
  -- Is Return Bitfield 8 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Reserved 8"
  end
  -- Is Return Bitfield 8 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Reserved 16"
  end
  -- Is Return Bitfield 8 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Reserved 32"
  end
  -- Is Return Bitfield 8 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Reserved 64"
  end
  -- Is Return Bitfield 8 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 8
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.bits = function(range, value, packet, parent)

  -- Return Bitfield 8 Fee Code: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_fee_code, range, value)

  -- Return Bitfield 8 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_2, range, value)

  -- Return Bitfield 8 Stop Px: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_stop_px, range, value)

  -- Return Bitfield 8 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_8, range, value)

  -- Return Bitfield 8 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_16, range, value)

  -- Return Bitfield 8 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_32, range, value)

  -- Return Bitfield 8 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_64, range, value)

  -- Return Bitfield 8 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8_reserved_128, range, value)
end

-- Dissect: Return Bitfield 8
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_8, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 7
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7 = {}

-- Size: Return Bitfield 7
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.size = 1

-- Display: Return Bitfield 7
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 7 Sub Liquidity Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Sub Liquidity Indicator"
  end
  -- Is Return Bitfield 7 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 2"
  end
  -- Is Return Bitfield 7 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 4"
  end
  -- Is Return Bitfield 7 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 8"
  end
  -- Is Return Bitfield 7 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 16"
  end
  -- Is Return Bitfield 7 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 32"
  end
  -- Is Return Bitfield 7 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 64"
  end
  -- Is Return Bitfield 7 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 7
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.bits = function(range, value, packet, parent)

  -- Return Bitfield 7 Sub Liquidity Indicator: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_sub_liquidity_indicator, range, value)

  -- Return Bitfield 7 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_2, range, value)

  -- Return Bitfield 7 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_4, range, value)

  -- Return Bitfield 7 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_8, range, value)

  -- Return Bitfield 7 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_16, range, value)

  -- Return Bitfield 7 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_32, range, value)

  -- Return Bitfield 7 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_64, range, value)

  -- Return Bitfield 7 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7_reserved_128, range, value)
end

-- Dissect: Return Bitfield 7
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_7, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 6
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6 = {}

-- Size: Return Bitfield 6
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.size = 1

-- Display: Return Bitfield 6
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 6 Secondary Order Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Secondary Order Id"
  end
  -- Is Return Bitfield 6 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 2"
  end
  -- Is Return Bitfield 6 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 4"
  end
  -- Is Return Bitfield 6 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 8"
  end
  -- Is Return Bitfield 6 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 16"
  end
  -- Is Return Bitfield 6 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 32"
  end
  -- Is Return Bitfield 6 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 64"
  end
  -- Is Return Bitfield 6 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 6
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.bits = function(range, value, packet, parent)

  -- Return Bitfield 6 Secondary Order Id: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_secondary_order_id, range, value)

  -- Return Bitfield 6 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_2, range, value)

  -- Return Bitfield 6 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_4, range, value)

  -- Return Bitfield 6 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_8, range, value)

  -- Return Bitfield 6 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_16, range, value)

  -- Return Bitfield 6 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_32, range, value)

  -- Return Bitfield 6 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_64, range, value)

  -- Return Bitfield 6 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6_reserved_128, range, value)
end

-- Dissect: Return Bitfield 6
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_6, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 5
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5 = {}

-- Size: Return Bitfield 5
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.size = 1

-- Display: Return Bitfield 5
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.display = function(range, value, packet, parent)
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
  -- Is Return Bitfield 5 Last Px flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Last Px"
  end
  -- Is Return Bitfield 5 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Reserved 16"
  end
  -- Is Return Bitfield 5 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Reserved 32"
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
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.bits = function(range, value, packet, parent)

  -- Return Bitfield 5 Orig Cl Ord Id: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_orig_cl_ord_id, range, value)

  -- Return Bitfield 5 Leaves Qty: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_leaves_qty, range, value)

  -- Return Bitfield 5 Last Shares: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_last_shares, range, value)

  -- Return Bitfield 5 Last Px: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_last_px, range, value)

  -- Return Bitfield 5 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_reserved_16, range, value)

  -- Return Bitfield 5 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_reserved_32, range, value)

  -- Return Bitfield 5 Base Liquidity Indicator: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_base_liquidity_indicator, range, value)

  -- Return Bitfield 5 Expire Time: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5_expire_time, range, value)
end

-- Dissect: Return Bitfield 5
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_5, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 4
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4 = {}

-- Size: Return Bitfield 4
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.size = 1

-- Display: Return Bitfield 4
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 4 Maturity Date flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Maturity Date"
  end
  -- Is Return Bitfield 4 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 2"
  end
  -- Is Return Bitfield 4 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 4"
  end
  -- Is Return Bitfield 4 Open Close flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Open Close"
  end
  -- Is Return Bitfield 4 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 16"
  end
  -- Is Return Bitfield 4 Corrected Size flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Corrected Size"
  end
  -- Is Return Bitfield 4 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 64"
  end
  -- Is Return Bitfield 4 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 4
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.bits = function(range, value, packet, parent)

  -- Return Bitfield 4 Maturity Date: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_maturity_date, range, value)

  -- Return Bitfield 4 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_reserved_2, range, value)

  -- Return Bitfield 4 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_reserved_4, range, value)

  -- Return Bitfield 4 Open Close: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_open_close, range, value)

  -- Return Bitfield 4 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_reserved_16, range, value)

  -- Return Bitfield 4 Corrected Size: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_corrected_size, range, value)

  -- Return Bitfield 4 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_reserved_64, range, value)

  -- Return Bitfield 4 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4_reserved_128, range, value)
end

-- Dissect: Return Bitfield 4
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_4, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 3
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3 = {}

-- Size: Return Bitfield 3
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.size = 1

-- Display: Return Bitfield 3
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.display = function(range, value, packet, parent)
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
  -- Is Return Bitfield 3 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Reserved 8"
  end
  -- Is Return Bitfield 3 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Reserved 16"
  end
  -- Is Return Bitfield 3 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Reserved 32"
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
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.bits = function(range, value, packet, parent)

  -- Return Bitfield 3 Account: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_account, range, value)

  -- Return Bitfield 3 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_clearing_firm, range, value)

  -- Return Bitfield 3 Clearing Account: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_clearing_account, range, value)

  -- Return Bitfield 3 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_reserved_8, range, value)

  -- Return Bitfield 3 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_reserved_16, range, value)

  -- Return Bitfield 3 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_reserved_32, range, value)

  -- Return Bitfield 3 Order Qty: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_order_qty, range, value)

  -- Return Bitfield 3 Prevent Match: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3_prevent_match, range, value)
end

-- Dissect: Return Bitfield 3
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_3, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2 = {}

-- Size: Return Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.size = 1

-- Display: Return Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 2 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Symbol"
  end
  -- Is Return Bitfield 2 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 2"
  end
  -- Is Return Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 4"
  end
  -- Is Return Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 8"
  end
  -- Is Return Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 16"
  end
  -- Is Return Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 32"
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
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.bits = function(range, value, packet, parent)

  -- Return Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_symbol, range, value)

  -- Return Bitfield 2 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_2, range, value)

  -- Return Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_4, range, value)

  -- Return Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_8, range, value)

  -- Return Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_16, range, value)

  -- Return Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_32, range, value)

  -- Return Bitfield 2 Capacity: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_capacity, range, value)

  -- Return Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2_reserved_128, range, value)
end

-- Dissect: Return Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_2, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1 = {}

-- Size: Return Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.size = 1

-- Display: Return Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 1 Side flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Side"
  end
  -- Is Return Bitfield 1 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Reserved 2"
  end
  -- Is Return Bitfield 1 Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Price"
  end
  -- Is Return Bitfield 1 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Reserved 8"
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
  -- Is Return Bitfield 1 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.bits = function(range, value, packet, parent)

  -- Return Bitfield 1 Side: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_side, range, value)

  -- Return Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_reserved_2, range, value)

  -- Return Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_price, range, value)

  -- Return Bitfield 1 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_reserved_8, range, value)

  -- Return Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_ord_type, range, value)

  -- Return Bitfield 1 Time In Force: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_time_in_force, range, value)

  -- Return Bitfield 1 Min Qty: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_min_qty, range, value)

  -- Return Bitfield 1 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1_reserved_128, range, value)
end

-- Dissect: Return Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.return_bitfield_1, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Variance Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.variance_restatement_message = {}

-- Read runtime size of: Variance Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.variance_restatement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Variance Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.variance_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Variance Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.variance_restatement_message.fields = function(buffer, offset, packet, parent, size_of_variance_restatement_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cfefutures_binaryorderentry_boe_v1_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Maturity Date
  local maturity_date = nil

  local maturity_date_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if maturity_date_exists then
    index, maturity_date = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Open Close
  local open_close = nil

  local open_close_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if open_close_exists then
    index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Px
  local last_px = nil

  local last_px_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x08) > 0

  if last_px_exists then
    index, last_px = cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Fee Code
  local fee_code = nil

  local fee_code_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x01) > 0

  if fee_code_exists then
    index, fee_code = cboe_cfefutures_binaryorderentry_boe_v1_3.fee_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmta Number
  local cmta_number = nil

  local cmta_number_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x20) > 0

  if cmta_number_exists then
    index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cti Code
  local cti_code = nil

  local cti_code_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x01) > 0

  if cti_code_exists then
    index, cti_code = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x02) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x04) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Date
  local trade_date = nil

  local trade_date_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x08) > 0

  if trade_date_exists then
    index, trade_date = cboe_cfefutures_binaryorderentry_boe_v1_3.trade_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Price
  local clearing_price = nil

  local clearing_price_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x10) > 0

  if clearing_price_exists then
    index, clearing_price = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Size
  local clearing_size = nil

  local clearing_size_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x20) > 0

  if clearing_size_exists then
    index, clearing_size = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Symbol
  local clearing_symbol = nil

  local clearing_symbol_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x40) > 0

  if clearing_symbol_exists then
    index, clearing_symbol = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Multileg Reporting Type
  local multileg_reporting_type = nil

  local multileg_reporting_type_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x80) > 0

  if multileg_reporting_type_exists then
    index, multileg_reporting_type = cboe_cfefutures_binaryorderentry_boe_v1_3.multileg_reporting_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Exec Id
  local secondary_exec_id = nil

  local secondary_exec_id_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x10) > 0

  if secondary_exec_id_exists then
    index, secondary_exec_id = cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_exec_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Frequent Trader Id
  local frequent_trader_id = nil

  local frequent_trader_id_exists = number_of_return_bitfields >= 16 and bit.band(return_bitfield_16, 0x01) > 0

  if frequent_trader_id_exists then
    index, frequent_trader_id = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Variance Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.variance_restatement_message.dissect = function(buffer, offset, packet, parent, size_of_variance_restatement_message)
  local size_of_variance_restatement_message = cboe_cfefutures_binaryorderentry_boe_v1_3.variance_restatement_message.size(buffer, offset)
  local index = offset + size_of_variance_restatement_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.variance_restatement_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.variance_restatement_message.fields(buffer, offset, packet, parent, size_of_variance_restatement_message)
    parent:set_len(size_of_variance_restatement_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.variance_restatement_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.variance_restatement_message.fields(buffer, offset, packet, parent, size_of_variance_restatement_message)

    return index
  end
end

-- Tas Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.tas_restatement_message = {}

-- Read runtime size of: Tas Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.tas_restatement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Tas Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.tas_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tas Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.tas_restatement_message.fields = function(buffer, offset, packet, parent, size_of_tas_restatement_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cfefutures_binaryorderentry_boe_v1_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Maturity Date
  local maturity_date = nil

  local maturity_date_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if maturity_date_exists then
    index, maturity_date = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Open Close
  local open_close = nil

  local open_close_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if open_close_exists then
    index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Px
  local last_px = nil

  local last_px_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x08) > 0

  if last_px_exists then
    index, last_px = cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Fee Code
  local fee_code = nil

  local fee_code_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x01) > 0

  if fee_code_exists then
    index, fee_code = cboe_cfefutures_binaryorderentry_boe_v1_3.fee_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmta Number
  local cmta_number = nil

  local cmta_number_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x20) > 0

  if cmta_number_exists then
    index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cti Code
  local cti_code = nil

  local cti_code_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x01) > 0

  if cti_code_exists then
    index, cti_code = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x02) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x04) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Date
  local trade_date = nil

  local trade_date_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x08) > 0

  if trade_date_exists then
    index, trade_date = cboe_cfefutures_binaryorderentry_boe_v1_3.trade_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Price
  local clearing_price = nil

  local clearing_price_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x10) > 0

  if clearing_price_exists then
    index, clearing_price = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Size
  local clearing_size = nil

  local clearing_size_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x20) > 0

  if clearing_size_exists then
    index, clearing_size = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Symbol
  local clearing_symbol = nil

  local clearing_symbol_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x40) > 0

  if clearing_symbol_exists then
    index, clearing_symbol = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Multileg Reporting Type
  local multileg_reporting_type = nil

  local multileg_reporting_type_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x80) > 0

  if multileg_reporting_type_exists then
    index, multileg_reporting_type = cboe_cfefutures_binaryorderentry_boe_v1_3.multileg_reporting_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Exec Id
  local secondary_exec_id = nil

  local secondary_exec_id_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x10) > 0

  if secondary_exec_id_exists then
    index, secondary_exec_id = cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_exec_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Frequent Trader Id
  local frequent_trader_id = nil

  local frequent_trader_id_exists = number_of_return_bitfields >= 16 and bit.band(return_bitfield_16, 0x01) > 0

  if frequent_trader_id_exists then
    index, frequent_trader_id = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Tas Restatement Message
cboe_cfefutures_binaryorderentry_boe_v1_3.tas_restatement_message.dissect = function(buffer, offset, packet, parent, size_of_tas_restatement_message)
  local size_of_tas_restatement_message = cboe_cfefutures_binaryorderentry_boe_v1_3.tas_restatement_message.size(buffer, offset)
  local index = offset + size_of_tas_restatement_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.tas_restatement_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.tas_restatement_message.fields(buffer, offset, packet, parent, size_of_tas_restatement_message)
    parent:set_len(size_of_tas_restatement_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.tas_restatement_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.tas_restatement_message.fields(buffer, offset, packet, parent, size_of_tas_restatement_message)

    return index
  end
end

-- Mass Cancel Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_acknowledgment_message = {}

-- Read runtime size of: Mass Cancel Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Mass Cancel Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_cfefutures_binaryorderentry_boe_v1_3.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_acknowledgment_message.dissect = function(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)
  local size_of_mass_cancel_acknowledgment_message = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_acknowledgment_message.size(buffer, offset)
  local index = offset + size_of_mass_cancel_acknowledgment_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.mass_cancel_acknowledgment_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)
    parent:set_len(size_of_mass_cancel_acknowledgment_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_acknowledgment_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)

    return index
  end
end

-- Risk Reset Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_acknowledgment_message = {}

-- Read runtime size of: Risk Reset Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Risk Reset Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Reset Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_risk_reset_acknowledgment_message)
  local index = offset

  -- Risk Status Id: Text
  index, risk_status_id = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_status_id.dissect(buffer, index, packet, parent)

  -- Risk Reset Result: Text
  index, risk_reset_result = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_result.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Reset Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_acknowledgment_message.dissect = function(buffer, offset, packet, parent, size_of_risk_reset_acknowledgment_message)
  local size_of_risk_reset_acknowledgment_message = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_acknowledgment_message.size(buffer, offset)
  local index = offset + size_of_risk_reset_acknowledgment_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.risk_reset_acknowledgment_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_risk_reset_acknowledgment_message)
    parent:set_len(size_of_risk_reset_acknowledgment_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_acknowledgment_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_risk_reset_acknowledgment_message)

    return index
  end
end

-- Purge Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_rejected_message = {}

-- Read runtime size of: Purge Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Purge Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_rejected_message.fields = function(buffer, offset, packet, parent, size_of_purge_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cfefutures_binaryorderentry_boe_v1_3.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x08) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Purge Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_purge_rejected_message)
  local size_of_purge_rejected_message = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_rejected_message.size(buffer, offset)
  local index = offset + size_of_purge_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_rejected_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_rejected_message.fields(buffer, offset, packet, parent, size_of_purge_rejected_message)
    parent:set_len(size_of_purge_rejected_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.purge_rejected_message.fields(buffer, offset, packet, parent, size_of_purge_rejected_message)

    return index
  end
end

-- Trade Cancel Or Correct Message
cboe_cfefutures_binaryorderentry_boe_v1_3.trade_cancel_or_correct_message = {}

-- Read runtime size of: Trade Cancel Or Correct Message
cboe_cfefutures_binaryorderentry_boe_v1_3.trade_cancel_or_correct_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Cancel Or Correct Message
cboe_cfefutures_binaryorderentry_boe_v1_3.trade_cancel_or_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Or Correct Message
cboe_cfefutures_binaryorderentry_boe_v1_3.trade_cancel_or_correct_message.fields = function(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.dissect(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_price.dissect(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_cfefutures_binaryorderentry_boe_v1_3.orig_time.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Maturity Date
  local maturity_date = nil

  local maturity_date_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if maturity_date_exists then
    index, maturity_date = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Open Close
  local open_close = nil

  local open_close_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if open_close_exists then
    index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Corrected Size
  local corrected_size = nil

  local corrected_size_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x20) > 0

  if corrected_size_exists then
    index, corrected_size = cboe_cfefutures_binaryorderentry_boe_v1_3.corrected_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmta Number
  local cmta_number = nil

  local cmta_number_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x20) > 0

  if cmta_number_exists then
    index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Cancel Or Correct Message
cboe_cfefutures_binaryorderentry_boe_v1_3.trade_cancel_or_correct_message.dissect = function(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)
  local size_of_trade_cancel_or_correct_message = cboe_cfefutures_binaryorderentry_boe_v1_3.trade_cancel_or_correct_message.size(buffer, offset)
  local index = offset + size_of_trade_cancel_or_correct_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.trade_cancel_or_correct_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.trade_cancel_or_correct_message.fields(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)
    parent:set_len(size_of_trade_cancel_or_correct_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.trade_cancel_or_correct_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.trade_cancel_or_correct_message.fields(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)

    return index
  end
end

-- Quote Execution Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_execution_message = {}

-- Read runtime size of: Quote Execution Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_execution_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Quote Execution Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Execution Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_execution_message.fields = function(buffer, offset, packet, parent, size_of_quote_execution_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_cfefutures_binaryorderentry_boe_v1_3.fee_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Execution Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_execution_message.dissect = function(buffer, offset, packet, parent, size_of_quote_execution_message)
  local size_of_quote_execution_message = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_execution_message.size(buffer, offset)
  local index = offset + size_of_quote_execution_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_execution_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_execution_message.fields(buffer, offset, packet, parent, size_of_quote_execution_message)
    parent:set_len(size_of_quote_execution_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_execution_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.quote_execution_message.fields(buffer, offset, packet, parent, size_of_quote_execution_message)

    return index
  end
end

-- Order Execution Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_execution_message = {}

-- Read runtime size of: Order Execution Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_execution_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Execution Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_execution_message.fields = function(buffer, offset, packet, parent, size_of_order_execution_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_cfefutures_binaryorderentry_boe_v1_3.exec_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_cfefutures_binaryorderentry_boe_v1_3.contra_broker.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cfefutures_binaryorderentry_boe_v1_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Maturity Date
  local maturity_date = nil

  local maturity_date_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if maturity_date_exists then
    index, maturity_date = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Open Close
  local open_close = nil

  local open_close_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if open_close_exists then
    index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Fee Code
  local fee_code = nil

  local fee_code_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x01) > 0

  if fee_code_exists then
    index, fee_code = cboe_cfefutures_binaryorderentry_boe_v1_3.fee_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmta Number
  local cmta_number = nil

  local cmta_number_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x20) > 0

  if cmta_number_exists then
    index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cti Code
  local cti_code = nil

  local cti_code_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x01) > 0

  if cti_code_exists then
    index, cti_code = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x02) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x04) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trade Date
  local trade_date = nil

  local trade_date_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x08) > 0

  if trade_date_exists then
    index, trade_date = cboe_cfefutures_binaryorderentry_boe_v1_3.trade_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Size
  local clearing_size = nil

  local clearing_size_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x20) > 0

  if clearing_size_exists then
    index, clearing_size = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cum Qty
  local cum_qty = nil

  local cum_qty_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x01) > 0

  if cum_qty_exists then
    index, cum_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.cum_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Day Order Qty
  local day_order_qty = nil

  local day_order_qty_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x02) > 0

  if day_order_qty_exists then
    index, day_order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.day_order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Day Cum Qty
  local day_cum_qty = nil

  local day_cum_qty_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x04) > 0

  if day_cum_qty_exists then
    index, day_cum_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.day_cum_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Avg Px
  local avg_px = nil

  local avg_px_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x08) > 0

  if avg_px_exists then
    index, avg_px = cboe_cfefutures_binaryorderentry_boe_v1_3.avg_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Day Avg Px
  local day_avg_px = nil

  local day_avg_px_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x10) > 0

  if day_avg_px_exists then
    index, day_avg_px = cboe_cfefutures_binaryorderentry_boe_v1_3.day_avg_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Pending Status
  local pending_status = nil

  local pending_status_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x20) > 0

  if pending_status_exists then
    index, pending_status = cboe_cfefutures_binaryorderentry_boe_v1_3.pending_status.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Multileg Reporting Type
  local multileg_reporting_type = nil

  local multileg_reporting_type_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x80) > 0

  if multileg_reporting_type_exists then
    index, multileg_reporting_type = cboe_cfefutures_binaryorderentry_boe_v1_3.multileg_reporting_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Exec Id
  local secondary_exec_id = nil

  local secondary_exec_id_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x10) > 0

  if secondary_exec_id_exists then
    index, secondary_exec_id = cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_exec_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Frequent Trader Id
  local frequent_trader_id = nil

  local frequent_trader_id_exists = number_of_return_bitfields >= 16 and bit.band(return_bitfield_16, 0x01) > 0

  if frequent_trader_id_exists then
    index, frequent_trader_id = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Execution Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_execution_message.dissect = function(buffer, offset, packet, parent, size_of_order_execution_message)
  local size_of_order_execution_message = cboe_cfefutures_binaryorderentry_boe_v1_3.order_execution_message.size(buffer, offset)
  local index = offset + size_of_order_execution_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_execution_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.order_execution_message.fields(buffer, offset, packet, parent, size_of_order_execution_message)
    parent:set_len(size_of_order_execution_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.order_execution_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.order_execution_message.fields(buffer, offset, packet, parent, size_of_order_execution_message)

    return index
  end
end

-- Cancel Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_rejected_message = {}

-- Read runtime size of: Cancel Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Cancel Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_rejected_message.fields = function(buffer, offset, packet, parent, size_of_cancel_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cfefutures_binaryorderentry_boe_v1_3.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Maturity Date
  local maturity_date = nil

  local maturity_date_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if maturity_date_exists then
    index, maturity_date = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Open Close
  local open_close = nil

  local open_close_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if open_close_exists then
    index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmta Number
  local cmta_number = nil

  local cmta_number_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x20) > 0

  if cmta_number_exists then
    index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cti Code
  local cti_code = nil

  local cti_code_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x01) > 0

  if cti_code_exists then
    index, cti_code = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x02) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x04) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Cancel Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_cancel_rejected_message)
  local size_of_cancel_rejected_message = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_rejected_message.size(buffer, offset)
  local index = offset + size_of_cancel_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_rejected_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_rejected_message.fields(buffer, offset, packet, parent, size_of_cancel_rejected_message)
    parent:set_len(size_of_cancel_rejected_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_rejected_message.fields(buffer, offset, packet, parent, size_of_cancel_rejected_message)

    return index
  end
end

-- Quote Cancelled Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_cancelled_message = {}

-- Read runtime size of: Quote Cancelled Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_cancelled_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Quote Cancelled Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancelled Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_cancelled_message.fields = function(buffer, offset, packet, parent, size_of_quote_cancelled_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancelled Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_cancelled_message.dissect = function(buffer, offset, packet, parent, size_of_quote_cancelled_message)
  local size_of_quote_cancelled_message = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_cancelled_message.size(buffer, offset)
  local index = offset + size_of_quote_cancelled_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_cancelled_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_cancelled_message.fields(buffer, offset, packet, parent, size_of_quote_cancelled_message)
    parent:set_len(size_of_quote_cancelled_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_cancelled_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.quote_cancelled_message.fields(buffer, offset, packet, parent, size_of_quote_cancelled_message)

    return index
  end
end

-- Order Cancelled Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_cancelled_message = {}

-- Read runtime size of: Order Cancelled Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_cancelled_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Cancelled Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_cancelled_message.fields = function(buffer, offset, packet, parent, size_of_order_cancelled_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_reason.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cfefutures_binaryorderentry_boe_v1_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Maturity Date
  local maturity_date = nil

  local maturity_date_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if maturity_date_exists then
    index, maturity_date = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Open Close
  local open_close = nil

  local open_close_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if open_close_exists then
    index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_cfefutures_binaryorderentry_boe_v1_3.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Px
  local last_px = nil

  local last_px_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x08) > 0

  if last_px_exists then
    index, last_px = cboe_cfefutures_binaryorderentry_boe_v1_3.last_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_cfefutures_binaryorderentry_boe_v1_3.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmta Number
  local cmta_number = nil

  local cmta_number_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x20) > 0

  if cmta_number_exists then
    index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cti Code
  local cti_code = nil

  local cti_code_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x01) > 0

  if cti_code_exists then
    index, cti_code = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x02) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x04) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Frequent Trader Id
  local frequent_trader_id = nil

  local frequent_trader_id_exists = number_of_return_bitfields >= 16 and bit.band(return_bitfield_16, 0x01) > 0

  if frequent_trader_id_exists then
    index, frequent_trader_id = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Cancelled Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_cancelled_message.dissect = function(buffer, offset, packet, parent, size_of_order_cancelled_message)
  local size_of_order_cancelled_message = cboe_cfefutures_binaryorderentry_boe_v1_3.order_cancelled_message.size(buffer, offset)
  local index = offset + size_of_order_cancelled_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_cancelled_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.order_cancelled_message.fields(buffer, offset, packet, parent, size_of_order_cancelled_message)
    parent:set_len(size_of_order_cancelled_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.order_cancelled_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.order_cancelled_message.fields(buffer, offset, packet, parent, size_of_order_cancelled_message)

    return index
  end
end

-- User Modify Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.user_modify_rejected_message = {}

-- Read runtime size of: User Modify Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.user_modify_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: User Modify Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.user_modify_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Modify Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.user_modify_rejected_message.fields = function(buffer, offset, packet, parent, size_of_user_modify_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cfefutures_binaryorderentry_boe_v1_3.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: User Modify Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.user_modify_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_user_modify_rejected_message)
  local size_of_user_modify_rejected_message = cboe_cfefutures_binaryorderentry_boe_v1_3.user_modify_rejected_message.size(buffer, offset)
  local index = offset + size_of_user_modify_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.user_modify_rejected_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.user_modify_rejected_message.fields(buffer, offset, packet, parent, size_of_user_modify_rejected_message)
    parent:set_len(size_of_user_modify_rejected_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.user_modify_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.user_modify_rejected_message.fields(buffer, offset, packet, parent, size_of_user_modify_rejected_message)

    return index
  end
end

-- Quote Restated Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restated_message = {}

-- Read runtime size of: Quote Restated Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restated_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Quote Restated Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Restated Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restated_message.fields = function(buffer, offset, packet, parent, size_of_quote_restated_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_cfefutures_binaryorderentry_boe_v1_3.working_price.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Quote Restatement Reason: Alphanumeric
  index, quote_restatement_reason = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restatement_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Restated Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restated_message.dissect = function(buffer, offset, packet, parent, size_of_quote_restated_message)
  local size_of_quote_restated_message = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restated_message.size(buffer, offset)
  local index = offset + size_of_quote_restated_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_restated_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restated_message.fields(buffer, offset, packet, parent, size_of_quote_restated_message)
    parent:set_len(size_of_quote_restated_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restated_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restated_message.fields(buffer, offset, packet, parent, size_of_quote_restated_message)

    return index
  end
end

-- Order Modified Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_modified_message = {}

-- Read runtime size of: Order Modified Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_modified_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Modified Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_modified_message.fields = function(buffer, offset, packet, parent, size_of_order_modified_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cfefutures_binaryorderentry_boe_v1_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Maturity Date
  local maturity_date = nil

  local maturity_date_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if maturity_date_exists then
    index, maturity_date = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Open Close
  local open_close = nil

  local open_close_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if open_close_exists then
    index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Base Liquidity Indicator
  local base_liquidity_indicator = nil

  local base_liquidity_indicator_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if base_liquidity_indicator_exists then
    index, base_liquidity_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmta Number
  local cmta_number = nil

  local cmta_number_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x20) > 0

  if cmta_number_exists then
    index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cti Code
  local cti_code = nil

  local cti_code_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x01) > 0

  if cti_code_exists then
    index, cti_code = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x02) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x04) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Frequent Trader Id
  local frequent_trader_id = nil

  local frequent_trader_id_exists = number_of_return_bitfields >= 16 and bit.band(return_bitfield_16, 0x01) > 0

  if frequent_trader_id_exists then
    index, frequent_trader_id = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Modified Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_modified_message.dissect = function(buffer, offset, packet, parent, size_of_order_modified_message)
  local size_of_order_modified_message = cboe_cfefutures_binaryorderentry_boe_v1_3.order_modified_message.size(buffer, offset)
  local index = offset + size_of_order_modified_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_modified_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.order_modified_message.fields(buffer, offset, packet, parent, size_of_order_modified_message)
    parent:set_len(size_of_order_modified_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.order_modified_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.order_modified_message.fields(buffer, offset, packet, parent, size_of_order_modified_message)

    return index
  end
end

-- Quote Update Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_rejected_message = {}

-- Read runtime size of: Quote Update Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Quote Update Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_rejected_message.fields = function(buffer, offset, packet, parent, size_of_quote_update_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: Text
  index, quote_reject_reason = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Reserved 17: Reserved
  index, reserved_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_17.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_quote_update_rejected_message)
  local size_of_quote_update_rejected_message = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_rejected_message.size(buffer, offset)
  local index = offset + size_of_quote_update_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_update_rejected_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_rejected_message.fields(buffer, offset, packet, parent, size_of_quote_update_rejected_message)
    parent:set_len(size_of_quote_update_rejected_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_rejected_message.fields(buffer, offset, packet, parent, size_of_quote_update_rejected_message)

    return index
  end
end

-- Order Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_rejected_message = {}

-- Read runtime size of: Order Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_rejected_message.fields = function(buffer, offset, packet, parent, size_of_order_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_cfefutures_binaryorderentry_boe_v1_3.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cfefutures_binaryorderentry_boe_v1_3.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cfefutures_binaryorderentry_boe_v1_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Maturity Date
  local maturity_date = nil

  local maturity_date_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if maturity_date_exists then
    index, maturity_date = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Open Close
  local open_close = nil

  local open_close_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if open_close_exists then
    index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmta Number
  local cmta_number = nil

  local cmta_number_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x20) > 0

  if cmta_number_exists then
    index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cti Code
  local cti_code = nil

  local cti_code_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x01) > 0

  if cti_code_exists then
    index, cti_code = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x02) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x04) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Frequent Trader Id
  local frequent_trader_id = nil

  local frequent_trader_id_exists = number_of_return_bitfields >= 16 and bit.band(return_bitfield_16, 0x01) > 0

  if frequent_trader_id_exists then
    index, frequent_trader_id = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Rejected Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_order_rejected_message)
  local size_of_order_rejected_message = cboe_cfefutures_binaryorderentry_boe_v1_3.order_rejected_message.size(buffer, offset)
  local index = offset + size_of_order_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_rejected_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.order_rejected_message.fields(buffer, offset, packet, parent, size_of_order_rejected_message)
    parent:set_len(size_of_order_rejected_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.order_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.order_rejected_message.fields(buffer, offset, packet, parent, size_of_order_rejected_message)

    return index
  end
end

-- Quote Result Group
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result_group = {}

-- Size: Quote Result Group
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result_group.size =
  cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.quote_liquidity_indicator.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_6.size

-- Display: Quote Result Group
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Result Group
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result_group.fields = function(buffer, offset, packet, parent, quote_result_group_index)
  local index = offset

  -- Implicit Quote Result Group Index
  if quote_result_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_result_group_index, quote_result_group_index)
    iteration:set_generated()
  end

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Quote Result: Text
  index, quote_result = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result.dissect(buffer, index, packet, parent)

  -- Quote Liquidity Indicator: Text
  index, quote_liquidity_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 6: Reserved
  index, reserved_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Result Group
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result_group.dissect = function(buffer, offset, packet, parent, quote_result_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_result_group, buffer(offset, 0))
    local index = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result_group.fields(buffer, offset, packet, parent, quote_result_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result_group.fields(buffer, offset, packet, parent, quote_result_group_index)
  end
end

-- Quote Update Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_acknowledgment_message = {}

-- Read runtime size of: Quote Update Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Quote Update Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_quote_update_acknowledgment_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: Text
  index, quote_reject_reason = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Reserved 17: Reserved
  index, reserved_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_17.dissect(buffer, index, packet, parent)

  -- Number Of Quote Results: Binary
  index, number_of_quote_results = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quote_results.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Result Group
  for quote_result_group_index = 1, number_of_quote_results do
    index, quote_result_group = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_result_group.dissect(buffer, index, packet, parent, quote_result_group_index)
  end

  return index
end

-- Dissect: Quote Update Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_acknowledgment_message.dissect = function(buffer, offset, packet, parent, size_of_quote_update_acknowledgment_message)
  local size_of_quote_update_acknowledgment_message = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_acknowledgment_message.size(buffer, offset)
  local index = offset + size_of_quote_update_acknowledgment_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_update_acknowledgment_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_quote_update_acknowledgment_message)
    parent:set_len(size_of_quote_update_acknowledgment_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_acknowledgment_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_quote_update_acknowledgment_message)

    return index
  end
end

-- Order Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_acknowledgment_message = {}

-- Read runtime size of: Order Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_order_acknowledgment_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cfefutures_binaryorderentry_boe_v1_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_binaryorderentry_boe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_cfefutures_binaryorderentry_boe_v1_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cfefutures_binaryorderentry_boe_v1_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Maturity Date
  local maturity_date = nil

  local maturity_date_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if maturity_date_exists then
    index, maturity_date = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Open Close
  local open_close = nil

  local open_close_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if open_close_exists then
    index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Base Liquidity Indicator
  local base_liquidity_indicator = nil

  local base_liquidity_indicator_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if base_liquidity_indicator_exists then
    index, base_liquidity_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sub Liquidity Indicator
  local sub_liquidity_indicator = nil

  local sub_liquidity_indicator_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x01) > 0

  if sub_liquidity_indicator_exists then
    index, sub_liquidity_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.sub_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmta Number
  local cmta_number = nil

  local cmta_number_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x20) > 0

  if cmta_number_exists then
    index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cti Code
  local cti_code = nil

  local cti_code_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x01) > 0

  if cti_code_exists then
    index, cti_code = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x02) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x04) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cum Qty
  local cum_qty = nil

  local cum_qty_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x01) > 0

  if cum_qty_exists then
    index, cum_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.cum_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Day Order Qty
  local day_order_qty = nil

  local day_order_qty_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x02) > 0

  if day_order_qty_exists then
    index, day_order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.day_order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Day Cum Qty
  local day_cum_qty = nil

  local day_cum_qty_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x04) > 0

  if day_cum_qty_exists then
    index, day_cum_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.day_cum_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Avg Px
  local avg_px = nil

  local avg_px_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x08) > 0

  if avg_px_exists then
    index, avg_px = cboe_cfefutures_binaryorderentry_boe_v1_3.avg_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Day Avg Px
  local day_avg_px = nil

  local day_avg_px_exists = number_of_return_bitfields >= 13 and bit.band(return_bitfield_13, 0x10) > 0

  if day_avg_px_exists then
    index, day_avg_px = cboe_cfefutures_binaryorderentry_boe_v1_3.day_avg_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Frequent Trader Id
  local frequent_trader_id = nil

  local frequent_trader_id_exists = number_of_return_bitfields >= 16 and bit.band(return_bitfield_16, 0x01) > 0

  if frequent_trader_id_exists then
    index, frequent_trader_id = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Acknowledgment Message
cboe_cfefutures_binaryorderentry_boe_v1_3.order_acknowledgment_message.dissect = function(buffer, offset, packet, parent, size_of_order_acknowledgment_message)
  local size_of_order_acknowledgment_message = cboe_cfefutures_binaryorderentry_boe_v1_3.order_acknowledgment_message.size(buffer, offset)
  local index = offset + size_of_order_acknowledgment_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.order_acknowledgment_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.order_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_order_acknowledgment_message)
    parent:set_len(size_of_order_acknowledgment_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.order_acknowledgment_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.order_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_order_acknowledgment_message)

    return index
  end
end

-- Reset Risk Message
cboe_cfefutures_binaryorderentry_boe_v1_3.reset_risk_message = {}

-- Read runtime size of: Reset Risk Message
cboe_cfefutures_binaryorderentry_boe_v1_3.reset_risk_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Reset Risk Message
cboe_cfefutures_binaryorderentry_boe_v1_3.reset_risk_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Risk Message
cboe_cfefutures_binaryorderentry_boe_v1_3.reset_risk_message.fields = function(buffer, offset, packet, parent, size_of_reset_risk_message)
  local index = offset

  -- Risk Status Id: Text
  index, risk_status_id = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_status_id.dissect(buffer, index, packet, parent)

  -- Risk Reset: Text
  index, risk_reset = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset.dissect(buffer, index, packet, parent)

  -- Reserved 4: Reserved
  index, reserved_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_4.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)

  -- Product Name: Text
  index, product_name = cboe_cfefutures_binaryorderentry_boe_v1_3.product_name.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_cfefutures_binaryorderentry_boe_v1_3.custom_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Message
cboe_cfefutures_binaryorderentry_boe_v1_3.reset_risk_message.dissect = function(buffer, offset, packet, parent, size_of_reset_risk_message)
  local size_of_reset_risk_message = cboe_cfefutures_binaryorderentry_boe_v1_3.reset_risk_message.size(buffer, offset)
  local index = offset + size_of_reset_risk_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.reset_risk_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.reset_risk_message.fields(buffer, offset, packet, parent, size_of_reset_risk_message)
    parent:set_len(size_of_reset_risk_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.reset_risk_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.reset_risk_message.fields(buffer, offset, packet, parent, size_of_reset_risk_message)

    return index
  end
end

-- Purge Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_2 = {}

-- Size: Purge Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_2.size = 1

-- Display: Purge Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Purge Order Bitfield 2 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 1"
  end
  -- Is Purge Order Bitfield 2 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 2"
  end
  -- Is Purge Order Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 4"
  end
  -- Is Purge Order Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 8"
  end
  -- Is Purge Order Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 16"
  end
  -- Is Purge Order Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 32"
  end
  -- Is Purge Order Bitfield 2 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 64"
  end
  -- Is Purge Order Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Purge Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_2.bits = function(range, value, packet, parent)

  -- Purge Order Bitfield 2 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_1, range, value)

  -- Purge Order Bitfield 2 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_2, range, value)

  -- Purge Order Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_4, range, value)

  -- Purge Order Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_8, range, value)

  -- Purge Order Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_16, range, value)

  -- Purge Order Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_32, range, value)

  -- Purge Order Bitfield 2 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_64, range, value)

  -- Purge Order Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2_reserved_128, range, value)
end

-- Dissect: Purge Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_2, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purge Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_1 = {}

-- Size: Purge Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_1.size = 1

-- Display: Purge Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Purge Order Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Clearing Firm"
  end
  -- Is Purge Order Bitfield 1 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Reserved 2"
  end
  -- Is Purge Order Bitfield 1 Mass Cancel Inst flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Mass Cancel Inst"
  end
  -- Is Purge Order Bitfield 1 Product Name flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Product Name"
  end
  -- Is Purge Order Bitfield 1 Mass Cancel Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Mass Cancel Id"
  end
  -- Is Purge Order Bitfield 1 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Reserved 32"
  end
  -- Is Purge Order Bitfield 1 Manual Order Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Manual Order Indicator"
  end
  -- Is Purge Order Bitfield 1 Oeoid flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Oeoid"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Purge Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_1.bits = function(range, value, packet, parent)

  -- Purge Order Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_clearing_firm, range, value)

  -- Purge Order Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_reserved_2, range, value)

  -- Purge Order Bitfield 1 Mass Cancel Inst: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_mass_cancel_inst, range, value)

  -- Purge Order Bitfield 1 Product Name: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_product_name, range, value)

  -- Purge Order Bitfield 1 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_mass_cancel_id, range, value)

  -- Purge Order Bitfield 1 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_reserved_32, range, value)

  -- Purge Order Bitfield 1 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_manual_order_indicator, range, value)

  -- Purge Order Bitfield 1 Oeoid: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1_oeoid, range, value)
end

-- Dissect: Purge Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_bitfield_1, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purge Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_message = {}

-- Read runtime size of: Purge Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Purge Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_message.fields = function(buffer, offset, packet, parent, size_of_purge_order_message)
  local index = offset

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Purge Order Bitfields: Binary
  index, number_of_purge_order_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_purge_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Purge Order Bitfield 1
  local purge_order_bitfield_1 = nil

  local purge_order_bitfield_1_exists = number_of_purge_order_bitfields >= 1

  if purge_order_bitfield_1_exists then

    -- Purge Order Bitfield 1: Struct of 8 fields
    index, purge_order_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Purge Order Bitfield 2
  local purge_order_bitfield_2 = nil

  local purge_order_bitfield_2_exists = number_of_purge_order_bitfields >= 2

  if purge_order_bitfield_2_exists then

    -- Purge Order Bitfield 2: Struct of 8 fields
    index, purge_order_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_purge_order_bitfields >= 1 and bit.band(purge_order_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Inst
  local mass_cancel_inst = nil

  local mass_cancel_inst_exists = number_of_purge_order_bitfields >= 1 and bit.band(purge_order_bitfield_1, 0x04) > 0

  if mass_cancel_inst_exists then
    index, mass_cancel_inst = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Product Name
  local product_name = nil

  local product_name_exists = number_of_purge_order_bitfields >= 1 and bit.band(purge_order_bitfield_1, 0x08) > 0

  if product_name_exists then
    index, product_name = cboe_cfefutures_binaryorderentry_boe_v1_3.product_name.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_purge_order_bitfields >= 1 and bit.band(purge_order_bitfield_1, 0x10) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_purge_order_bitfields >= 1 and bit.band(purge_order_bitfield_1, 0x40) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_purge_order_bitfields >= 1 and bit.band(purge_order_bitfield_1, 0x80) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Purge Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_message.dissect = function(buffer, offset, packet, parent, size_of_purge_order_message)
  local size_of_purge_order_message = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_message.size(buffer, offset)
  local index = offset + size_of_purge_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.purge_order_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_message.fields(buffer, offset, packet, parent, size_of_purge_order_message)
    parent:set_len(size_of_purge_order_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_message.fields(buffer, offset, packet, parent, size_of_purge_order_message)

    return index
  end
end

-- Quote Group
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_group = {}

-- Size: Quote Group
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_group.size =
  cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.side.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.price.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_12.size

-- Display: Quote Group
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Group
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_group.fields = function(buffer, offset, packet, parent, quote_group_index)
  local index = offset

  -- Implicit Quote Group Index
  if quote_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_group_index, quote_group_index)
    iteration:set_generated()
  end

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_short.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.dissect(buffer, index, packet, parent)

  -- Reserved 12: Reserved
  index, reserved_12 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Group
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_group.dissect = function(buffer, offset, packet, parent, quote_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_group, buffer(offset, 0))
    local index = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_group.fields(buffer, offset, packet, parent, quote_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_binaryorderentry_boe_v1_3.quote_group.fields(buffer, offset, packet, parent, quote_group_index)
  end
end

-- Quote Update Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_message = {}

-- Read runtime size of: Quote Update Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Quote Update Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_message.fields = function(buffer, offset, packet, parent, size_of_quote_update_message)
  local index = offset

  -- Quote Update Id: Text
  index, quote_update_id = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_cfefutures_binaryorderentry_boe_v1_3.account.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_cfefutures_binaryorderentry_boe_v1_3.custom_group_id.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeoid: Text
  index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)

  -- Size Modifier: Text
  index, size_modifier = cboe_cfefutures_binaryorderentry_boe_v1_3.size_modifier.dissect(buffer, index, packet, parent)

  -- Reserved 6: Reserved
  index, reserved_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.reserved_6.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Binary
  index, number_of_quotes = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Group
  for quote_group_index = 1, number_of_quotes do
    index, quote_group = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_group.dissect(buffer, index, packet, parent, quote_group_index)
  end

  return index
end

-- Dissect: Quote Update Message
cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_message.dissect = function(buffer, offset, packet, parent, size_of_quote_update_message)
  local size_of_quote_update_message = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_message.size(buffer, offset)
  local index = offset + size_of_quote_update_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.quote_update_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_message.fields(buffer, offset, packet, parent, size_of_quote_update_message)
    parent:set_len(size_of_quote_update_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_message.fields(buffer, offset, packet, parent, size_of_quote_update_message)

    return index
  end
end

-- Modify Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_2 = {}

-- Size: Modify Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_2.size = 1

-- Display: Modify Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Modify Order Bitfield 2 Max Floor flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Max Floor"
  end
  -- Is Modify Order Bitfield 2 Stop Px flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Stop Px"
  end
  -- Is Modify Order Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Reserved 4"
  end
  -- Is Modify Order Bitfield 2 Manual Order Indicator flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Manual Order Indicator"
  end
  -- Is Modify Order Bitfield 2 Oeoid flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Oeoid"
  end
  -- Is Modify Order Bitfield 2 Frequent Trader Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Frequent Trader Id"
  end
  -- Is Modify Order Bitfield 2 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Reserved 64"
  end
  -- Is Modify Order Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_2.bits = function(range, value, packet, parent)

  -- Modify Order Bitfield 2 Max Floor: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_max_floor, range, value)

  -- Modify Order Bitfield 2 Stop Px: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_stop_px, range, value)

  -- Modify Order Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_reserved_4, range, value)

  -- Modify Order Bitfield 2 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_manual_order_indicator, range, value)

  -- Modify Order Bitfield 2 Oeoid: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_oeoid, range, value)

  -- Modify Order Bitfield 2 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_frequent_trader_id, range, value)

  -- Modify Order Bitfield 2 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_reserved_64, range, value)

  -- Modify Order Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2_reserved_128, range, value)
end

-- Dissect: Modify Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_2, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_1 = {}

-- Size: Modify Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_1.size = 1

-- Display: Modify Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Modify Order Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Clearing Firm"
  end
  -- Is Modify Order Bitfield 1 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Reserved 2"
  end
  -- Is Modify Order Bitfield 1 Order Qty flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Order Qty"
  end
  -- Is Modify Order Bitfield 1 Price flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Price"
  end
  -- Is Modify Order Bitfield 1 Ord Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Ord Type"
  end
  -- Is Modify Order Bitfield 1 Cancel Orig On Reject flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Cancel Orig On Reject"
  end
  -- Is Modify Order Bitfield 1 Exec Inst flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Exec Inst"
  end
  -- Is Modify Order Bitfield 1 Side flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Side"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_1.bits = function(range, value, packet, parent)

  -- Modify Order Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_clearing_firm, range, value)

  -- Modify Order Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_reserved_2, range, value)

  -- Modify Order Bitfield 1 Order Qty: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_order_qty, range, value)

  -- Modify Order Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_price, range, value)

  -- Modify Order Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_ord_type, range, value)

  -- Modify Order Bitfield 1 Cancel Orig On Reject: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_cancel_orig_on_reject, range, value)

  -- Modify Order Bitfield 1 Exec Inst: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_exec_inst, range, value)

  -- Modify Order Bitfield 1 Side: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1_side, range, value)
end

-- Dissect: Modify Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_bitfield_1, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_message = {}

-- Read runtime size of: Modify Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Modify Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_message.fields = function(buffer, offset, packet, parent, size_of_modify_order_message)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Number Of Modify Order Bitfields: Binary
  index, number_of_modify_order_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_modify_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Modify Order Bitfield 1
  local modify_order_bitfield_1 = nil

  local modify_order_bitfield_1_exists = number_of_modify_order_bitfields >= 1

  if modify_order_bitfield_1_exists then

    -- Modify Order Bitfield 1: Struct of 8 fields
    index, modify_order_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Modify Order Bitfield 2
  local modify_order_bitfield_2 = nil

  local modify_order_bitfield_2_exists = number_of_modify_order_bitfields >= 2

  if modify_order_bitfield_2_exists then

    -- Modify Order Bitfield 2: Struct of 8 fields
    index, modify_order_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x04) > 0

  if order_qty_exists then
    index, order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x08) > 0

  if price_exists then
    index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cancel Orig On Reject
  local cancel_orig_on_reject = nil

  local cancel_orig_on_reject_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x20) > 0

  if cancel_orig_on_reject_exists then
    index, cancel_orig_on_reject = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_orig_on_reject.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x80) > 0

  if side_exists then
    index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_modify_order_bitfields >= 2 and bit.band(modify_order_bitfield_2, 0x02) > 0

  if stop_px_exists then
    index, stop_px = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_modify_order_bitfields >= 2 and bit.band(modify_order_bitfield_2, 0x08) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_modify_order_bitfields >= 2 and bit.band(modify_order_bitfield_2, 0x10) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Frequent Trader Id
  local frequent_trader_id = nil

  local frequent_trader_id_exists = number_of_modify_order_bitfields >= 2 and bit.band(modify_order_bitfield_2, 0x20) > 0

  if frequent_trader_id_exists then
    index, frequent_trader_id = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Modify Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_message.dissect = function(buffer, offset, packet, parent, size_of_modify_order_message)
  local size_of_modify_order_message = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_message.size(buffer, offset)
  local index = offset + size_of_modify_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.modify_order_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_message.fields(buffer, offset, packet, parent, size_of_modify_order_message)
    parent:set_len(size_of_modify_order_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_message.fields(buffer, offset, packet, parent, size_of_modify_order_message)

    return index
  end
end

-- Cancel Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_2 = {}

-- Size: Cancel Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_2.size = 1

-- Display: Cancel Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Cancel Order Bitfield 2 Mass Cancel Inst flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Mass Cancel Inst"
  end
  -- Is Cancel Order Bitfield 2 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 2"
  end
  -- Is Cancel Order Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 4"
  end
  -- Is Cancel Order Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 8"
  end
  -- Is Cancel Order Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 16"
  end
  -- Is Cancel Order Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 32"
  end
  -- Is Cancel Order Bitfield 2 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 64"
  end
  -- Is Cancel Order Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Cancel Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_2.bits = function(range, value, packet, parent)

  -- Cancel Order Bitfield 2 Mass Cancel Inst: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_mass_cancel_inst, range, value)

  -- Cancel Order Bitfield 2 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_2, range, value)

  -- Cancel Order Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_4, range, value)

  -- Cancel Order Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_8, range, value)

  -- Cancel Order Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_16, range, value)

  -- Cancel Order Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_32, range, value)

  -- Cancel Order Bitfield 2 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_64, range, value)

  -- Cancel Order Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2_reserved_128, range, value)
end

-- Dissect: Cancel Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_2, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cancel Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_1 = {}

-- Size: Cancel Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_1.size = 1

-- Display: Cancel Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Cancel Order Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Clearing Firm"
  end
  -- Is Cancel Order Bitfield 1 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Reserved 2"
  end
  -- Is Cancel Order Bitfield 1 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Reserved 4"
  end
  -- Is Cancel Order Bitfield 1 Product Name flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Product Name"
  end
  -- Is Cancel Order Bitfield 1 Mass Cancel Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Mass Cancel Id"
  end
  -- Is Cancel Order Bitfield 1 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Reserved 32"
  end
  -- Is Cancel Order Bitfield 1 Manual Order Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Manual Order Indicator"
  end
  -- Is Cancel Order Bitfield 1 Oeoid flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Oeoid"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Cancel Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_1.bits = function(range, value, packet, parent)

  -- Cancel Order Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_clearing_firm, range, value)

  -- Cancel Order Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_reserved_2, range, value)

  -- Cancel Order Bitfield 1 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_reserved_4, range, value)

  -- Cancel Order Bitfield 1 Product Name: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_product_name, range, value)

  -- Cancel Order Bitfield 1 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_mass_cancel_id, range, value)

  -- Cancel Order Bitfield 1 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_reserved_32, range, value)

  -- Cancel Order Bitfield 1 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_manual_order_indicator, range, value)

  -- Cancel Order Bitfield 1 Oeoid: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1_oeoid, range, value)
end

-- Dissect: Cancel Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_bitfield_1, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cancel Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_message = {}

-- Read runtime size of: Cancel Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Cancel Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_message.fields = function(buffer, offset, packet, parent, size_of_cancel_order_message)
  local index = offset

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Number Of Cancel Order Bitfields: Binary
  index, number_of_cancel_order_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_cancel_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Cancel Order Bitfield 1
  local cancel_order_bitfield_1 = nil

  local cancel_order_bitfield_1_exists = number_of_cancel_order_bitfields >= 1

  if cancel_order_bitfield_1_exists then

    -- Cancel Order Bitfield 1: Struct of 8 fields
    index, cancel_order_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cancel Order Bitfield 2
  local cancel_order_bitfield_2 = nil

  local cancel_order_bitfield_2_exists = number_of_cancel_order_bitfields >= 2

  if cancel_order_bitfield_2_exists then

    -- Cancel Order Bitfield 2: Struct of 8 fields
    index, cancel_order_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_cancel_order_bitfields >= 1 and bit.band(cancel_order_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Product Name
  local product_name = nil

  local product_name_exists = number_of_cancel_order_bitfields >= 1 and bit.band(cancel_order_bitfield_1, 0x08) > 0

  if product_name_exists then
    index, product_name = cboe_cfefutures_binaryorderentry_boe_v1_3.product_name.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_cancel_order_bitfields >= 1 and bit.band(cancel_order_bitfield_1, 0x10) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_cancel_order_bitfields >= 1 and bit.band(cancel_order_bitfield_1, 0x40) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_cancel_order_bitfields >= 1 and bit.band(cancel_order_bitfield_1, 0x80) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Inst
  local mass_cancel_inst = nil

  local mass_cancel_inst_exists = number_of_cancel_order_bitfields >= 2 and bit.band(cancel_order_bitfield_2, 0x01) > 0

  if mass_cancel_inst_exists then
    index, mass_cancel_inst = cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_inst.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Cancel Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_message.dissect = function(buffer, offset, packet, parent, size_of_cancel_order_message)
  local size_of_cancel_order_message = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_message.size(buffer, offset)
  local index = offset + size_of_cancel_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.cancel_order_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_message.fields(buffer, offset, packet, parent, size_of_cancel_order_message)
    parent:set_len(size_of_cancel_order_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_message.fields(buffer, offset, packet, parent, size_of_cancel_order_message)

    return index
  end
end

-- New Order Bitfield 8
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_8 = {}

-- Size: New Order Bitfield 8
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_8.size = 1

-- Display: New Order Bitfield 8
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_8.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 8 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Reserved 1"
  end
  -- Is New Order Bitfield 8 Si Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Si Indicator"
  end
  -- Is New Order Bitfield 8 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Reserved 4"
  end
  -- Is New Order Bitfield 8 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Reserved 8"
  end
  -- Is New Order Bitfield 8 Frequent Trader Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Frequent Trader Id"
  end
  -- Is New Order Bitfield 8 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Reserved 32"
  end
  -- Is New Order Bitfield 8 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Reserved 64"
  end
  -- Is New Order Bitfield 8 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 8
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_8.bits = function(range, value, packet, parent)

  -- New Order Bitfield 8 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_1, range, value)

  -- New Order Bitfield 8 Si Indicator: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_si_indicator, range, value)

  -- New Order Bitfield 8 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_4, range, value)

  -- New Order Bitfield 8 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_8, range, value)

  -- New Order Bitfield 8 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_frequent_trader_id, range, value)

  -- New Order Bitfield 8 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_32, range, value)

  -- New Order Bitfield 8 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_64, range, value)

  -- New Order Bitfield 8 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 8
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_8.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_8.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_8.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_8, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_8.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 7
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_7 = {}

-- Size: New Order Bitfield 7
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_7.size = 1

-- Display: New Order Bitfield 7
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_7.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 7 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 1"
  end
  -- Is New Order Bitfield 7 Custom Group Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Custom Group Id"
  end
  -- Is New Order Bitfield 7 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 4"
  end
  -- Is New Order Bitfield 7 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 8"
  end
  -- Is New Order Bitfield 7 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 16"
  end
  -- Is New Order Bitfield 7 Cti Code flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Cti Code"
  end
  -- Is New Order Bitfield 7 Manual Order Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Manual Order Indicator"
  end
  -- Is New Order Bitfield 7 Oeoid flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Oeoid"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 7
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_7.bits = function(range, value, packet, parent)

  -- New Order Bitfield 7 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_reserved_1, range, value)

  -- New Order Bitfield 7 Custom Group Id: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_custom_group_id, range, value)

  -- New Order Bitfield 7 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_reserved_4, range, value)

  -- New Order Bitfield 7 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_reserved_8, range, value)

  -- New Order Bitfield 7 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_reserved_16, range, value)

  -- New Order Bitfield 7 Cti Code: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_cti_code, range, value)

  -- New Order Bitfield 7 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_manual_order_indicator, range, value)

  -- New Order Bitfield 7 Oeoid: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7_oeoid, range, value)
end

-- Dissect: New Order Bitfield 7
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_7.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_7.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_7, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 6
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_6 = {}

-- Size: New Order Bitfield 6
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_6.size = 1

-- Display: New Order Bitfield 6
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_6.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 6 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Reserved 1"
  end
  -- Is New Order Bitfield 6 Stop Px flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Stop Px"
  end
  -- Is New Order Bitfield 6 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Reserved 4"
  end
  -- Is New Order Bitfield 6 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Reserved 8"
  end
  -- Is New Order Bitfield 6 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Reserved 16"
  end
  -- Is New Order Bitfield 6 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Reserved 32"
  end
  -- Is New Order Bitfield 6 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Reserved 64"
  end
  -- Is New Order Bitfield 6 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 6
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_6.bits = function(range, value, packet, parent)

  -- New Order Bitfield 6 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_1, range, value)

  -- New Order Bitfield 6 Stop Px: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_stop_px, range, value)

  -- New Order Bitfield 6 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_4, range, value)

  -- New Order Bitfield 6 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_8, range, value)

  -- New Order Bitfield 6 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_16, range, value)

  -- New Order Bitfield 6 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_32, range, value)

  -- New Order Bitfield 6 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_64, range, value)

  -- New Order Bitfield 6 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 6
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_6, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 5
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_5 = {}

-- Size: New Order Bitfield 5
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_5.size = 1

-- Display: New Order Bitfield 5
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_5.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 5 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 1"
  end
  -- Is New Order Bitfield 5 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 2"
  end
  -- Is New Order Bitfield 5 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 4"
  end
  -- Is New Order Bitfield 5 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 8"
  end
  -- Is New Order Bitfield 5 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 16"
  end
  -- Is New Order Bitfield 5 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 32"
  end
  -- Is New Order Bitfield 5 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 64"
  end
  -- Is New Order Bitfield 5 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 5
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_5.bits = function(range, value, packet, parent)

  -- New Order Bitfield 5 Reserved 1: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_1, range, value)

  -- New Order Bitfield 5 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_2, range, value)

  -- New Order Bitfield 5 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_4, range, value)

  -- New Order Bitfield 5 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_8, range, value)

  -- New Order Bitfield 5 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_16, range, value)

  -- New Order Bitfield 5 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_32, range, value)

  -- New Order Bitfield 5 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_64, range, value)

  -- New Order Bitfield 5 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 5
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_5, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 4
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_4 = {}

-- Size: New Order Bitfield 4
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_4.size = 1

-- Display: New Order Bitfield 4
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_4.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 4 Maturity Date flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Maturity Date"
  end
  -- Is New Order Bitfield 4 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 2"
  end
  -- Is New Order Bitfield 4 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 4"
  end
  -- Is New Order Bitfield 4 Risk Reset flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Risk Reset"
  end
  -- Is New Order Bitfield 4 Open Close flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Open Close"
  end
  -- Is New Order Bitfield 4 Cmta Number flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Cmta Number"
  end
  -- Is New Order Bitfield 4 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 64"
  end
  -- Is New Order Bitfield 4 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 4
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_4.bits = function(range, value, packet, parent)

  -- New Order Bitfield 4 Maturity Date: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_maturity_date, range, value)

  -- New Order Bitfield 4 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_reserved_2, range, value)

  -- New Order Bitfield 4 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_reserved_4, range, value)

  -- New Order Bitfield 4 Risk Reset: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_risk_reset, range, value)

  -- New Order Bitfield 4 Open Close: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_open_close, range, value)

  -- New Order Bitfield 4 Cmta Number: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_cmta_number, range, value)

  -- New Order Bitfield 4 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_reserved_64, range, value)

  -- New Order Bitfield 4 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 4
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_4, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 3
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_3 = {}

-- Size: New Order Bitfield 3
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_3.size = 1

-- Display: New Order Bitfield 3
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_3.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 3 Account flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Account"
  end
  -- Is New Order Bitfield 3 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Reserved 2"
  end
  -- Is New Order Bitfield 3 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Reserved 4"
  end
  -- Is New Order Bitfield 3 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Reserved 8"
  end
  -- Is New Order Bitfield 3 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Reserved 16"
  end
  -- Is New Order Bitfield 3 Prevent Match flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Prevent Match"
  end
  -- Is New Order Bitfield 3 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Reserved 64"
  end
  -- Is New Order Bitfield 3 Expire Time flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Expire Time"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 3
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_3.bits = function(range, value, packet, parent)

  -- New Order Bitfield 3 Account: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_account, range, value)

  -- New Order Bitfield 3 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_reserved_2, range, value)

  -- New Order Bitfield 3 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_reserved_4, range, value)

  -- New Order Bitfield 3 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_reserved_8, range, value)

  -- New Order Bitfield 3 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_reserved_16, range, value)

  -- New Order Bitfield 3 Prevent Match: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_prevent_match, range, value)

  -- New Order Bitfield 3 Reserved 64: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_reserved_64, range, value)

  -- New Order Bitfield 3 Expire Time: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3_expire_time, range, value)
end

-- Dissect: New Order Bitfield 3
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_3, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_2 = {}

-- Size: New Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_2.size = 1

-- Display: New Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 2 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Symbol"
  end
  -- Is New Order Bitfield 2 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Reserved 2"
  end
  -- Is New Order Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Reserved 4"
  end
  -- Is New Order Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Reserved 8"
  end
  -- Is New Order Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Reserved 16"
  end
  -- Is New Order Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Reserved 32"
  end
  -- Is New Order Bitfield 2 Capacity flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Capacity"
  end
  -- Is New Order Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_2.bits = function(range, value, packet, parent)

  -- New Order Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_symbol, range, value)

  -- New Order Bitfield 2 Reserved 2: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_2, range, value)

  -- New Order Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_4, range, value)

  -- New Order Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_8, range, value)

  -- New Order Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_16, range, value)

  -- New Order Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_32, range, value)

  -- New Order Bitfield 2 Capacity: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_capacity, range, value)

  -- New Order Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 2
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_2, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_1 = {}

-- Size: New Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_1.size = 1

-- Display: New Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Clearing Firm"
  end
  -- Is New Order Bitfield 1 Clearing Account flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Clearing Account"
  end
  -- Is New Order Bitfield 1 Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Price"
  end
  -- Is New Order Bitfield 1 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Reserved 8"
  end
  -- Is New Order Bitfield 1 Ord Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Ord Type"
  end
  -- Is New Order Bitfield 1 Time In Force flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Time In Force"
  end
  -- Is New Order Bitfield 1 Min Qty flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Min Qty"
  end
  -- Is New Order Bitfield 1 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_1.bits = function(range, value, packet, parent)

  -- New Order Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_clearing_firm, range, value)

  -- New Order Bitfield 1 Clearing Account: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_clearing_account, range, value)

  -- New Order Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_price, range, value)

  -- New Order Bitfield 1 Reserved 8: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_reserved_8, range, value)

  -- New Order Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_ord_type, range, value)

  -- New Order Bitfield 1 Time In Force: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_time_in_force, range, value)

  -- New Order Bitfield 1 Min Qty: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_min_qty, range, value)

  -- New Order Bitfield 1 Reserved 128: 1 Bit
  parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 1
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_bitfield_1, range, display)

  if show.structs then
    cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_message = {}

-- Read runtime size of: New Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: New Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_message.fields = function(buffer, offset, packet, parent, size_of_new_order_message)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cfefutures_binaryorderentry_boe_v1_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cfefutures_binaryorderentry_boe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.order_qty.dissect(buffer, index, packet, parent)

  -- Number Of New Order Bitfields: Binary
  index, number_of_new_order_bitfields = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_new_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: New Order Bitfield 1
  local new_order_bitfield_1 = nil

  local new_order_bitfield_1_exists = number_of_new_order_bitfields >= 1

  if new_order_bitfield_1_exists then

    -- New Order Bitfield 1: Struct of 8 fields
    index, new_order_bitfield_1 = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 2
  local new_order_bitfield_2 = nil

  local new_order_bitfield_2_exists = number_of_new_order_bitfields >= 2

  if new_order_bitfield_2_exists then

    -- New Order Bitfield 2: Struct of 8 fields
    index, new_order_bitfield_2 = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 3
  local new_order_bitfield_3 = nil

  local new_order_bitfield_3_exists = number_of_new_order_bitfields >= 3

  if new_order_bitfield_3_exists then

    -- New Order Bitfield 3: Struct of 8 fields
    index, new_order_bitfield_3 = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 4
  local new_order_bitfield_4 = nil

  local new_order_bitfield_4_exists = number_of_new_order_bitfields >= 4

  if new_order_bitfield_4_exists then

    -- New Order Bitfield 4: Struct of 8 fields
    index, new_order_bitfield_4 = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 5
  local new_order_bitfield_5 = nil

  local new_order_bitfield_5_exists = number_of_new_order_bitfields >= 5

  if new_order_bitfield_5_exists then

    -- New Order Bitfield 5: Struct of 8 fields
    index, new_order_bitfield_5 = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 6
  local new_order_bitfield_6 = nil

  local new_order_bitfield_6_exists = number_of_new_order_bitfields >= 6

  if new_order_bitfield_6_exists then

    -- New Order Bitfield 6: Struct of 8 fields
    index, new_order_bitfield_6 = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 7
  local new_order_bitfield_7 = nil

  local new_order_bitfield_7_exists = number_of_new_order_bitfields >= 7

  if new_order_bitfield_7_exists then

    -- New Order Bitfield 7: Struct of 8 fields
    index, new_order_bitfield_7 = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 8
  local new_order_bitfield_8 = nil

  local new_order_bitfield_8_exists = number_of_new_order_bitfields >= 8

  if new_order_bitfield_8_exists then

    -- New Order Bitfield 8: Struct of 8 fields
    index, new_order_bitfield_8 = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x02) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_cfefutures_binaryorderentry_boe_v1_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_cfefutures_binaryorderentry_boe_v1_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_cfefutures_binaryorderentry_boe_v1_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_cfefutures_binaryorderentry_boe_v1_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_cfefutures_binaryorderentry_boe_v1_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cfefutures_binaryorderentry_boe_v1_3.symbol_long.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_cfefutures_binaryorderentry_boe_v1_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_cfefutures_binaryorderentry_boe_v1_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x20) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_cfefutures_binaryorderentry_boe_v1_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_cfefutures_binaryorderentry_boe_v1_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Maturity Date
  local maturity_date = nil

  local maturity_date_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x01) > 0

  if maturity_date_exists then
    index, maturity_date = cboe_cfefutures_binaryorderentry_boe_v1_3.maturity_date.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Risk Reset
  local risk_reset = nil

  local risk_reset_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x08) > 0

  if risk_reset_exists then
    index, risk_reset = cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Open Close
  local open_close = nil

  local open_close_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x10) > 0

  if open_close_exists then
    index, open_close = cboe_cfefutures_binaryorderentry_boe_v1_3.open_close.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmta Number
  local cmta_number = nil

  local cmta_number_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x20) > 0

  if cmta_number_exists then
    index, cmta_number = cboe_cfefutures_binaryorderentry_boe_v1_3.cmta_number.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x02) > 0

  if stop_px_exists then
    index, stop_px = cboe_cfefutures_binaryorderentry_boe_v1_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Custom Group Id
  local custom_group_id = nil

  local custom_group_id_exists = number_of_new_order_bitfields >= 7 and bit.band(new_order_bitfield_7, 0x02) > 0

  if custom_group_id_exists then
    index, custom_group_id = cboe_cfefutures_binaryorderentry_boe_v1_3.custom_group_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cti Code
  local cti_code = nil

  local cti_code_exists = number_of_new_order_bitfields >= 7 and bit.band(new_order_bitfield_7, 0x20) > 0

  if cti_code_exists then
    index, cti_code = cboe_cfefutures_binaryorderentry_boe_v1_3.cti_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Manual Order Indicator
  local manual_order_indicator = nil

  local manual_order_indicator_exists = number_of_new_order_bitfields >= 7 and bit.band(new_order_bitfield_7, 0x40) > 0

  if manual_order_indicator_exists then
    index, manual_order_indicator = cboe_cfefutures_binaryorderentry_boe_v1_3.manual_order_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Oeoid
  local oeoid = nil

  local oeoid_exists = number_of_new_order_bitfields >= 7 and bit.band(new_order_bitfield_7, 0x80) > 0

  if oeoid_exists then
    index, oeoid = cboe_cfefutures_binaryorderentry_boe_v1_3.oeoid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Frequent Trader Id
  local frequent_trader_id = nil

  local frequent_trader_id_exists = number_of_new_order_bitfields >= 8 and bit.band(new_order_bitfield_8, 0x10) > 0

  if frequent_trader_id_exists then
    index, frequent_trader_id = cboe_cfefutures_binaryorderentry_boe_v1_3.frequent_trader_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Message
cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_message.dissect = function(buffer, offset, packet, parent, size_of_new_order_message)
  local size_of_new_order_message = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_message.size(buffer, offset)
  local index = offset + size_of_new_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.new_order_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_message.fields(buffer, offset, packet, parent, size_of_new_order_message)
    parent:set_len(size_of_new_order_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_message.fields(buffer, offset, packet, parent, size_of_new_order_message)

    return index
  end
end

-- Replay Complete Message
cboe_cfefutures_binaryorderentry_boe_v1_3.replay_complete_message = {}

-- Display: Replay Complete Message
cboe_cfefutures_binaryorderentry_boe_v1_3.replay_complete_message.display = function(packet, parent, length)
  return "Replay Complete Message"
end


-- Dissect: Replay Complete Message
cboe_cfefutures_binaryorderentry_boe_v1_3.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.replay_complete_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat Message
cboe_cfefutures_binaryorderentry_boe_v1_3.server_heartbeat_message = {}

-- Display: Server Heartbeat Message
cboe_cfefutures_binaryorderentry_boe_v1_3.server_heartbeat_message.display = function(packet, parent, length)
  return "Server Heartbeat Message"
end


-- Dissect: Server Heartbeat Message
cboe_cfefutures_binaryorderentry_boe_v1_3.server_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.server_heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unit Sequence
cboe_cfefutures_binaryorderentry_boe_v1_3.unit_sequence = {}

-- Size: Unit Sequence
cboe_cfefutures_binaryorderentry_boe_v1_3.unit_sequence.size =
  cboe_cfefutures_binaryorderentry_boe_v1_3.unit_number.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.sequence_number.size

-- Display: Unit Sequence
cboe_cfefutures_binaryorderentry_boe_v1_3.unit_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Sequence
cboe_cfefutures_binaryorderentry_boe_v1_3.unit_sequence.fields = function(buffer, offset, packet, parent, unit_sequence_index)
  local index = offset

  -- Implicit Unit Sequence Index
  if unit_sequence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.unit_sequence_index, unit_sequence_index)
    iteration:set_generated()
  end

  -- Unit Number: Binary
  index, unit_number = cboe_cfefutures_binaryorderentry_boe_v1_3.unit_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary
  index, sequence_number = cboe_cfefutures_binaryorderentry_boe_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
cboe_cfefutures_binaryorderentry_boe_v1_3.unit_sequence.dissect = function(buffer, offset, packet, parent, unit_sequence_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.unit_sequence, buffer(offset, 0))
    local index = cboe_cfefutures_binaryorderentry_boe_v1_3.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.unit_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_binaryorderentry_boe_v1_3.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
  end
end

-- Logout Message
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_message = {}

-- Read runtime size of: Logout Message
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Logout Message
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_message.fields = function(buffer, offset, packet, parent, size_of_logout_message)
  local index = offset

  -- Logout Reason: Alphanumeric
  index, logout_reason = cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: Text
  index, logout_reason_text = cboe_cfefutures_binaryorderentry_boe_v1_3.logout_reason_text.dissect(buffer, index, packet, parent)

  -- Last Received Sequence Number: Binary
  index, last_received_sequence_number = cboe_cfefutures_binaryorderentry_boe_v1_3.last_received_sequence_number.dissect(buffer, index, packet, parent)

  -- Number Of Units: Binary
  index, number_of_units = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_cfefutures_binaryorderentry_boe_v1_3.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Logout Message
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_message.dissect = function(buffer, offset, packet, parent, size_of_logout_message)
  local size_of_logout_message = cboe_cfefutures_binaryorderentry_boe_v1_3.logout_message.size(buffer, offset)
  local index = offset + size_of_logout_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.logout_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.logout_message.fields(buffer, offset, packet, parent, size_of_logout_message)
    parent:set_len(size_of_logout_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.logout_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.logout_message.fields(buffer, offset, packet, parent, size_of_logout_message)

    return index
  end
end

-- Param Group
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group = {}

-- Size: Param Group
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group.size =
  cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_length.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_type.size

-- Display: Param Group
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Param Group
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group.fields = function(buffer, offset, packet, parent, param_group_index)
  local index = offset

  -- Implicit Param Group Index
  if param_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.param_group_index, param_group_index)
    iteration:set_generated()
  end

  -- Param Group Length: Binary
  index, param_group_length = cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_length.dissect(buffer, index, packet, parent)

  -- Param Group Type: Binary
  index, param_group_type = cboe_cfefutures_binaryorderentry_boe_v1_3.param_group_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Param Group
cboe_cfefutures_binaryorderentry_boe_v1_3.param_group.dissect = function(buffer, offset, packet, parent, param_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.param_group, buffer(offset, 0))
    local index = cboe_cfefutures_binaryorderentry_boe_v1_3.param_group.fields(buffer, offset, packet, parent, param_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.param_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_binaryorderentry_boe_v1_3.param_group.fields(buffer, offset, packet, parent, param_group_index)
  end
end

-- Login Response Message
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_message = {}

-- Read runtime size of: Login Response Message
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Login Response Message
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_message.fields = function(buffer, offset, packet, parent, size_of_login_response_message)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: Text
  index, login_response_text = cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_text.dissect(buffer, index, packet, parent)

  -- No Unspecified Unit Replay: Binary
  index, no_unspecified_unit_replay = cboe_cfefutures_binaryorderentry_boe_v1_3.no_unspecified_unit_replay.dissect(buffer, index, packet, parent)

  -- Last Received Sequence Number: Binary
  index, last_received_sequence_number = cboe_cfefutures_binaryorderentry_boe_v1_3.last_received_sequence_number.dissect(buffer, index, packet, parent)

  -- Number Of Units: Binary
  index, number_of_units = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_cfefutures_binaryorderentry_boe_v1_3.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  -- Number Of Param Groups: Binary
  index, number_of_param_groups = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_param_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Param Group
  for param_group_index = 1, number_of_param_groups do
    index, param_group = cboe_cfefutures_binaryorderentry_boe_v1_3.param_group.dissect(buffer, index, packet, parent, param_group_index)
  end

  return index
end

-- Dissect: Login Response Message
cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_message.dissect = function(buffer, offset, packet, parent, size_of_login_response_message)
  local size_of_login_response_message = cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_message.size(buffer, offset)
  local index = offset + size_of_login_response_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.login_response_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_message.fields(buffer, offset, packet, parent, size_of_login_response_message)
    parent:set_len(size_of_login_response_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_message.fields(buffer, offset, packet, parent, size_of_login_response_message)

    return index
  end
end

-- Client Heartbeat Message
cboe_cfefutures_binaryorderentry_boe_v1_3.client_heartbeat_message = {}

-- Display: Client Heartbeat Message
cboe_cfefutures_binaryorderentry_boe_v1_3.client_heartbeat_message.display = function(packet, parent, length)
  return "Client Heartbeat Message"
end


-- Dissect: Client Heartbeat Message
cboe_cfefutures_binaryorderentry_boe_v1_3.client_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.client_heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Request Message
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_request_message = {}

-- Display: Logout Request Message
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_request_message.display = function(packet, parent, length)
  return "Logout Request Message"
end


-- Dissect: Logout Request Message
cboe_cfefutures_binaryorderentry_boe_v1_3.logout_request_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cfefutures_binaryorderentry_boe_v1_3.logout_request_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Request Message
cboe_cfefutures_binaryorderentry_boe_v1_3.login_request_message = {}

-- Read runtime size of: Login Request Message
cboe_cfefutures_binaryorderentry_boe_v1_3.login_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Login Request Message
cboe_cfefutures_binaryorderentry_boe_v1_3.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_cfefutures_binaryorderentry_boe_v1_3.login_request_message.fields = function(buffer, offset, packet, parent, size_of_login_request_message)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_cfefutures_binaryorderentry_boe_v1_3.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_cfefutures_binaryorderentry_boe_v1_3.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_cfefutures_binaryorderentry_boe_v1_3.password.dissect(buffer, index, packet, parent)

  -- Number Of Param Groups: Binary
  index, number_of_param_groups = cboe_cfefutures_binaryorderentry_boe_v1_3.number_of_param_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Param Group
  for param_group_index = 1, number_of_param_groups do
    index, param_group = cboe_cfefutures_binaryorderentry_boe_v1_3.param_group.dissect(buffer, index, packet, parent, param_group_index)
  end

  return index
end

-- Dissect: Login Request Message
cboe_cfefutures_binaryorderentry_boe_v1_3.login_request_message.dissect = function(buffer, offset, packet, parent, size_of_login_request_message)
  local size_of_login_request_message = cboe_cfefutures_binaryorderentry_boe_v1_3.login_request_message.size(buffer, offset)
  local index = offset + size_of_login_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.login_request_message, buffer(offset, 0))
    local current = cboe_cfefutures_binaryorderentry_boe_v1_3.login_request_message.fields(buffer, offset, packet, parent, size_of_login_request_message)
    parent:set_len(size_of_login_request_message)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.login_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_binaryorderentry_boe_v1_3.login_request_message.fields(buffer, offset, packet, parent, size_of_login_request_message)

    return index
  end
end

-- Message
cboe_cfefutures_binaryorderentry_boe_v1_3.message = {}

-- Dissect: Message
cboe_cfefutures_binaryorderentry_boe_v1_3.message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 0x37 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if message_type == 0x02 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.logout_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat Message
  if message_type == 0x03 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.client_heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x24 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == 0x08 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Message
  if message_type == 0x09 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.server_heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 0x13 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.replay_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Message
  if message_type == 0x38 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if message_type == 0x39 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 0x3A then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Message
  if message_type == 0x70 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Order Message
  if message_type == 0x47 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.purge_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Message
  if message_type == 0x56 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.reset_risk_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgment Message
  if message_type == 0x25 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.order_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Acknowledgment Message
  if message_type == 0x71 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if message_type == 0x26 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Rejected Message
  if message_type == 0x78 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.quote_update_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == 0x27 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Restated Message
  if message_type == 0x72 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.quote_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Modify Rejected Message
  if message_type == 0x29 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.user_modify_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if message_type == 0x2A then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.order_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancelled Message
  if message_type == 0x73 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.quote_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Message
  if message_type == 0x2B then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 0x2C then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Execution Message
  if message_type == 0x74 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.quote_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Or Correct Message
  if message_type == 0x2D then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.trade_cancel_or_correct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected Message
  if message_type == 0x48 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.purge_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Reset Acknowledgment Message
  if message_type == 0x57 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.risk_reset_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Acknowledgment Message
  if message_type == 0x36 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.mass_cancel_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tas Restatement Message
  if message_type == 0x49 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.tas_restatement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Variance Restatement Message
  if message_type == 0x4A then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.variance_restatement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tas Quote Restatement Message
  if message_type == 0x75 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.tas_quote_restatement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Variance Quote Restatement Message
  if message_type == 0x76 then
    return cboe_cfefutures_binaryorderentry_boe_v1_3.variance_quote_restatement_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cfefutures_binaryorderentry_boe_v1_3.message_header = {}

-- Size: Message Header
cboe_cfefutures_binaryorderentry_boe_v1_3.message_header.size =
  cboe_cfefutures_binaryorderentry_boe_v1_3.start_of_message.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.message_length.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.message_type.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.matching_unit.size + 
  cboe_cfefutures_binaryorderentry_boe_v1_3.sequence_number.size

-- Display: Message Header
cboe_cfefutures_binaryorderentry_boe_v1_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cfefutures_binaryorderentry_boe_v1_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_cfefutures_binaryorderentry_boe_v1_3.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cfefutures_binaryorderentry_boe_v1_3.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 33 values
  index, message_type = cboe_cfefutures_binaryorderentry_boe_v1_3.message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_cfefutures_binaryorderentry_boe_v1_3.matching_unit.dissect(buffer, index, packet, parent)

  -- Sequence Number: Binary
  index, sequence_number = cboe_cfefutures_binaryorderentry_boe_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cfefutures_binaryorderentry_boe_v1_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3.fields.message_header, buffer(offset, 0))
    local index = cboe_cfefutures_binaryorderentry_boe_v1_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_binaryorderentry_boe_v1_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_binaryorderentry_boe_v1_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cfefutures_binaryorderentry_boe_v1_3.packet = {}

-- Verify required size of Tcp packet
cboe_cfefutures_binaryorderentry_boe_v1_3.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cfefutures_binaryorderentry_boe_v1_3.message_header.size
end

-- Dissect Packet
cboe_cfefutures_binaryorderentry_boe_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 5 fields
  index, message_header = cboe_cfefutures_binaryorderentry_boe_v1_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 6, 1):le_uint()

  -- Message: Runtime Type with 33 branches
  index = cboe_cfefutures_binaryorderentry_boe_v1_3.message.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cfefutures_binaryorderentry_boe_v1_3.init()
end

-- Dissector for Cboe CfeFutures BinaryOrderEntry Boe 1.3
function omi_cboe_cfefutures_binaryorderentry_boe_v1_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cfefutures_binaryorderentry_boe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cfefutures_binaryorderentry_boe_v1_3, buffer(), omi_cboe_cfefutures_binaryorderentry_boe_v1_3.description, "("..buffer:len().." Bytes)")
  return cboe_cfefutures_binaryorderentry_boe_v1_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CfeFutures BinaryOrderEntry Boe 1.3 (Tcp)
local function omi_cboe_cfefutures_binaryorderentry_boe_v1_3_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cfefutures_binaryorderentry_boe_v1_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cfefutures_binaryorderentry_boe_v1_3
  omi_cboe_cfefutures_binaryorderentry_boe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CfeFutures BinaryOrderEntry Boe 1.3
omi_cboe_cfefutures_binaryorderentry_boe_v1_3:register_heuristic("tcp", omi_cboe_cfefutures_binaryorderentry_boe_v1_3_tcp_heuristic)

-- Register Cboe CfeFutures BinaryOrderEntry Boe 1.3 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_cfefutures_binaryorderentry_boe_v1_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3
--   Date: Tuesday, April 21, 2020
--   Specification: CBOE_FUTURES_EXCHANGE_BOE_SPECIFICATION.pdf
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
