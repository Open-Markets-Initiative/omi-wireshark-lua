-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57 Protocol
local omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57 = Proto("Omi.Cboe.EdgaEquities.BinaryOrderEntry.Boe.v2.4.57", "Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57")

-- Protocol table
local cboe_edgaequities_binaryorderentry_boe_v2_4_57 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57 Fields
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.account = ProtoField.new("Account", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.account", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.attributed_quote = ProtoField.new("Attributed Quote", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.attributedquote", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.baseliquidityindicator", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1 = ProtoField.new("Cancel Order Bitfield 1", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield1", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_clearing_firm = ProtoField.new("Cancel Order Bitfield 1 Clearing Firm", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_manual_order_indicator = ProtoField.new("Cancel Order Bitfield 1 Manual Order Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield1manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_mass_cancel = ProtoField.new("Cancel Order Bitfield 1 Mass Cancel", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield1masscancel", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_mass_cancel_id = ProtoField.new("Cancel Order Bitfield 1 Mass Cancel Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield1masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_mass_cancel_lockout = ProtoField.new("Cancel Order Bitfield 1 Mass Cancel Lockout", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield1masscancellockout", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_operator_id = ProtoField.new("Cancel Order Bitfield 1 Operator Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield1operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_risk_root = ProtoField.new("Cancel Order Bitfield 1 Risk Root", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield1riskroot", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_routing_firm_id = ProtoField.new("Cancel Order Bitfield 1 Routing Firm Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield1routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2 = ProtoField.new("Cancel Order Bitfield 2", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield2", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_mass_cancel_inst = ProtoField.new("Cancel Order Bitfield 2 Mass Cancel Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield2masscancelinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_reserved_128 = ProtoField.new("Cancel Order Bitfield 2 Reserved 128", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_reserved_16 = ProtoField.new("Cancel Order Bitfield 2 Reserved 16", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_reserved_32 = ProtoField.new("Cancel Order Bitfield 2 Reserved 32", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_reserved_64 = ProtoField.new("Cancel Order Bitfield 2 Reserved 64", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield2reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_send_time = ProtoField.new("Cancel Order Bitfield 2 Send Time", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield2sendtime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_symbol = ProtoField.new("Cancel Order Bitfield 2 Symbol", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_symbol_sfx = ProtoField.new("Cancel Order Bitfield 2 Symbol Sfx", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorderbitfield2symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelorigonreject", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelreason", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelrejectreason", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancelled_order_coun = ProtoField.new("Cancelled Order Coun", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelledordercoun", ftypes.UINT32)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.capacity = ProtoField.new("Capacity", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.capacity", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.clordid", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.clearingaccount", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.clearingfirm", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cmc_sessions = ProtoField.new("Cmc Sessions", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cmcsessions", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.contra_broker = ProtoField.new("Contra Broker", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.contrabroker", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.correctedprice", ftypes.DOUBLE)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cross_trade_flag = ProtoField.new("Cross Trade Flag", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.crosstradeflag", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.discretion_amount = ProtoField.new("Discretion Amount", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.discretionamount", ftypes.UINT16)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.display_indicator = ProtoField.new("Display Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.displayindicator", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.display_price = ProtoField.new("Display Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.displayprice", ftypes.DOUBLE)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.display_range = ProtoField.new("Display Range", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.displayrange", ftypes.UINT32)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.echo_text = ProtoField.new("Echo Text", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.echotext", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.ex_destination = ProtoField.new("Ex Destination", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.exdestination", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.exec_id = ProtoField.new("Exec Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.execid", ftypes.UINT64)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.exec_inst = ProtoField.new("Exec Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.execinst", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.execrefid", ftypes.UINT64)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.expire_time = ProtoField.new("Expire Time", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.expiretime", ftypes.UINT64)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.ext_exec_inst = ProtoField.new("Ext Exec Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.extexecinst", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.last_px = ProtoField.new("Last Px", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.lastpx", ftypes.DOUBLE)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.last_received_sequence_number = ProtoField.new("Last Received Sequence Number", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.lastreceivedsequencenumber", ftypes.UINT32)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.last_shares = ProtoField.new("Last Shares", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.lastshares", ftypes.UINT32)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.leavesqty", ftypes.UINT32)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.locate_broker = ProtoField.new("Locate Broker", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.locatebroker", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.locate_reqd = ProtoField.new("Locate Reqd", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.locatereqd", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.loginresponsestatus", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.loginresponsetext", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.logoutreason", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.logoutreasontext", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.masscancelid", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.masscancelinst", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.matchingunit", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.max_floor = ProtoField.new("Max Floor", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.maxfloor", ftypes.UINT32)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.message_length = ProtoField.new("Message Length", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.messagelength", ftypes.UINT16)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.message_type = ProtoField.new("Message Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.messagetype", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.min_qty = ProtoField.new("Min Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.minqty", ftypes.UINT32)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1 = ProtoField.new("Modify Order Bitfield 1", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield1", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_cancel_orig_on_reject = ProtoField.new("Modify Order Bitfield 1 Cancel Orig On Reject", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield1cancelorigonreject", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_exec_inst = ProtoField.new("Modify Order Bitfield 1 Exec Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield1execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_ord_type = ProtoField.new("Modify Order Bitfield 1 Ord Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_price = ProtoField.new("Modify Order Bitfield 1 Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_reserved_1 = ProtoField.new("Modify Order Bitfield 1 Reserved 1", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield1reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_reserved_2 = ProtoField.new("Modify Order Bitfield 1 Reserved 2", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_reserved_4 = ProtoField.new("Modify Order Bitfield 1 Reserved 4", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield1reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_side = ProtoField.new("Modify Order Bitfield 1 Side", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield1side", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2 = ProtoField.new("Modify Order Bitfield 2", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield2", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_frequent_trader_id = ProtoField.new("Modify Order Bitfield 2 Frequent Trader Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield2frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_locate_broker = ProtoField.new("Modify Order Bitfield 2 Locate Broker", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield2locatebroker", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_manual_order_indicator = ProtoField.new("Modify Order Bitfield 2 Manual Order Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield2manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_max_floor = ProtoField.new("Modify Order Bitfield 2 Max Floor", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield2maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_operator_id = ProtoField.new("Modify Order Bitfield 2 Operator Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield2operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_reserved_64 = ProtoField.new("Modify Order Bitfield 2 Reserved 64", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield2reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_routing_firm_id = ProtoField.new("Modify Order Bitfield 2 Routing Firm Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield2routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_stop_px = ProtoField.new("Modify Order Bitfield 2 Stop Px", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyorderbitfield2stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyrejectreason", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1 = ProtoField.new("New Order Bitfield 1", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield1", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_new_order_input_bitfields = ProtoField.new("New Order Bitfield 1 New Order Input Bitfields", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield1neworderinputbitfields", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_128 = ProtoField.new("New Order Bitfield 1 Reserved 128", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield1reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_16 = ProtoField.new("New Order Bitfield 1 Reserved 16", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield1reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_2 = ProtoField.new("New Order Bitfield 1 Reserved 2", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_32 = ProtoField.new("New Order Bitfield 1 Reserved 32", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield1reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_4 = ProtoField.new("New Order Bitfield 1 Reserved 4", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield1reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_64 = ProtoField.new("New Order Bitfield 1 Reserved 64", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield1reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_8 = ProtoField.new("New Order Bitfield 1 Reserved 8", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield1reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10 = ProtoField.new("New Order Bitfield 10", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield10", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_attributed_quote = ProtoField.new("New Order Bitfield 10 Attributed Quote", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield10attributedquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_booking_type = ProtoField.new("New Order Bitfield 10 Booking Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield10bookingtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_client_id = ProtoField.new("New Order Bitfield 10 Client Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield10clientid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_executor_id = ProtoField.new("New Order Bitfield 10 Executor Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield10executorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_ext_exec_inst = ProtoField.new("New Order Bitfield 10 Ext Exec Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield10extexecinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_investor_id = ProtoField.new("New Order Bitfield 10 Investor Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield10investorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_order_origination = ProtoField.new("New Order Bitfield 10 Order Origination", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield10orderorigination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_session_eligibility = ProtoField.new("New Order Bitfield 10 Session Eligibility", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield10sessioneligibility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11 = ProtoField.new("New Order Bitfield 11", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield11", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_cross_trade_flag = ProtoField.new("New Order Bitfield 11 Cross Trade Flag", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield11crosstradeflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_1 = ProtoField.new("New Order Bitfield 11 Reserved 1", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield11reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_128 = ProtoField.new("New Order Bitfield 11 Reserved 128", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield11reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_16 = ProtoField.new("New Order Bitfield 11 Reserved 16", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield11reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_2 = ProtoField.new("New Order Bitfield 11 Reserved 2", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield11reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_32 = ProtoField.new("New Order Bitfield 11 Reserved 32", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield11reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_4 = ProtoField.new("New Order Bitfield 11 Reserved 4", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield11reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_8 = ProtoField.new("New Order Bitfield 11 Reserved 8", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield11reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12 = ProtoField.new("New Order Bitfield 12", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield12", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_cmc_sessions = ProtoField.new("New Order Bitfield 12 Cmc Sessions", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield12cmcsessions", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_held = ProtoField.new("New Order Bitfield 12 Held", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield12held", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_locate_broker = ProtoField.new("New Order Bitfield 12 Locate Broker", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield12locatebroker", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_reserved_128 = ProtoField.new("New Order Bitfield 12 Reserved 128", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield12reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_reserved_16 = ProtoField.new("New Order Bitfield 12 Reserved 16", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield12reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_reserved_32 = ProtoField.new("New Order Bitfield 12 Reserved 32", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield12reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_reserved_64 = ProtoField.new("New Order Bitfield 12 Reserved 64", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield12reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_step_up_amount = ProtoField.new("New Order Bitfield 12 Step Up Amount", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield12stepupamount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2 = ProtoField.new("New Order Bitfield 2", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield2", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_clearing_account = ProtoField.new("New Order Bitfield 2 Clearing Account", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield2clearingaccount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_clearing_firm = ProtoField.new("New Order Bitfield 2 Clearing Firm", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield2clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_exec_inst = ProtoField.new("New Order Bitfield 2 Exec Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield2execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_max_floor = ProtoField.new("New Order Bitfield 2 Max Floor", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield2maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_min_qty = ProtoField.new("New Order Bitfield 2 Min Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield2minqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_ord_type = ProtoField.new("New Order Bitfield 2 Ord Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield2ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_price = ProtoField.new("New Order Bitfield 2 Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield2price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_time_in_force = ProtoField.new("New Order Bitfield 2 Time In Force", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield2timeinforce", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3 = ProtoField.new("New Order Bitfield 3", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield3", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_capacity = ProtoField.new("New Order Bitfield 3 Capacity", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield3capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_currency = ProtoField.new("New Order Bitfield 3 Currency", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield3currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_id_source = ProtoField.new("New Order Bitfield 3 Id Source", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield3idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_routing_inst = ProtoField.new("New Order Bitfield 3 Routing Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield3routinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_security_exchange = ProtoField.new("New Order Bitfield 3 Security Exchange", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield3securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_security_id = ProtoField.new("New Order Bitfield 3 Security Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield3securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_symbol = ProtoField.new("New Order Bitfield 3 Symbol", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield3symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_symbol_sfx = ProtoField.new("New Order Bitfield 3 Symbol Sfx", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield3symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4 = ProtoField.new("New Order Bitfield 4", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield4", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_account = ProtoField.new("New Order Bitfield 4 Account", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield4account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_discretion_amount = ProtoField.new("New Order Bitfield 4 Discretion Amount", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield4discretionamount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_display_indicator = ProtoField.new("New Order Bitfield 4 Display Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield4displayindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_expire_time = ProtoField.new("New Order Bitfield 4 Expire Time", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield4expiretime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_locate_reqd = ProtoField.new("New Order Bitfield 4 Locate Reqd", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield4locatereqd", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_peg_difference = ProtoField.new("New Order Bitfield 4 Peg Difference", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield4pegdifference", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_prevent_match = ProtoField.new("New Order Bitfield 4 Prevent Match", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield4preventmatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_reserved_4 = ProtoField.new("New Order Bitfield 4 Reserved 4", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield4reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5 = ProtoField.new("New Order Bitfield 5", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield5", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_maturity_date = ProtoField.new("New Order Bitfield 5 Maturity Date", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield5maturitydate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_put_or_call = ProtoField.new("New Order Bitfield 5 Put Or Call", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield5putorcall", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_reserved_128 = ProtoField.new("New Order Bitfield 5 Reserved 128", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield5reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_reserved_16 = ProtoField.new("New Order Bitfield 5 Reserved 16", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield5reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_reserved_32 = ProtoField.new("New Order Bitfield 5 Reserved 32", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield5reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_reserved_64 = ProtoField.new("New Order Bitfield 5 Reserved 64", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield5reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_risk_reset = ProtoField.new("New Order Bitfield 5 Risk Reset", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield5riskreset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_strike_price = ProtoField.new("New Order Bitfield 5 Strike Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield5strikeprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6 = ProtoField.new("New Order Bitfield 6", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield6", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_auction_id = ProtoField.new("New Order Bitfield 6 Auction Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield6auctionid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_display_range = ProtoField.new("New Order Bitfield 6 Display Range", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield6displayrange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_echo_text = ProtoField.new("New Order Bitfield 6 Echo Text", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield6echotext", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_ex_destination = ProtoField.new("New Order Bitfield 6 Ex Destination", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield6exdestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_rout_strategy = ProtoField.new("New Order Bitfield 6 Rout Strategy", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield6routstrategy", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_route_delivery_method = ProtoField.new("New Order Bitfield 6 Route Delivery Method", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield6routedeliverymethod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_routing_firm_id = ProtoField.new("New Order Bitfield 6 Routing Firm Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield6routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_stop_px = ProtoField.new("New Order Bitfield 6 Stop Px", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield6stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7 = ProtoField.new("New Order Bitfield 7", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield7", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_algorithmic_indicator = ProtoField.new("New Order Bitfield 7 Algorithmic Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield7algorithmicindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_client_qualified_role = ProtoField.new("New Order Bitfield 7 Client Qualified Role", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield7clientqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_cti_code = ProtoField.new("New Order Bitfield 7 Cti Code", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield7cticode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_executor_qualified_role = ProtoField.new("New Order Bitfield 7 Executor Qualified Role", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield7executorqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_investor_qualified_role = ProtoField.new("New Order Bitfield 7 Investor Qualified Role", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield7investorqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_manual_order_indicator = ProtoField.new("New Order Bitfield 7 Manual Order Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield7manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_operator_id = ProtoField.new("New Order Bitfield 7 Operator Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield7operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_risk_group_id = ProtoField.new("New Order Bitfield 7 Risk Group Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield7riskgroupid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8 = ProtoField.new("New Order Bitfield 8", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield8", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_clearing_optional_data = ProtoField.new("New Order Bitfield 8 Clearing Optional Data", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield8clearingoptionaldata", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_client_id_attr = ProtoField.new("New Order Bitfield 8 Client Id Attr", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield8clientidattr", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_compression = ProtoField.new("New Order Bitfield 8 Compression", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield8compression", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_floor_destination = ProtoField.new("New Order Bitfield 8 Floor Destination", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield8floordestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_floor_routing_inst = ProtoField.new("New Order Bitfield 8 Floor Routing Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield8floorroutinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_frequent_trader_id = ProtoField.new("New Order Bitfield 8 Frequent Trader Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield8frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_reserved_1 = ProtoField.new("New Order Bitfield 8 Reserved 1", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield8reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_reserved_2 = ProtoField.new("New Order Bitfield 8 Reserved 2", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield8reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9 = ProtoField.new("New Order Bitfield 9", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield9", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_cmta_number = ProtoField.new("New Order Bitfield 9 Cmta Number", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield9cmtanumber", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_open_close = ProtoField.new("New Order Bitfield 9 Open Close", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield9openclose", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_order_origin = ProtoField.new("New Order Bitfield 9 Order Origin", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield9orderorigin", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_ors = ProtoField.new("New Order Bitfield 9 Ors", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield9ors", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_price_type = ProtoField.new("New Order Bitfield 9 Price Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield9pricetype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_reserved_128 = ProtoField.new("New Order Bitfield 9 Reserved 128", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield9reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_reserved_8 = ProtoField.new("New Order Bitfield 9 Reserved 8", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield9reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_target_party_id = ProtoField.new("New Order Bitfield 9 Target Party Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.neworderbitfield9targetpartyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.no_unspecified_unit_replay = ProtoField.new("No Unspecified Unit Replay", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.nounspecifiedunitreplay", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_cancel_order_bitfields = ProtoField.new("Number Of Cancel Order Bitfields", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.numberofcancelorderbitfields", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_modify_order_bitfields = ProtoField.new("Number Of Modify Order Bitfields", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.numberofmodifyorderbitfields", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_new_order_bitfields = ProtoField.new("Number Of New Order Bitfields", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.numberofneworderbitfields", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_param_groups = ProtoField.new("Number Of Param Groups", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.numberofparamgroups", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_purge_orders_bitfields = ProtoField.new("Number Of Purge Orders Bitfields", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.numberofpurgeordersbitfields", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_return_bitfields = ProtoField.new("Number Of Return Bitfields", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.numberofreturnbitfields", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.numberofunits", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.ord_type = ProtoField.new("Ord Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.ordtype", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_id = ProtoField.new("Order Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.orderid", ftypes.UINT64)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_qty = ProtoField.new("Order Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.orderqty", ftypes.UINT32)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.orderrejectreason", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.origclordid", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.orig_time = ProtoField.new("Orig Time", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.origtime", ftypes.UINT64)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.param_group = ProtoField.new("Param Group", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.paramgroup", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.param_group_length = ProtoField.new("Param Group Length", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.paramgrouplength", ftypes.UINT16)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.param_group_type = ProtoField.new("Param Group Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.paramgrouptype", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.password = ProtoField.new("Password", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.password", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.peg_difference = ProtoField.new("Peg Difference", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.pegdifference", ftypes.DOUBLE)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.prevent_match = ProtoField.new("Prevent Match", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.preventmatch", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.price = ProtoField.new("Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.price", ftypes.DOUBLE)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1 = ProtoField.new("Purge Orders Bitfield 1", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield1", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_clearing_firm = ProtoField.new("Purge Orders Bitfield 1 Clearing Firm", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_manual_order_indicator = ProtoField.new("Purge Orders Bitfield 1 Manual Order Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield1manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_mass_cancel_id = ProtoField.new("Purge Orders Bitfield 1 Mass Cancel Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield1masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_mass_cancel_inst = ProtoField.new("Purge Orders Bitfield 1 Mass Cancel Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield1masscancelinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_mass_cancel_lockout = ProtoField.new("Purge Orders Bitfield 1 Mass Cancel Lockout", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield1masscancellockout", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_operator_id = ProtoField.new("Purge Orders Bitfield 1 Operator Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield1operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_risk_root = ProtoField.new("Purge Orders Bitfield 1 Risk Root", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield1riskroot", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_routing_firm_id = ProtoField.new("Purge Orders Bitfield 1 Routing Firm Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield1routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2 = ProtoField.new("Purge Orders Bitfield 2", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield2", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_matching_unit = ProtoField.new("Purge Orders Bitfield 2 Matching Unit", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield2matchingunit", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_reserved_16 = ProtoField.new("Purge Orders Bitfield 2 Reserved 16", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_reserved_32 = ProtoField.new("Purge Orders Bitfield 2 Reserved 32", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_reserved_4 = ProtoField.new("Purge Orders Bitfield 2 Reserved 4", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_reserved_8 = ProtoField.new("Purge Orders Bitfield 2 Reserved 8", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_send_time = ProtoField.new("Purge Orders Bitfield 2 Send Time", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield2sendtime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_symbol = ProtoField.new("Purge Orders Bitfield 2 Symbol", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_symbol_sfx = ProtoField.new("Purge Orders Bitfield 2 Symbol Sfx", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordersbitfield2symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgerejectreason", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.reserved1", ftypes.BYTES)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.restatementreason", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1 = ProtoField.new("Return Bitfield 1", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield1", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_exec_inst = ProtoField.new("Return Bitfield 1 Exec Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield1execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_min_qty = ProtoField.new("Return Bitfield 1 Min Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield1minqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_ord_type = ProtoField.new("Return Bitfield 1 Ord Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_order_acknowledgment_return_bitfields = ProtoField.new("Return Bitfield 1 Order Acknowledgment Return Bitfields", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield1orderacknowledgmentreturnbitfields", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_peg_difference = ProtoField.new("Return Bitfield 1 Peg Difference", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield1pegdifference", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_price = ProtoField.new("Return Bitfield 1 Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_reserved_128 = ProtoField.new("Return Bitfield 1 Reserved 128", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield1reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_time_in_force = ProtoField.new("Return Bitfield 1 Time In Force", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield1timeinforce", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10 = ProtoField.new("Return Bitfield 10", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield10", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_avg_px = ProtoField.new("Return Bitfield 10 Avg Px", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield10avgpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_cum_qty = ProtoField.new("Return Bitfield 10 Cum Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield10cumqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_day_avg_px = ProtoField.new("Return Bitfield 10 Day Avg Px", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield10dayavgpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_day_cum_qty = ProtoField.new("Return Bitfield 10 Day Cum Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield10daycumqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_day_order_qty = ProtoField.new("Return Bitfield 10 Day Order Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield10dayorderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_drill_thru_protection = ProtoField.new("Return Bitfield 10 Drill Thru Protection", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield10drillthruprotection", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_multileg_reporting_typ = ProtoField.new("Return Bitfield 10 Multileg Reporting Typ", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield10multilegreportingtyp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_pending_status = ProtoField.new("Return Bitfield 10 Pending Status", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield10pendingstatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11 = ProtoField.new("Return Bitfield 11", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield11", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_leg_cfi_code = ProtoField.new("Return Bitfield 11 Leg Cfi Code", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield11legcficode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_leg_maturity_date = ProtoField.new("Return Bitfield 11 Leg Maturity Date", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield11legmaturitydate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_leg_strike_price = ProtoField.new("Return Bitfield 11 Leg Strike Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield11legstrikeprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_room_id = ProtoField.new("Return Bitfield 11 Room Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield11roomid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_secondary_exec_id = ProtoField.new("Return Bitfield 11 Secondary Exec Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield11secondaryexecid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_sis_username = ProtoField.new("Return Bitfield 11 Sis Username", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield11sisusername", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_user_request_id = ProtoField.new("Return Bitfield 11 User Request Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield11userrequestid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_user_status = ProtoField.new("Return Bitfield 11 User Status", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield11userstatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12 = ProtoField.new("Return Bitfield 12", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield12", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_client_id_attr = ProtoField.new("Return Bitfield 12 Client Id Attr", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield12clientidattr", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_equity_nbbo_protect = ProtoField.new("Return Bitfield 12 Equity Nbbo Protect", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield12equitynbboprotect", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_equity_party_id = ProtoField.new("Return Bitfield 12 Equity Party Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield12equitypartyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_leg_symbol_sfx = ProtoField.new("Return Bitfield 12 Leg Symbol Sfx", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield12legsymbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_mass_cancel_id = ProtoField.new("Return Bitfield 12 Mass Cancel Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield12masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_report_time = ProtoField.new("Return Bitfield 12 Report Time", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield12reporttime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_trade_publish_ind = ProtoField.new("Return Bitfield 12 Trade Publish Ind", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield12tradepublishind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_trade_reporting_indica = ProtoField.new("Return Bitfield 12 Trade Reporting Indica", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield12tradereportingindica", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13 = ProtoField.new("Return Bitfield 13", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield13", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_access_fee = ProtoField.new("Return Bitfield 13 Access Fee", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield13accessfee", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_cl_ord_id_batch = ProtoField.new("Return Bitfield 13 Cl Ord Id Batch", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield13clordidbatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_corrected_size = ProtoField.new("Return Bitfield 13 Corrected Size", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield13correctedsize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_frequent_trader_id = ProtoField.new("Return Bitfield 13 Frequent Trader Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield13frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_open_close = ProtoField.new("Return Bitfield 13 Open Close", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield13openclose", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_party_id = ProtoField.new("Return Bitfield 13 Party Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield13partyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_put_or_call = ProtoField.new("Return Bitfield 13 Put Or Call", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield13putorcall", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_session_eligibility = ProtoField.new("Return Bitfield 13 Session Eligibility", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield13sessioneligibility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14 = ProtoField.new("Return Bitfield 14", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield14", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_base_liquidity_indicator = ProtoField.new("Return Bitfield 14 Base Liquidity Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield14baseliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_display_price = ProtoField.new("Return Bitfield 14 Display Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield14displayprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_expire_time = ProtoField.new("Return Bitfield 14 Expire Time", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield14expiretime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_last_px = ProtoField.new("Return Bitfield 14 Last Px", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield14lastpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_last_shares = ProtoField.new("Return Bitfield 14 Last Shares", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield14lastshares", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_leaves_qty = ProtoField.new("Return Bitfield 14 Leaves Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield14leavesqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_orig_cl_ord_id = ProtoField.new("Return Bitfield 14 Orig Cl Ord Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield14origclordid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_working_price = ProtoField.new("Return Bitfield 14 Working Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield14workingprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15 = ProtoField.new("Return Bitfield 15", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield15", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_attributed_quote = ProtoField.new("Return Bitfield 15 Attributed Quote", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield15attributedquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_bulk_order_ids = ProtoField.new("Return Bitfield 15 Bulk Order Ids", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield15bulkorderids", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_bulk_reject_reasons = ProtoField.new("Return Bitfield 15 Bulk Reject Reasons", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield15bulkrejectreasons", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_ccp = ProtoField.new("Return Bitfield 15 Ccp", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield15ccp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_contra_capacity = ProtoField.new("Return Bitfield 15 Contra Capacity", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield15contracapacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_ext_exec_inst = ProtoField.new("Return Bitfield 15 Ext Exec Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield15extexecinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_party_role = ProtoField.new("Return Bitfield 15 Party Role", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield15partyrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_secondary_order_id = ProtoField.new("Return Bitfield 15 Secondary Order Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield15secondaryorderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16 = ProtoField.new("Return Bitfield 16", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield16", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_client_qualified_role = ProtoField.new("Return Bitfield 16 Client Qualified Role", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield16clientqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_cross_exclusion_indicator = ProtoField.new("Return Bitfield 16 Cross Exclusion Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield16crossexclusionindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_cti_code = ProtoField.new("Return Bitfield 16 Cti Code", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield16cticode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_give_up_firm_id = ProtoField.new("Return Bitfield 16 Give Up Firm Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield16giveupfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_manual_order_indicator = ProtoField.new("Return Bitfield 16 Manual Order Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield16manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_price_formation = ProtoField.new("Return Bitfield 16 Price Formation", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield16priceformation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_routing_firm_id = ProtoField.new("Return Bitfield 16 Routing Firm Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield16routingfirmid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_waiver_type = ProtoField.new("Return Bitfield 16 Waiver Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield16waivertype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17 = ProtoField.new("Return Bitfield 17", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield17", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_algo = ProtoField.new("Return Bitfield 17 Algo", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield17algo", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_client_id = ProtoField.new("Return Bitfield 17 Client Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield17clientid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_deferral_reason = ProtoField.new("Return Bitfield 17 Deferral Reason", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield17deferralreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_executor_id = ProtoField.new("Return Bitfield 17 Executor Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield17executorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_executor_qualified_role = ProtoField.new("Return Bitfield 17 Executor Qualified Role", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield17executorqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_investor_id = ProtoField.new("Return Bitfield 17 Investor Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield17investorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_investor_qualified_role = ProtoField.new("Return Bitfield 17 Investor Qualified Role", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield17investorqualifiedrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_order_origination = ProtoField.new("Return Bitfield 17 Order Origination", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield17orderorigination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18 = ProtoField.new("Return Bitfield 18", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield18", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_clearing_optional_data = ProtoField.new("Return Bitfield 18 Clearing Optional Data", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield18clearingoptionaldata", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_clearing_price = ProtoField.new("Return Bitfield 18 Clearing Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield18clearingprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_clearing_size = ProtoField.new("Return Bitfield 18 Clearing Size", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield18clearingsize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_clearing_symbol = ProtoField.new("Return Bitfield 18 Clearing Symbol", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield18clearingsymbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_cti_code = ProtoField.new("Return Bitfield 18 Cti Code", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield18cticode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_manual_order_indicator = ProtoField.new("Return Bitfield 18 Manual Order Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield18manualorderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_operator_id = ProtoField.new("Return Bitfield 18 Operator Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield18operatorid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_trade_date = ProtoField.new("Return Bitfield 18 Trade Date", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield18tradedate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19 = ProtoField.new("Return Bitfield 19", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield19", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_combo_order = ProtoField.new("Return Bitfield 19 Combo Order", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield19comboorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_compression = ProtoField.new("Return Bitfield 19 Compression", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield19compression", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_floor_destination = ProtoField.new("Return Bitfield 19 Floor Destination", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield19floordestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_floor_routing_inst = ProtoField.new("Return Bitfield 19 Floor Routing Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield19floorroutinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_frequent_trader_id = ProtoField.new("Return Bitfield 19 Frequent Trader Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield19frequenttraderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_multi_class_sprd = ProtoField.new("Return Bitfield 19 Multi Class Sprd", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield19multiclasssprd", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_order_origin = ProtoField.new("Return Bitfield 19 Order Origin", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield19orderorigin", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_session_eligibility = ProtoField.new("Return Bitfield 19 Session Eligibility", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield19sessioneligibility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2 = ProtoField.new("Return Bitfield 2", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield2", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_contra_trader = ProtoField.new("Return Bitfield 2 Contra Trader", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield2contratrader", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_exec_inst = ProtoField.new("Return Bitfield 2 Exec Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield2execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_min_qty = ProtoField.new("Return Bitfield 2 Min Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield2minqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_ord_type = ProtoField.new("Return Bitfield 2 Ord Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield2ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_peg_difference = ProtoField.new("Return Bitfield 2 Peg Difference", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield2pegdifference", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_price = ProtoField.new("Return Bitfield 2 Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield2price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_side = ProtoField.new("Return Bitfield 2 Side", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield2side", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_time_in_force = ProtoField.new("Return Bitfield 2 Time In Force", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield2timeinforce", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20 = ProtoField.new("Return Bitfield 20", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield20", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_cust_order_handling_in = ProtoField.new("Return Bitfield 20 Cust Order Handling In", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield20custorderhandlingin", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_exec_leg_cfi_code = ProtoField.new("Return Bitfield 20 Exec Leg Cfi Code", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield20execlegcficode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_floor_trader_acronym = ProtoField.new("Return Bitfield 20 Floor Trader Acronym", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield20floortraderacronym", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_price_type = ProtoField.new("Return Bitfield 20 Price Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield20pricetype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_sender_location_id = ProtoField.new("Return Bitfield 20 Sender Location Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield20senderlocationid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_strategy_id = ProtoField.new("Return Bitfield 20 Strategy Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield20strategyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_trade_through_alert_ty = ProtoField.new("Return Bitfield 20 Trade Through Alert Ty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield20tradethroughalertty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_trading_session_id = ProtoField.new("Return Bitfield 20 Trading Session Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield20tradingsessionid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21 = ProtoField.new("Return Bitfield 21", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield21", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_cross_initiator = ProtoField.new("Return Bitfield 21 Cross Initiator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield21crossinitiator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_cross_trade_flag = ProtoField.new("Return Bitfield 21 Cross Trade Flag", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield21crosstradeflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_floor_trade_time = ProtoField.new("Return Bitfield 21 Floor Trade Time", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield21floortradetime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_held = ProtoField.new("Return Bitfield 21 Held", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield21held", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_intra_firm_trade_ind = ProtoField.new("Return Bitfield 21 Intra Firm Trade Ind", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield21intrafirmtradeind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_locate_broker = ProtoField.new("Return Bitfield 21 Locate Broker", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield21locatebroker", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_reserved_128 = ProtoField.new("Return Bitfield 21 Reserved 128", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield21reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_subreason = ProtoField.new("Return Bitfield 21 Subreason", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield21subreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22 = ProtoField.new("Return Bitfield 22", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield22", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_cmc_match_qty = ProtoField.new("Return Bitfield 22 Cmc Match Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield22cmcmatchqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_cmc_sessions = ProtoField.new("Return Bitfield 22 Cmc Sessions", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield22cmcsessions", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_cross_on_behalf_of_id = ProtoField.new("Return Bitfield 22 Cross On Behalf Of Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield22crossonbehalfofid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_equity_ex_destination = ProtoField.new("Return Bitfield 22 Equity Ex Destination", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield22equityexdestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_floor_trade_time = ProtoField.new("Return Bitfield 22 Floor Trade Time", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield22floortradetime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_intra_firm_trade_ind = ProtoField.new("Return Bitfield 22 Intra Firm Trade Ind", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield22intrafirmtradeind", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_reserved_128 = ProtoField.new("Return Bitfield 22 Reserved 128", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield22reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_step_up_amount = ProtoField.new("Return Bitfield 22 Step Up Amount", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield22stepupamount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3 = ProtoField.new("Return Bitfield 3", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield3", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_capacity = ProtoField.new("Return Bitfield 3 Capacity", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield3capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_contra_trader = ProtoField.new("Return Bitfield 3 Contra Trader", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield3contratrader", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_currency = ProtoField.new("Return Bitfield 3 Currency", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield3currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_id_source = ProtoField.new("Return Bitfield 3 Id Source", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield3idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_security_exchange = ProtoField.new("Return Bitfield 3 Security Exchange", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield3securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_security_id = ProtoField.new("Return Bitfield 3 Security Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield3securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_symbol = ProtoField.new("Return Bitfield 3 Symbol", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield3symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_symbol_sfx = ProtoField.new("Return Bitfield 3 Symbol Sfx", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield3symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4 = ProtoField.new("Return Bitfield 4", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield4", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_account = ProtoField.new("Return Bitfield 4 Account", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield4account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_clearing_account = ProtoField.new("Return Bitfield 4 Clearing Account", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield4clearingaccount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_clearing_firm = ProtoField.new("Return Bitfield 4 Clearing Firm", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield4clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_discretion_amount = ProtoField.new("Return Bitfield 4 Discretion Amount", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield4discretionamount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_display_indicator = ProtoField.new("Return Bitfield 4 Display Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield4displayindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_max_floor = ProtoField.new("Return Bitfield 4 Max Floor", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield4maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_order_qty = ProtoField.new("Return Bitfield 4 Order Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield4orderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_prevent_match = ProtoField.new("Return Bitfield 4 Prevent Match", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield4preventmatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5 = ProtoField.new("Return Bitfield 5", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield5", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_capacity = ProtoField.new("Return Bitfield 5 Capacity", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield5capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_contra_trader = ProtoField.new("Return Bitfield 5 Contra Trader", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield5contratrader", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_currency = ProtoField.new("Return Bitfield 5 Currency", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield5currency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_id_source = ProtoField.new("Return Bitfield 5 Id Source", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield5idsource", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_maturity_date = ProtoField.new("Return Bitfield 5 Maturity Date", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield5maturitydate", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_security_exchange = ProtoField.new("Return Bitfield 5 Security Exchange", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield5securityexchange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_security_id = ProtoField.new("Return Bitfield 5 Security Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield5securityid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_strike_price = ProtoField.new("Return Bitfield 5 Strike Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield5strikeprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6 = ProtoField.new("Return Bitfield 6", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield6", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_bid = ProtoField.new("Return Bitfield 6 Bid", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield6bid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_large_size = ProtoField.new("Return Bitfield 6 Large Size", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield6largesize", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_last_mkt = ProtoField.new("Return Bitfield 6 Last Mkt", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield6lastmkt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_offer = ProtoField.new("Return Bitfield 6 Offer", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield6offer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_sub_liquidity_indicator = ProtoField.new("Return Bitfield 6 Sub Liquidity Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield6subliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_text = ProtoField.new("Return Bitfield 6 Text", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield6text", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_trade_publish_ind_return = ProtoField.new("Return Bitfield 6 Trade Publish Ind Return", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield6tradepublishindreturn", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_trade_report_type_return = ProtoField.new("Return Bitfield 6 Trade Report Type Return", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield6tradereporttypereturn", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7 = ProtoField.new("Return Bitfield 7", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield7", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_echo_text = ProtoField.new("Return Bitfield 7 Echo Text", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield7echotext", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_ex_destination = ProtoField.new("Return Bitfield 7 Ex Destination", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield7exdestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_fee_code = ProtoField.new("Return Bitfield 7 Fee Code", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield7feecode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_rout_strategy = ProtoField.new("Return Bitfield 7 Rout Strategy", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield7routstrategy", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_route_delivery_method = ProtoField.new("Return Bitfield 7 Route Delivery Method", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield7routedeliverymethod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_routing_inst = ProtoField.new("Return Bitfield 7 Routing Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield7routinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_stop_px = ProtoField.new("Return Bitfield 7 Stop Px", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield7stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_trade_report_ref_id = ProtoField.new("Return Bitfield 7 Trade Report Ref Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield7tradereportrefid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8 = ProtoField.new("Return Bitfield 8", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield8", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_auction_id = ProtoField.new("Return Bitfield 8 Auction Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield8auctionid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_cmta_number = ProtoField.new("Return Bitfield 8 Cmta Number", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield8cmtanumber", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_cross_prioritization = ProtoField.new("Return Bitfield 8 Cross Prioritization", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield8crossprioritization", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_cross_type = ProtoField.new("Return Bitfield 8 Cross Type", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield8crosstype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_liquidity_provision = ProtoField.new("Return Bitfield 8 Liquidity Provision", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield8liquidityprovision", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_marketing_fee_code = ProtoField.new("Return Bitfield 8 Marketing Fee Code", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield8marketingfeecode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_order_category = ProtoField.new("Return Bitfield 8 Order Category", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield8ordercategory", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_target_party_id = ProtoField.new("Return Bitfield 8 Target Party Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield8targetpartyid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9 = ProtoField.new("Return Bitfield 9", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield9", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_alloc_qty = ProtoField.new("Return Bitfield 9 Alloc Qty", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield9allocqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_attributed_quote = ProtoField.new("Return Bitfield 9 Attributed Quote", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield9attributedquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_bulk_order_ids = ProtoField.new("Return Bitfield 9 Bulk Order Ids", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield9bulkorderids", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_bulk_reject_reasons = ProtoField.new("Return Bitfield 9 Bulk Reject Reasons", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield9bulkrejectreasons", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_contra_capacity = ProtoField.new("Return Bitfield 9 Contra Capacity", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield9contracapacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_cross_id = ProtoField.new("Return Bitfield 9 Cross Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield9crossid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_ext_exec_inst = ProtoField.new("Return Bitfield 9 Ext Exec Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield9extexecinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_party_role = ProtoField.new("Return Bitfield 9 Party Role", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.returnbitfield9partyrole", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.risk_group_i_ds = ProtoField.new("Risk Group I Ds", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.riskgroupids", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.risk_group_id = ProtoField.new("Risk Group Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.riskgroupid", ftypes.UINT16)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.risk_group_id_cnt = ProtoField.new("Risk Group Id Cnt", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.riskgroupidcnt", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.risk_reset = ProtoField.new("Risk Reset", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.riskreset", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.rout_strategy = ProtoField.new("Rout Strategy", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.routstrategy", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.route_delivery_method = ProtoField.new("Route Delivery Method", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.routedeliverymethod", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.routing_inst = ProtoField.new("Routing Inst", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.routinginst", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.secondaryorderid", ftypes.UINT64)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.sequencenumber", ftypes.UINT32)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.sessionsubid", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.side = ProtoField.new("Side", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.side", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.startofmessage", ftypes.UINT16)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.step_up_amount = ProtoField.new("Step Up Amount", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.stepupamount", ftypes.DOUBLE)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.stop_px = ProtoField.new("Stop Px", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.stoppx", ftypes.DOUBLE)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.sub_liquidity_indicato = ProtoField.new("Sub Liquidity Indicato", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.subliquidityindicato", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.subliquidityindicator", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.symbol = ProtoField.new("Symbol", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.symbol", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.symbolsfx", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.text = ProtoField.new("Text", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.text", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.time_in_force = ProtoField.new("Time In Force", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.timeinforce", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.transactiontime", ftypes.UINT64)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.unit_number = ProtoField.new("Unit Number", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.unitnumber", ftypes.UINT8)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.unitsequence", ftypes.UINT32)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.units = ProtoField.new("Units", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.units", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.username = ProtoField.new("Username", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.username", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.working_price = ProtoField.new("Working Price", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.workingprice", ftypes.DOUBLE)

-- Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57 Framing
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.message_header = ProtoField.new("Message Header", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.messageheader", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.packet = ProtoField.new("Packet", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.packet", ftypes.STRING)

-- Cboe EdgaEquities BinaryOrderEntry 2.4.57 Application Messages
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelordermessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_rejected_message = ProtoField.new("Cancel Rejected Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.cancelrejectedmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.clientheartbeatmessage", ftypes.BYTES)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.loginrequestmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.loginresponsemessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.logout_message = ProtoField.new("Logout Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.logoutmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.logout_request_message = ProtoField.new("Logout Request Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.logoutrequestmessage", ftypes.BYTES)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.mass_cancel_acknowledgment_message = ProtoField.new("Mass Cancel Acknowledgment Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.masscancelacknowledgmentmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_message = ProtoField.new("Modify Order Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.modifyordermessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_message = ProtoField.new("New Order Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.newordermessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_acknowledgment_message = ProtoField.new("Order Acknowledgment Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.orderacknowledgmentmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.ordercancelledmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_execution_message = ProtoField.new("Order Execution Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.orderexecutionmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_modified_message = ProtoField.new("Order Modified Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.ordermodifiedmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.orderrejectedmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_restated_message = ProtoField.new("Order Restated Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.orderrestatedmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_order_message = ProtoField.new("Purge Order Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgeordermessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_rejected_message = ProtoField.new("Purge Rejected Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.purgerejectedmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.replaycompletemessage", ftypes.BYTES)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.server_heartbeat_message = ProtoField.new("Server Heartbeat Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.serverheartbeatmessage", ftypes.BYTES)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.trade_cancel_or_correct_message = ProtoField.new("Trade Cancel Or Correct Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.tradecancelorcorrectmessage", ftypes.STRING)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.user_modify_rejected_message = ProtoField.new("User Modify Rejected Message", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.usermodifyrejectedmessage", ftypes.STRING)

-- Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57 Generated Fields
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.param_group_index = ProtoField.new("Param Group Index", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.paramgroupindex", ftypes.UINT16)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.risk_group_i_ds_index = ProtoField.new("Risk Group I Ds Index", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.riskgroupidsindex", ftypes.UINT16)
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.units_index = ProtoField.new("Units Index", "cboe.edgaequities.binaryorderentry.boe.v2.4.57.unitsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.repeating_groups = true
show.indexes = true

-- Register Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57 Show Options
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_application_messages then
    show.application_messages = omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_headers then
    show.headers = omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_structs then
    show.structs = omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_indexes then
    show.indexes = omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57 Fields
-----------------------------------------------------------------------

-- Account
cboe_edgaequities_binaryorderentry_boe_v2_4_57.account = {}

-- Size: Account
cboe_edgaequities_binaryorderentry_boe_v2_4_57.account.size = 16

-- Display: Account
cboe_edgaequities_binaryorderentry_boe_v2_4_57.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
cboe_edgaequities_binaryorderentry_boe_v2_4_57.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.account.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.account, range, value, display)

  return offset + length, value
end

-- Attributed Quote
cboe_edgaequities_binaryorderentry_boe_v2_4_57.attributed_quote = {}

-- Size: Attributed Quote
cboe_edgaequities_binaryorderentry_boe_v2_4_57.attributed_quote.size = 1

-- Display: Attributed Quote
cboe_edgaequities_binaryorderentry_boe_v2_4_57.attributed_quote.display = function(value)
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.attributed_quote.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.attributed_quote.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.attributed_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.attributed_quote, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.base_liquidity_indicator.display = function(value)
  if value == "A" then
    return "Base Liquidity Indicator: Added Liquidity (A)"
  end
  if value == "C" then
    return "Base Liquidity Indicator: Auction Uncrossing (C)"
  end
  if value == "R" then
    return "Base Liquidity Indicator: Removed Liquidity (R)"
  end
  if value == "W" then
    return "Base Liquidity Indicator: Waiting For Execution At Premarket Time As (W)"
  end
  if value == "X" then
    return "Base Liquidity Indicator: Routed To Another Market (X)"
  end

  return "Base Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Base Liquidity Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.base_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Cancel Orig On Reject
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_orig_on_reject.display = function(value)
  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Modification Fails (Y)"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_orig_on_reject.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Cancel Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reason = {}

-- Size: Cancel Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reason.display = function(value)
  if value == "A" then
    return "Cancel Reason: Admin (A)"
  end
  if value == "C" then
    return "Cancel Reason: Capacity Undefined (C)"
  end
  if value == "D" then
    return "Cancel Reason: Duplicate Identifier (D)"
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
    return "Cancel Reason: Limit Up Limit Down (u)"
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

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reject_reason.display = function(value)
  if value == "A" then
    return "Cancel Reject Reason: Admin (A)"
  end
  if value == "C" then
    return "Cancel Reject Reason: Capacity Undefined (C)"
  end
  if value == "D" then
    return "Cancel Reject Reason: Duplicate Identifier (D)"
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
    return "Cancel Reject Reason: Limit Up Limit Down (u)"
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

  return "Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancelled Order Coun
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancelled_order_coun = {}

-- Size: Cancelled Order Coun
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancelled_order_coun.size = 4

-- Display: Cancelled Order Coun
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancelled_order_coun.display = function(value)
  return "Cancelled Order Coun: "..value
end

-- Dissect: Cancelled Order Coun
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancelled_order_coun.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancelled_order_coun.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancelled_order_coun.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancelled_order_coun, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity = {}

-- Size: Capacity
cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.size = 1

-- Display: Capacity
cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.display = function(value)
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account = {}

-- Size: Clearing Account
cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account.size = 4

-- Display: Clearing Account
cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Firm
cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm = {}

-- Size: Clearing Firm
cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.size = 4

-- Display: Clearing Firm
cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Cmc Sessions
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cmc_sessions = {}

-- Size: Cmc Sessions
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cmc_sessions.size = 2

-- Display: Cmc Sessions
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cmc_sessions.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cmc Sessions: No Value"
  end

  return "Cmc Sessions: "..value
end

-- Dissect: Cmc Sessions
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cmc_sessions.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cmc_sessions.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cmc_sessions.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cmc_sessions, range, value, display)

  return offset + length, value
end

-- Contra Broker
cboe_edgaequities_binaryorderentry_boe_v2_4_57.contra_broker = {}

-- Size: Contra Broker
cboe_edgaequities_binaryorderentry_boe_v2_4_57.contra_broker.size = 4

-- Display: Contra Broker
cboe_edgaequities_binaryorderentry_boe_v2_4_57.contra_broker.display = function(value)
  if value == "AMEX" then
    return "Contra Broker: Routed To Nyse American (AMEX)"
  end
  if value == "ARCA" then
    return "Contra Broker: Routed To Nyse Arca (ARCA)"
  end
  if value == "BEX" then
    return "Contra Broker: Routed To Nasdaq Texas (BEX)"
  end
  if value == "CHX" then
    return "Contra Broker: Routed To Nyse Texas (CHX)"
  end
  if value == "ICRS" then
    return "Contra Broker: Routed To Intelligent Cross (ICRS)"
  end
  if value == "IEX" then
    return "Contra Broker: Routed To Investors Exchange (IEX)"
  end
  if value == "INET" then
    return "Contra Broker: Routed To Nasdaq (INET)"
  end
  if value == "LTSE" then
    return "Contra Broker: Routed To Long Term Stock Exchange (LTSE)"
  end
  if value == "MEMX" then
    return "Contra Broker: Routed To Members Exchange (MEMX)"
  end
  if value == "NYSE" then
    return "Contra Broker: Routed To Nyse (NYSE)"
  end
  if value == "PERL" then
    return "Contra Broker: Routed To Miax Pearl Exchange (PERL)"
  end
  if value == "PSX" then
    return "Contra Broker: Routed To Nasdaq Psx (PSX)"
  end
  if value == "NSX" then
    return "Contra Broker: Routed To Nyse National (NSX)"
  end
  if value == "DRT" then
    return "Contra Broker: Routed To Drt Pool (DRT)"
  end
  if value == "TFXE" then
    return "Contra Broker: Routed To 24 X National Exchange (TFXE)"
  end
  if value == "TXSE" then
    return "Contra Broker: Routed To Texas Stock Exchange (TXSE)"
  end
  if value == "BATS" then
    return "Contra Broker: Routed To Cboe Bzx Exchange (BATS)"
  end
  if value == "BYXX" then
    return "Contra Broker: Routed To Cboe Byx Exchange (BYXX)"
  end
  if value == "EDGA" then
    return "Contra Broker: Routed To Cboe Edga Exchange (EDGA)"
  end
  if value == "EDGX" then
    return "Contra Broker: Routed To Cboe Edgx Exchange (EDGX)"
  end

  return "Contra Broker: Unknown("..value..")"
end

-- Dissect: Contra Broker
cboe_edgaequities_binaryorderentry_boe_v2_4_57.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.contra_broker.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.corrected_price = {}

-- Size: Corrected Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.corrected_price.size = 8

-- Display: Corrected Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.corrected_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgaequities_binaryorderentry_boe_v2_4_57.corrected_price.translate(raw)
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Cross Trade Flag
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag = {}

-- Size: Cross Trade Flag
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag.size = 1

-- Display: Cross Trade Flag
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag.display = function(value)
  if value == "0" then
    return "Cross Trade Flag: None (0)"
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cross_trade_flag, range, value, display)

  return offset + length, value
end

-- Discretion Amount
cboe_edgaequities_binaryorderentry_boe_v2_4_57.discretion_amount = {}

-- Size: Discretion Amount
cboe_edgaequities_binaryorderentry_boe_v2_4_57.discretion_amount.size = 2

-- Display: Discretion Amount
cboe_edgaequities_binaryorderentry_boe_v2_4_57.discretion_amount.display = function(value)
  return "Discretion Amount: "..value
end

-- Dissect: Discretion Amount
cboe_edgaequities_binaryorderentry_boe_v2_4_57.discretion_amount.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.discretion_amount.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.discretion_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.discretion_amount, range, value, display)

  return offset + length, value
end

-- Display Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_indicator = {}

-- Size: Display Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_indicator.size = 1

-- Display: Display Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_indicator.display = function(value)
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
    return "Display Indicator: Cancel Back The Order If It Cannot Be Booked And Displayed (R)"
  end
  if value == "r" then
    return "Display Indicator: Hidden (r)"
  end
  if value == "S" then
    return "Display Indicator: Display Price Sliding (S)"
  end
  if value == "L" then
    return "Display Indicator: Display Price Sliding But Cancel Back If Order Crosses The (L)"
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.display_indicator, range, value, display)

  return offset + length, value
end

-- Display Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_price = {}

-- Size: Display Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_price.size = 8

-- Display: Display Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_price.display = function(value)
  return "Display Price: "..value
end

-- Translate: Display Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Display Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_price.translate(raw)
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.display_price, range, value, display)

  return offset + length, value
end

-- Display Range
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_range = {}

-- Size: Display Range
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_range.size = 4

-- Display: Display Range
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_range.display = function(value)
  return "Display Range: "..value
end

-- Dissect: Display Range
cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_range.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_range.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.display_range, range, value, display)

  return offset + length, value
end

-- Echo Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.echo_text = {}

-- Size: Echo Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.echo_text.size = 64

-- Display: Echo Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.echo_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Echo Text: No Value"
  end

  return "Echo Text: "..value
end

-- Dissect: Echo Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.echo_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.echo_text.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.echo_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.echo_text, range, value, display)

  return offset + length, value
end

-- Ex Destination
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ex_destination = {}

-- Size: Ex Destination
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ex_destination.size = 1

-- Display: Ex Destination
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ex_destination.display = function(value)
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
    return "Ex Destination: N 24 X National Exchange (G)"
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
    return "Ex Destination: Intelligent Cross (T)"
  end
  if value == "U" then
    return "Ex Destination: Memx (U)"
  end
  if value == "X" then
    return "Ex Destination: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Ex Destination: Byx 1 (Y)"
  end
  if value == "Z" then
    return "Ex Destination: Bzx 1 (Z)"
  end

  return "Ex Destination: Unknown("..value..")"
end

-- Dissect: Ex Destination
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ex_destination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ex_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ex_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.ex_destination, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_id = {}

-- Size: Exec Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_id.size = 8

-- Display: Exec Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst = {}

-- Size: Exec Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.size = 1

-- Display: Exec Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.display = function(value)
  if value == "f" then
    return "Exec Inst: Intermarket Sweep (f)"
  end
  if value == "P" then
    return "Exec Inst: Market Peg (P)"
  end
  if value == "Q" then
    return "Exec Inst: Market Maker Peg (Q)"
  end
  if value == "R" then
    return "Exec Inst: Primary Peg (R)"
  end
  if value == "U" then
    return "Exec Inst: Supplemental Peg Order (U)"
  end
  if value == "M" then
    return "Exec Inst: Midpoint (M)"
  end
  if value == "m" then
    return "Exec Inst: Midpoint (m)"
  end
  if value == "L" then
    return "Exec Inst: Alternate Midpoint (L)"
  end
  if value == "d" then
    return "Exec Inst: Midpoint Discretionary Order (d)"
  end
  if value == "e" then
    return "Exec Inst: Midpoint Discretionary Order With Quote Depletion Protection (e)"
  end
  if value == "r" then
    return "Exec Inst: Late (r)"
  end
  if value == "o" then
    return "Exec Inst: Listing Market Opening (o)"
  end
  if value == "c" then
    return "Exec Inst: Listing Market Close (c)"
  end
  if value == "a" then
    return "Exec Inst: Both Listing Market Open And Close (a)"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_ref_id = {}

-- Size: Exec Ref Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_ref_id.size = 8

-- Display: Exec Ref Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.expire_time = {}

-- Size: Expire Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.expire_time.size = 8

-- Display: Expire Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.expire_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expire Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Ext Exec Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ext_exec_inst = {}

-- Size: Ext Exec Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ext_exec_inst.size = 1

-- Display: Ext Exec Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ext_exec_inst.display = function(value)
  if value == "N" then
    return "Ext Exec Inst: None (N)"
  end
  if value == "R" then
    return "Ext Exec Inst: Retail Order Eligible For Retail Rebate (R)"
  end
  if value == "P" then
    return "Ext Exec Inst: Retail Order (P)"
  end
  if value == "T" then
    return "Ext Exec Inst: Retail Price Improving Order (T)"
  end
  if value == "X" then
    return "Ext Exec Inst: Retail Priority Order (X)"
  end

  return "Ext Exec Inst: Unknown("..value..")"
end

-- Dissect: Ext Exec Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ext_exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ext_exec_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ext_exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.ext_exec_inst, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px = {}

-- Size: Last Px
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.size = 8

-- Display: Last Px
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.translate(raw)
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Received Sequence Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_received_sequence_number = {}

-- Size: Last Received Sequence Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_received_sequence_number.size = 4

-- Display: Last Received Sequence Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_received_sequence_number.display = function(value)
  return "Last Received Sequence Number: "..value
end

-- Dissect: Last Received Sequence Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_received_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_received_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_received_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.last_received_sequence_number, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_shares = {}

-- Size: Last Shares
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_shares.size = 4

-- Display: Last Shares
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.leaves_qty = {}

-- Size: Leaves Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Locate Broker
cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker = {}

-- Size: Locate Broker
cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker.size = 4

-- Display: Locate Broker
cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Broker: No Value"
  end

  return "Locate Broker: "..value
end

-- Dissect: Locate Broker
cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.locate_broker, range, value, display)

  return offset + length, value
end

-- Locate Reqd
cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_reqd = {}

-- Size: Locate Reqd
cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_reqd.size = 1

-- Display: Locate Reqd
cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_reqd.display = function(value)
  if value == "N" then
    return "Locate Reqd: Client Affirms Ability To Borrow (N)"
  end
  if value == "Y" then
    return "Locate Reqd: Client Does Not Affirm Ability To Borrow (Y)"
  end

  return "Locate Reqd: Unknown("..value..")"
end

-- Dissect: Locate Reqd
cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_reqd.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_reqd.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_reqd.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_status = {}

-- Size: Login Response Status
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_status.size = 1

-- Display: Login Response Status
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_status.display = function(value)
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_text = {}

-- Size: Login Response Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_text.size = 60

-- Display: Login Response Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Login Response Text: No Value"
  end

  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_text.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason = {}

-- Size: Logout Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason.size = 1

-- Display: Logout Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason.display = function(value)
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Reason Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logout Reason Text: No Value"
  end

  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason_text.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_id = {}

-- Size: Mass Cancel Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_id.size = 20

-- Display: Mass Cancel Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Id: No Value"
  end

  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_id.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_inst.size = 16

-- Display: Mass Cancel Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Inst: No Value"
  end

  return "Mass Cancel Inst: "..value
end

-- Dissect: Mass Cancel Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_inst.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.mass_cancel_inst, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_edgaequities_binaryorderentry_boe_v2_4_57.matching_unit = {}

-- Size: Matching Unit
cboe_edgaequities_binaryorderentry_boe_v2_4_57.matching_unit.size = 1

-- Display: Matching Unit
cboe_edgaequities_binaryorderentry_boe_v2_4_57.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_edgaequities_binaryorderentry_boe_v2_4_57.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Max Floor
cboe_edgaequities_binaryorderentry_boe_v2_4_57.max_floor = {}

-- Size: Max Floor
cboe_edgaequities_binaryorderentry_boe_v2_4_57.max_floor.size = 4

-- Display: Max Floor
cboe_edgaequities_binaryorderentry_boe_v2_4_57.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
cboe_edgaequities_binaryorderentry_boe_v2_4_57.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_length = {}

-- Size: Message Length
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_length.size = 2

-- Display: Message Length
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_type = {}

-- Size: Message Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_type.size = 1

-- Display: Message Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_type.display = function(value)
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
  if value == 0x47 then
    return "Message Type: Purge Order Message (0x47)"
  end
  if value == 0x25 then
    return "Message Type: Order Acknowledgment Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Order Rejected Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Order Modified Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Order Restated Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: User Modify Rejected Message (0x29)"
  end
  if value == 0x2A then
    return "Message Type: Order Cancelled Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Cancel Rejected Message (0x2B)"
  end
  if value == 0x2C then
    return "Message Type: Order Execution Message (0x2C)"
  end
  if value == 0x2D then
    return "Message Type: Trade Cancel Or Correct Message (0x2D)"
  end
  if value == 0x36 then
    return "Message Type: Mass Cancel Acknowledgment Message (0x36)"
  end
  if value == 0x48 then
    return "Message Type: Purge Rejected Message (0x48)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty = {}

-- Size: Min Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.size = 4

-- Display: Min Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_reject_reason.display = function(value)
  if value == "A" then
    return "Modify Reject Reason: Admin (A)"
  end
  if value == "C" then
    return "Modify Reject Reason: Capacity Undefined (C)"
  end
  if value == "D" then
    return "Modify Reject Reason: Duplicate Identifier (D)"
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
    return "Modify Reject Reason: Limit Up Limit Down (u)"
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

  return "Modify Reject Reason: Unknown("..value..")"
end

-- Dissect: Modify Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- No Unspecified Unit Replay
cboe_edgaequities_binaryorderentry_boe_v2_4_57.no_unspecified_unit_replay = {}

-- Size: No Unspecified Unit Replay
cboe_edgaequities_binaryorderentry_boe_v2_4_57.no_unspecified_unit_replay.size = 1

-- Display: No Unspecified Unit Replay
cboe_edgaequities_binaryorderentry_boe_v2_4_57.no_unspecified_unit_replay.display = function(value)
  return "No Unspecified Unit Replay: "..value
end

-- Dissect: No Unspecified Unit Replay
cboe_edgaequities_binaryorderentry_boe_v2_4_57.no_unspecified_unit_replay.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.no_unspecified_unit_replay.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.no_unspecified_unit_replay.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.no_unspecified_unit_replay, range, value, display)

  return offset + length, value
end

-- Number Of Cancel Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_cancel_order_bitfields = {}

-- Size: Number Of Cancel Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_cancel_order_bitfields.size = 1

-- Display: Number Of Cancel Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_cancel_order_bitfields.display = function(value)
  return "Number Of Cancel Order Bitfields: "..value
end

-- Dissect: Number Of Cancel Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_cancel_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_cancel_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_cancel_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_cancel_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Modify Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_modify_order_bitfields = {}

-- Size: Number Of Modify Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_modify_order_bitfields.size = 1

-- Display: Number Of Modify Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_modify_order_bitfields.display = function(value)
  return "Number Of Modify Order Bitfields: "..value
end

-- Dissect: Number Of Modify Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_modify_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_modify_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_modify_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_modify_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of New Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_new_order_bitfields = {}

-- Size: Number Of New Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_new_order_bitfields.size = 1

-- Display: Number Of New Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_new_order_bitfields.display = function(value)
  return "Number Of New Order Bitfields: "..value
end

-- Dissect: Number Of New Order Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_new_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_new_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_new_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_new_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Param Groups
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_param_groups = {}

-- Size: Number Of Param Groups
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_param_groups.size = 1

-- Display: Number Of Param Groups
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_param_groups.display = function(value)
  return "Number Of Param Groups: "..value
end

-- Dissect: Number Of Param Groups
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_param_groups.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_param_groups.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_param_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_param_groups, range, value, display)

  return offset + length, value
end

-- Number Of Purge Orders Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_purge_orders_bitfields = {}

-- Size: Number Of Purge Orders Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_purge_orders_bitfields.size = 1

-- Display: Number Of Purge Orders Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_purge_orders_bitfields.display = function(value)
  return "Number Of Purge Orders Bitfields: "..value
end

-- Dissect: Number Of Purge Orders Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_purge_orders_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_purge_orders_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_purge_orders_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_purge_orders_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Return Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields = {}

-- Size: Number Of Return Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.size = 1

-- Display: Number Of Return Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.display = function(value)
  return "Number Of Return Bitfields: "..value
end

-- Dissect: Number Of Return Bitfields
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_return_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Units
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_units = {}

-- Size: Number Of Units
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_units.size = 1

-- Display: Number Of Units
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type = {}

-- Size: Ord Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.size = 1

-- Display: Ord Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.display = function(value)
  if value == "1" then
    return "Ord Type: Market (1)"
  end
  if value == "2" then
    return "Ord Type: Limit (2)"
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_id = {}

-- Size: Order Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_id.size = 8

-- Display: Order Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_qty = {}

-- Size: Order Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_qty.size = 4

-- Display: Order Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_reject_reason.display = function(value)
  if value == "A" then
    return "Order Reject Reason: Admin (A)"
  end
  if value == "C" then
    return "Order Reject Reason: Capacity Undefined (C)"
  end
  if value == "D" then
    return "Order Reject Reason: Duplicate Identifier (D)"
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
    return "Order Reject Reason: Limit Up Limit Down (u)"
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

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_cl_ord_id.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Orig Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_time = {}

-- Size: Orig Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_time.size = 8

-- Display: Orig Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Orig Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Orig Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Param Group Length
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_length = {}

-- Size: Param Group Length
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_length.size = 2

-- Display: Param Group Length
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_length.display = function(value)
  return "Param Group Length: "..value
end

-- Dissect: Param Group Length
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.param_group_length, range, value, display)

  return offset + length, value
end

-- Param Group Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_type = {}

-- Size: Param Group Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_type.size = 1

-- Display: Param Group Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_type.display = function(value)
  return "Param Group Type: "..value
end

-- Dissect: Param Group Type
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.param_group_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_edgaequities_binaryorderentry_boe_v2_4_57.password = {}

-- Size: Password
cboe_edgaequities_binaryorderentry_boe_v2_4_57.password.size = 10

-- Display: Password
cboe_edgaequities_binaryorderentry_boe_v2_4_57.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
cboe_edgaequities_binaryorderentry_boe_v2_4_57.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.password.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Difference
cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference = {}

-- Size: Peg Difference
cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.size = 8

-- Display: Peg Difference
cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.display = function(value)
  return "Peg Difference: "..value
end

-- Translate: Peg Difference
cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Peg Difference
cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.translate(raw)
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.peg_difference, range, value, display)

  return offset + length, value
end

-- Prevent Match
cboe_edgaequities_binaryorderentry_boe_v2_4_57.prevent_match = {}

-- Size: Prevent Match
cboe_edgaequities_binaryorderentry_boe_v2_4_57.prevent_match.size = 3

-- Display: Prevent Match
cboe_edgaequities_binaryorderentry_boe_v2_4_57.prevent_match.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Prevent Match: No Value"
  end

  return "Prevent Match: "..value
end

-- Dissect: Prevent Match
cboe_edgaequities_binaryorderentry_boe_v2_4_57.prevent_match.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.prevent_match.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.prevent_match.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.prevent_match, range, value, display)

  return offset + length, value
end

-- Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.price = {}

-- Size: Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.size = 8

-- Display: Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.translate(raw)
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.price, range, value, display)

  return offset + length, value
end

-- Purge Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_reject_reason = {}

-- Size: Purge Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_reject_reason.size = 1

-- Display: Purge Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_reject_reason.display = function(value)
  if value == "A" then
    return "Purge Reject Reason: Admin (A)"
  end
  if value == "C" then
    return "Purge Reject Reason: Capacity Undefined (C)"
  end
  if value == "D" then
    return "Purge Reject Reason: Duplicate Identifier (D)"
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
    return "Purge Reject Reason: Limit Up Limit Down (u)"
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

  return "Purge Reject Reason: Unknown("..value..")"
end

-- Dissect: Purge Reject Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1 = {}

-- Size: Reserved 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.size = 1

-- Display: Reserved 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Restatement Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.restatement_reason = {}

-- Size: Restatement Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.restatement_reason.size = 1

-- Display: Restatement Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.restatement_reason.display = function(value)
  if value == "C" then
    return "Restatement Reason: Cboe Market Close (C)"
  end
  if value == "L" then
    return "Restatement Reason: Reload (L)"
  end
  if value == "P" then
    return "Restatement Reason: Peg Or Price Sliding Reprice (P)"
  end
  if value == "Q" then
    return "Restatement Reason: Liquidity Updated (Q)"
  end
  if value == "R" then
    return "Restatement Reason: Reroute (R)"
  end
  if value == "S" then
    return "Restatement Reason: Reduction Of Order Qty Due To Swp (S)"
  end
  if value == "W" then
    return "Restatement Reason: Wash Or Mtp Decrement (W)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_edgaequities_binaryorderentry_boe_v2_4_57.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Risk Group Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id = {}

-- Size: Risk Group Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id.size = 2

-- Display: Risk Group Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id.display = function(value)
  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Risk Group Id Cnt
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id_cnt = {}

-- Size: Risk Group Id Cnt
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id_cnt.size = 1

-- Display: Risk Group Id Cnt
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id_cnt.display = function(value)
  return "Risk Group Id Cnt: "..value
end

-- Dissect: Risk Group Id Cnt
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.risk_group_id_cnt, range, value, display)

  return offset + length, value
end

-- Risk Reset
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_reset = {}

-- Size: Risk Reset
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_reset.size = 8

-- Display: Risk Reset
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_reset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Risk Reset: No Value"
  end

  return "Risk Reset: "..value
end

-- Dissect: Risk Reset
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_reset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_reset.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.risk_reset, range, value, display)

  return offset + length, value
end

-- Rout Strategy
cboe_edgaequities_binaryorderentry_boe_v2_4_57.rout_strategy = {}

-- Size: Rout Strategy
cboe_edgaequities_binaryorderentry_boe_v2_4_57.rout_strategy.size = 6

-- Display: Rout Strategy
cboe_edgaequities_binaryorderentry_boe_v2_4_57.rout_strategy.display = function(value)
  if value == "ALLB" then
    return "Rout Strategy: Book Ioc Other Cboe Exchanges (ALLB)"
  end
  if value == "RDOT" then
    return "Rout Strategy: Book Drt Ioc Day Nyse (RDOT)"
  end
  if value == "ROUT" then
    return "Rout Strategy: Book Drt Street (ROUT)"
  end
  if value == "ROUX" then
    return "Rout Strategy: Book Street (ROUX)"
  end
  if value == "ROUZ" then
    return "Rout Strategy: Book Drt (ROUZ)"
  end
  if value == "SWPA" then
    return "Rout Strategy: Iso Sweep Of All Protected Markets (SWPA)"
  end
  if value == "ROUC" then
    return "Rout Strategy: Book Drt Lcpmc All Other Protected Markets (ROUC)"
  end
  if value == "DIRC" then
    return "Rout Strategy: Book Drt Directed Ioc Or Directed Iso If Exec Inst (DIRC)"
  end
  if value == "RMPT" then
    return "Rout Strategy: Book Midpoint Ioc Select Drt Lit Venues Post To (RMPT)"
  end
  if value == "RMPL" then
    return "Rout Strategy: Book Midpoint Ioc Rmpt Venues Midpoint Ioc Rmpl (RMPL)"
  end
  if value == "TRIM" then
    return "Rout Strategy: Book Nyse National Nasdaq Texas (TRIM)"
  end
  if value == "SLIM" then
    return "Rout Strategy: Book Lcpmc (SLIM)"
  end
  if value == "SLIM+" then
    return "Rout Strategy: Byx 1 Bzx Lcpmc (SLIM+)"
  end
  if value == "ROOC" then
    return "Rout Strategy: Listing Market Open Book Drt Street Listing (ROOC)"
  end

  return "Rout Strategy: Unknown("..value..")"
end

-- Dissect: Rout Strategy
cboe_edgaequities_binaryorderentry_boe_v2_4_57.rout_strategy.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.rout_strategy.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.rout_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.rout_strategy, range, value, display)

  return offset + length, value
end

-- Route Delivery Method
cboe_edgaequities_binaryorderentry_boe_v2_4_57.route_delivery_method = {}

-- Size: Route Delivery Method
cboe_edgaequities_binaryorderentry_boe_v2_4_57.route_delivery_method.size = 3

-- Display: Route Delivery Method
cboe_edgaequities_binaryorderentry_boe_v2_4_57.route_delivery_method.display = function(value)
  if value == "RTI" then
    return "Route Delivery Method: Route To Improve (RTI)"
  end
  if value == "RTF" then
    return "Route Delivery Method: Route To Fill (RTF)"
  end

  return "Route Delivery Method: Unknown("..value..")"
end

-- Dissect: Route Delivery Method
cboe_edgaequities_binaryorderentry_boe_v2_4_57.route_delivery_method.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.route_delivery_method.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.route_delivery_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.route_delivery_method, range, value, display)

  return offset + length, value
end

-- Routing Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.routing_inst = {}

-- Size: Routing Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.routing_inst.size = 4

-- Display: Routing Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.routing_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Routing Inst: No Value"
  end

  return "Routing Inst: "..value
end

-- Dissect: Routing Inst
cboe_edgaequities_binaryorderentry_boe_v2_4_57.routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.routing_inst.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.routing_inst, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.secondary_order_id = {}

-- Size: Secondary Order Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.secondary_order_id.size = 8

-- Display: Secondary Order Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sequence_number = {}

-- Size: Sequence Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sequence_number.size = 4

-- Display: Sequence Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.session_sub_id = {}

-- Size: Session Sub Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.session_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Sub Id: No Value"
  end

  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_edgaequities_binaryorderentry_boe_v2_4_57.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.session_sub_id.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_edgaequities_binaryorderentry_boe_v2_4_57.side = {}

-- Size: Side
cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.size = 1

-- Display: Side
cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.display = function(value)
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.start_of_message = {}

-- Size: Start Of Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.start_of_message.size = 2

-- Display: Start Of Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Step Up Amount
cboe_edgaequities_binaryorderentry_boe_v2_4_57.step_up_amount = {}

-- Size: Step Up Amount
cboe_edgaequities_binaryorderentry_boe_v2_4_57.step_up_amount.size = 8

-- Display: Step Up Amount
cboe_edgaequities_binaryorderentry_boe_v2_4_57.step_up_amount.display = function(value)
  return "Step Up Amount: "..value
end

-- Translate: Step Up Amount
cboe_edgaequities_binaryorderentry_boe_v2_4_57.step_up_amount.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Step Up Amount
cboe_edgaequities_binaryorderentry_boe_v2_4_57.step_up_amount.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.step_up_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgaequities_binaryorderentry_boe_v2_4_57.step_up_amount.translate(raw)
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.step_up_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.step_up_amount, range, value, display)

  return offset + length, value
end

-- Stop Px
cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px = {}

-- Size: Stop Px
cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.size = 8

-- Display: Stop Px
cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Stop Px
cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.translate(raw)
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Sub Liquidity Indicato
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicato = {}

-- Size: Sub Liquidity Indicato
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicato.size = 1

-- Display: Sub Liquidity Indicato
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicato.display = function(value)
  if value == "E" then
    return "Sub Liquidity Indicato: Trade Added Rpi Liquidity (E)"
  end
  if value == "H" then
    return "Sub Liquidity Indicato: Trade Added Hidden Liquidity (H)"
  end
  if value == "I" then
    return "Sub Liquidity Indicato: Trade Added Hidden Liquidity That Was Price (I)"
  end
  if value == "J" then
    return "Sub Liquidity Indicato: Execution From First Order To Join The Nbbo (J)"
  end
  if value == "P" then
    return "Sub Liquidity Indicato: Periodic Auction (P)"
  end
  if value == "S" then
    return "Sub Liquidity Indicato: Nbbo Setter Fee Eligible (S)"
  end
  if value == "V" then
    return "Sub Liquidity Indicato: Visible Liquidity Add Trade That Was Price (V)"
  end
  if value == "m" then
    return "Sub Liquidity Indicato: Midpoint Peg Order (m)"
  end
  if value == "s" then
    return "Sub Liquidity Indicato: Order Set The Nbbo But Is Not Fee Eligible (s)"
  end

  return "Sub Liquidity Indicato: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicato
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicato.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicato.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicato.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.sub_liquidity_indicato, range, value, display)

  return offset + length, value
end

-- Sub Liquidity Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicator = {}

-- Size: Sub Liquidity Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicator.size = 1

-- Display: Sub Liquidity Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicator.display = function(value)
  if value == "E" then
    return "Sub Liquidity Indicator: Trade Added Rpi Liquidity (E)"
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
    return "Sub Liquidity Indicator: Periodic Auction (P)"
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

  return "Sub Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicator
cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol = {}

-- Size: Symbol
cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.size = 8

-- Display: Symbol
cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx = {}

-- Size: Symbol Sfx
cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.size = 8

-- Display: Symbol Sfx
cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.text = {}

-- Size: Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.text.size = 60

-- Display: Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cboe_edgaequities_binaryorderentry_boe_v2_4_57.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.text.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force = {}

-- Size: Time In Force
cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.size = 1

-- Display: Time In Force
cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.display = function(value)
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
    return "Time In Force: Pre (E)"
  end
  if value == "P" then
    return "Time In Force: Rtp (P)"
  end
  if value == "R" then
    return "Time In Force: Rho (R)"
  end
  if value == "T" then
    return "Time In Force: Ptd (T)"
  end
  if value == "X" then
    return "Time In Force: Ptx (X)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time = {}

-- Size: Transaction Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.size = 8

-- Display: Transaction Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Unit Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_number = {}

-- Size: Unit Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_number.size = 1

-- Display: Unit Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Unit Sequence
cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_sequence = {}

-- Size: Unit Sequence
cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_sequence.size = 4

-- Display: Unit Sequence
cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_sequence.display = function(value)
  return "Unit Sequence: "..value
end

-- Dissect: Unit Sequence
cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.unit_sequence, range, value, display)

  return offset + length, value
end

-- Username
cboe_edgaequities_binaryorderentry_boe_v2_4_57.username = {}

-- Size: Username
cboe_edgaequities_binaryorderentry_boe_v2_4_57.username.size = 4

-- Display: Username
cboe_edgaequities_binaryorderentry_boe_v2_4_57.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
cboe_edgaequities_binaryorderentry_boe_v2_4_57.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.username.size
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

  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.username, range, value, display)

  return offset + length, value
end

-- Working Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.working_price = {}

-- Size: Working Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.working_price.size = 8

-- Display: Working Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.working_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_edgaequities_binaryorderentry_boe_v2_4_57.working_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgaequities_binaryorderentry_boe_v2_4_57.working_price.translate(raw)
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57
-----------------------------------------------------------------------

-- Return Bitfield 22
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22 = {}

-- Size: Return Bitfield 22
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.size = 1

-- Display: Return Bitfield 22
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 22 Floor Trade Time flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 22 Floor Trade Time"
  end
  -- Is Return Bitfield 22 Equity Ex Destination flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 22 Equity Ex Destination"
  end
  -- Is Return Bitfield 22 Cross On Behalf Of Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 22 Cross On Behalf Of Id"
  end
  -- Is Return Bitfield 22 Cmc Sessions flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 22 Cmc Sessions"
  end
  -- Is Return Bitfield 22 Intra Firm Trade Ind flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 22 Intra Firm Trade Ind"
  end
  -- Is Return Bitfield 22 Cmc Match Qty flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 22 Cmc Match Qty"
  end
  -- Is Return Bitfield 22 Step Up Amount flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 22 Step Up Amount"
  end
  -- Is Return Bitfield 22 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 22 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 22
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.bits = function(range, value, packet, parent)

  -- Return Bitfield 22 Floor Trade Time: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_floor_trade_time, range, value)

  -- Return Bitfield 22 Equity Ex Destination: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_equity_ex_destination, range, value)

  -- Return Bitfield 22 Cross On Behalf Of Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_cross_on_behalf_of_id, range, value)

  -- Return Bitfield 22 Cmc Sessions: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_cmc_sessions, range, value)

  -- Return Bitfield 22 Intra Firm Trade Ind: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_intra_firm_trade_ind, range, value)

  -- Return Bitfield 22 Cmc Match Qty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_cmc_match_qty, range, value)

  -- Return Bitfield 22 Step Up Amount: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_step_up_amount, range, value)

  -- Return Bitfield 22 Reserved 128: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22_reserved_128, range, value)
end

-- Dissect: Return Bitfield 22
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_22, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 21
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21 = {}

-- Size: Return Bitfield 21
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.size = 1

-- Display: Return Bitfield 21
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 21 Floor Trade Time flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 21 Floor Trade Time"
  end
  -- Is Return Bitfield 21 Cross Initiator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 21 Cross Initiator"
  end
  -- Is Return Bitfield 21 Subreason flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 21 Subreason"
  end
  -- Is Return Bitfield 21 Cross Trade Flag flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 21 Cross Trade Flag"
  end
  -- Is Return Bitfield 21 Intra Firm Trade Ind flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 21 Intra Firm Trade Ind"
  end
  -- Is Return Bitfield 21 Held flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 21 Held"
  end
  -- Is Return Bitfield 21 Locate Broker flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 21 Locate Broker"
  end
  -- Is Return Bitfield 21 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 21 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 21
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.bits = function(range, value, packet, parent)

  -- Return Bitfield 21 Floor Trade Time: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_floor_trade_time, range, value)

  -- Return Bitfield 21 Cross Initiator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_cross_initiator, range, value)

  -- Return Bitfield 21 Subreason: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_subreason, range, value)

  -- Return Bitfield 21 Cross Trade Flag: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_cross_trade_flag, range, value)

  -- Return Bitfield 21 Intra Firm Trade Ind: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_intra_firm_trade_ind, range, value)

  -- Return Bitfield 21 Held: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_held, range, value)

  -- Return Bitfield 21 Locate Broker: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_locate_broker, range, value)

  -- Return Bitfield 21 Reserved 128: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21_reserved_128, range, value)
end

-- Dissect: Return Bitfield 21
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_21, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 20
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20 = {}

-- Size: Return Bitfield 20
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.size = 1

-- Display: Return Bitfield 20
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 20 Price Type flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 20 Price Type"
  end
  -- Is Return Bitfield 20 Strategy Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 20 Strategy Id"
  end
  -- Is Return Bitfield 20 Trading Session Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 20 Trading Session Id"
  end
  -- Is Return Bitfield 20 Trade Through Alert Ty flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 20 Trade Through Alert Ty"
  end
  -- Is Return Bitfield 20 Sender Location Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 20 Sender Location Id"
  end
  -- Is Return Bitfield 20 Floor Trader Acronym flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 20 Floor Trader Acronym"
  end
  -- Is Return Bitfield 20 Exec Leg Cfi Code flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 20 Exec Leg Cfi Code"
  end
  -- Is Return Bitfield 20 Cust Order Handling In flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 20 Cust Order Handling In"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 20
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.bits = function(range, value, packet, parent)

  -- Return Bitfield 20 Price Type: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_price_type, range, value)

  -- Return Bitfield 20 Strategy Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_strategy_id, range, value)

  -- Return Bitfield 20 Trading Session Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_trading_session_id, range, value)

  -- Return Bitfield 20 Trade Through Alert Ty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_trade_through_alert_ty, range, value)

  -- Return Bitfield 20 Sender Location Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_sender_location_id, range, value)

  -- Return Bitfield 20 Floor Trader Acronym: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_floor_trader_acronym, range, value)

  -- Return Bitfield 20 Exec Leg Cfi Code: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_exec_leg_cfi_code, range, value)

  -- Return Bitfield 20 Cust Order Handling In: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20_cust_order_handling_in, range, value)
end

-- Dissect: Return Bitfield 20
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_20, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 19
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19 = {}

-- Size: Return Bitfield 19
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.size = 1

-- Display: Return Bitfield 19
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 19 Frequent Trader Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Frequent Trader Id"
  end
  -- Is Return Bitfield 19 Session Eligibility flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Session Eligibility"
  end
  -- Is Return Bitfield 19 Combo Order flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Combo Order"
  end
  -- Is Return Bitfield 19 Compression flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Compression"
  end
  -- Is Return Bitfield 19 Floor Destination flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Floor Destination"
  end
  -- Is Return Bitfield 19 Floor Routing Inst flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Floor Routing Inst"
  end
  -- Is Return Bitfield 19 Multi Class Sprd flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Multi Class Sprd"
  end
  -- Is Return Bitfield 19 Order Origin flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 19 Order Origin"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 19
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.bits = function(range, value, packet, parent)

  -- Return Bitfield 19 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_frequent_trader_id, range, value)

  -- Return Bitfield 19 Session Eligibility: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_session_eligibility, range, value)

  -- Return Bitfield 19 Combo Order: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_combo_order, range, value)

  -- Return Bitfield 19 Compression: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_compression, range, value)

  -- Return Bitfield 19 Floor Destination: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_floor_destination, range, value)

  -- Return Bitfield 19 Floor Routing Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_floor_routing_inst, range, value)

  -- Return Bitfield 19 Multi Class Sprd: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_multi_class_sprd, range, value)

  -- Return Bitfield 19 Order Origin: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19_order_origin, range, value)
end

-- Dissect: Return Bitfield 19
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_19, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 18
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18 = {}

-- Size: Return Bitfield 18
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.size = 1

-- Display: Return Bitfield 18
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 18 Cti Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Cti Code"
  end
  -- Is Return Bitfield 18 Manual Order Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Manual Order Indicator"
  end
  -- Is Return Bitfield 18 Operator Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Operator Id"
  end
  -- Is Return Bitfield 18 Trade Date flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Trade Date"
  end
  -- Is Return Bitfield 18 Clearing Price flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Clearing Price"
  end
  -- Is Return Bitfield 18 Clearing Size flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Clearing Size"
  end
  -- Is Return Bitfield 18 Clearing Symbol flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Clearing Symbol"
  end
  -- Is Return Bitfield 18 Clearing Optional Data flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 18 Clearing Optional Data"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 18
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.bits = function(range, value, packet, parent)

  -- Return Bitfield 18 Cti Code: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_cti_code, range, value)

  -- Return Bitfield 18 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_manual_order_indicator, range, value)

  -- Return Bitfield 18 Operator Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_operator_id, range, value)

  -- Return Bitfield 18 Trade Date: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_trade_date, range, value)

  -- Return Bitfield 18 Clearing Price: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_clearing_price, range, value)

  -- Return Bitfield 18 Clearing Size: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_clearing_size, range, value)

  -- Return Bitfield 18 Clearing Symbol: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_clearing_symbol, range, value)

  -- Return Bitfield 18 Clearing Optional Data: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18_clearing_optional_data, range, value)
end

-- Dissect: Return Bitfield 18
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_18, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 17
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17 = {}

-- Size: Return Bitfield 17
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.size = 1

-- Display: Return Bitfield 17
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 17 Client Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Client Id"
  end
  -- Is Return Bitfield 17 Investor Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Investor Id"
  end
  -- Is Return Bitfield 17 Executor Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Executor Id"
  end
  -- Is Return Bitfield 17 Order Origination flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Order Origination"
  end
  -- Is Return Bitfield 17 Algo flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Algo"
  end
  -- Is Return Bitfield 17 Deferral Reason flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Deferral Reason"
  end
  -- Is Return Bitfield 17 Investor Qualified Role flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Investor Qualified Role"
  end
  -- Is Return Bitfield 17 Executor Qualified Role flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Executor Qualified Role"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 17
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.bits = function(range, value, packet, parent)

  -- Return Bitfield 17 Client Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_client_id, range, value)

  -- Return Bitfield 17 Investor Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_investor_id, range, value)

  -- Return Bitfield 17 Executor Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_executor_id, range, value)

  -- Return Bitfield 17 Order Origination: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_order_origination, range, value)

  -- Return Bitfield 17 Algo: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_algo, range, value)

  -- Return Bitfield 17 Deferral Reason: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_deferral_reason, range, value)

  -- Return Bitfield 17 Investor Qualified Role: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_investor_qualified_role, range, value)

  -- Return Bitfield 17 Executor Qualified Role: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17_executor_qualified_role, range, value)
end

-- Dissect: Return Bitfield 17
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_17, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 16
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16 = {}

-- Size: Return Bitfield 16
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.size = 1

-- Display: Return Bitfield 16
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 16 Cti Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Cti Code"
  end
  -- Is Return Bitfield 16 Manual Order Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Manual Order Indicator"
  end
  -- Is Return Bitfield 16 Give Up Firm Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Give Up Firm Id"
  end
  -- Is Return Bitfield 16 Routing Firm Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Routing Firm Id"
  end
  -- Is Return Bitfield 16 Waiver Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Waiver Type"
  end
  -- Is Return Bitfield 16 Cross Exclusion Indicator flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Cross Exclusion Indicator"
  end
  -- Is Return Bitfield 16 Price Formation flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Price Formation"
  end
  -- Is Return Bitfield 16 Client Qualified Role flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Client Qualified Role"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 16
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.bits = function(range, value, packet, parent)

  -- Return Bitfield 16 Cti Code: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_cti_code, range, value)

  -- Return Bitfield 16 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_manual_order_indicator, range, value)

  -- Return Bitfield 16 Give Up Firm Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_give_up_firm_id, range, value)

  -- Return Bitfield 16 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_routing_firm_id, range, value)

  -- Return Bitfield 16 Waiver Type: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_waiver_type, range, value)

  -- Return Bitfield 16 Cross Exclusion Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_cross_exclusion_indicator, range, value)

  -- Return Bitfield 16 Price Formation: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_price_formation, range, value)

  -- Return Bitfield 16 Client Qualified Role: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16_client_qualified_role, range, value)
end

-- Dissect: Return Bitfield 16
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_16, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 15
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15 = {}

-- Size: Return Bitfield 15
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.size = 1

-- Display: Return Bitfield 15
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 15 Secondary Order Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Secondary Order Id"
  end
  -- Is Return Bitfield 15 Ccp flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Ccp"
  end
  -- Is Return Bitfield 15 Contra Capacity flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Contra Capacity"
  end
  -- Is Return Bitfield 15 Attributed Quote flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Attributed Quote"
  end
  -- Is Return Bitfield 15 Ext Exec Inst flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Ext Exec Inst"
  end
  -- Is Return Bitfield 15 Bulk Order Ids flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Bulk Order Ids"
  end
  -- Is Return Bitfield 15 Bulk Reject Reasons flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Bulk Reject Reasons"
  end
  -- Is Return Bitfield 15 Party Role flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Party Role"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 15
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.bits = function(range, value, packet, parent)

  -- Return Bitfield 15 Secondary Order Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_secondary_order_id, range, value)

  -- Return Bitfield 15 Ccp: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_ccp, range, value)

  -- Return Bitfield 15 Contra Capacity: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_contra_capacity, range, value)

  -- Return Bitfield 15 Attributed Quote: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_attributed_quote, range, value)

  -- Return Bitfield 15 Ext Exec Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_ext_exec_inst, range, value)

  -- Return Bitfield 15 Bulk Order Ids: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_bulk_order_ids, range, value)

  -- Return Bitfield 15 Bulk Reject Reasons: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_bulk_reject_reasons, range, value)

  -- Return Bitfield 15 Party Role: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15_party_role, range, value)
end

-- Dissect: Return Bitfield 15
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_15, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 14
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14 = {}

-- Size: Return Bitfield 14
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.size = 1

-- Display: Return Bitfield 14
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 14 Orig Cl Ord Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Orig Cl Ord Id"
  end
  -- Is Return Bitfield 14 Leaves Qty flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Leaves Qty"
  end
  -- Is Return Bitfield 14 Last Shares flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Last Shares"
  end
  -- Is Return Bitfield 14 Last Px flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Last Px"
  end
  -- Is Return Bitfield 14 Display Price flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Display Price"
  end
  -- Is Return Bitfield 14 Working Price flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Working Price"
  end
  -- Is Return Bitfield 14 Base Liquidity Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Base Liquidity Indicator"
  end
  -- Is Return Bitfield 14 Expire Time flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Expire Time"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 14
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.bits = function(range, value, packet, parent)

  -- Return Bitfield 14 Orig Cl Ord Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_orig_cl_ord_id, range, value)

  -- Return Bitfield 14 Leaves Qty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_leaves_qty, range, value)

  -- Return Bitfield 14 Last Shares: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_last_shares, range, value)

  -- Return Bitfield 14 Last Px: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_last_px, range, value)

  -- Return Bitfield 14 Display Price: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_display_price, range, value)

  -- Return Bitfield 14 Working Price: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_working_price, range, value)

  -- Return Bitfield 14 Base Liquidity Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_base_liquidity_indicator, range, value)

  -- Return Bitfield 14 Expire Time: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14_expire_time, range, value)
end

-- Dissect: Return Bitfield 14
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_14, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 13
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13 = {}

-- Size: Return Bitfield 13
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.size = 1

-- Display: Return Bitfield 13
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 13 Frequent Trader Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Frequent Trader Id"
  end
  -- Is Return Bitfield 13 Session Eligibility flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Session Eligibility"
  end
  -- Is Return Bitfield 13 Put Or Call flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Put Or Call"
  end
  -- Is Return Bitfield 13 Open Close flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Open Close"
  end
  -- Is Return Bitfield 13 Cl Ord Id Batch flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Cl Ord Id Batch"
  end
  -- Is Return Bitfield 13 Corrected Size flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Corrected Size"
  end
  -- Is Return Bitfield 13 Party Id flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Party Id"
  end
  -- Is Return Bitfield 13 Access Fee flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Access Fee"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 13
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.bits = function(range, value, packet, parent)

  -- Return Bitfield 13 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_frequent_trader_id, range, value)

  -- Return Bitfield 13 Session Eligibility: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_session_eligibility, range, value)

  -- Return Bitfield 13 Put Or Call: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_put_or_call, range, value)

  -- Return Bitfield 13 Open Close: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_open_close, range, value)

  -- Return Bitfield 13 Cl Ord Id Batch: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_cl_ord_id_batch, range, value)

  -- Return Bitfield 13 Corrected Size: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_corrected_size, range, value)

  -- Return Bitfield 13 Party Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_party_id, range, value)

  -- Return Bitfield 13 Access Fee: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13_access_fee, range, value)
end

-- Dissect: Return Bitfield 13
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_13, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 12
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12 = {}

-- Size: Return Bitfield 12
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.size = 1

-- Display: Return Bitfield 12
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 12 Trade Reporting Indica flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Trade Reporting Indica"
  end
  -- Is Return Bitfield 12 Equity Party Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Equity Party Id"
  end
  -- Is Return Bitfield 12 Equity Nbbo Protect flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Equity Nbbo Protect"
  end
  -- Is Return Bitfield 12 Mass Cancel Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Mass Cancel Id"
  end
  -- Is Return Bitfield 12 Trade Publish Ind flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Trade Publish Ind"
  end
  -- Is Return Bitfield 12 Report Time flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Report Time"
  end
  -- Is Return Bitfield 12 Leg Symbol Sfx flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Leg Symbol Sfx"
  end
  -- Is Return Bitfield 12 Client Id Attr flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Client Id Attr"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 12
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.bits = function(range, value, packet, parent)

  -- Return Bitfield 12 Trade Reporting Indica: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_trade_reporting_indica, range, value)

  -- Return Bitfield 12 Equity Party Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_equity_party_id, range, value)

  -- Return Bitfield 12 Equity Nbbo Protect: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_equity_nbbo_protect, range, value)

  -- Return Bitfield 12 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_mass_cancel_id, range, value)

  -- Return Bitfield 12 Trade Publish Ind: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_trade_publish_ind, range, value)

  -- Return Bitfield 12 Report Time: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_report_time, range, value)

  -- Return Bitfield 12 Leg Symbol Sfx: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_leg_symbol_sfx, range, value)

  -- Return Bitfield 12 Client Id Attr: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12_client_id_attr, range, value)
end

-- Dissect: Return Bitfield 12
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_12, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 11
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11 = {}

-- Size: Return Bitfield 11
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.size = 1

-- Display: Return Bitfield 11
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 11 Leg Cfi Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Leg Cfi Code"
  end
  -- Is Return Bitfield 11 Leg Maturity Date flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Leg Maturity Date"
  end
  -- Is Return Bitfield 11 Leg Strike Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Leg Strike Price"
  end
  -- Is Return Bitfield 11 Room Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Room Id"
  end
  -- Is Return Bitfield 11 Secondary Exec Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Secondary Exec Id"
  end
  -- Is Return Bitfield 11 User Request Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 User Request Id"
  end
  -- Is Return Bitfield 11 Sis Username flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Sis Username"
  end
  -- Is Return Bitfield 11 User Status flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 User Status"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 11
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.bits = function(range, value, packet, parent)

  -- Return Bitfield 11 Leg Cfi Code: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_leg_cfi_code, range, value)

  -- Return Bitfield 11 Leg Maturity Date: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_leg_maturity_date, range, value)

  -- Return Bitfield 11 Leg Strike Price: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_leg_strike_price, range, value)

  -- Return Bitfield 11 Room Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_room_id, range, value)

  -- Return Bitfield 11 Secondary Exec Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_secondary_exec_id, range, value)

  -- Return Bitfield 11 User Request Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_user_request_id, range, value)

  -- Return Bitfield 11 Sis Username: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_sis_username, range, value)

  -- Return Bitfield 11 User Status: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11_user_status, range, value)
end

-- Dissect: Return Bitfield 11
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_11, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 10
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10 = {}

-- Size: Return Bitfield 10
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.size = 1

-- Display: Return Bitfield 10
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 10 Cum Qty flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Cum Qty"
  end
  -- Is Return Bitfield 10 Day Order Qty flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Day Order Qty"
  end
  -- Is Return Bitfield 10 Day Cum Qty flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Day Cum Qty"
  end
  -- Is Return Bitfield 10 Avg Px flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Avg Px"
  end
  -- Is Return Bitfield 10 Day Avg Px flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Day Avg Px"
  end
  -- Is Return Bitfield 10 Pending Status flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Pending Status"
  end
  -- Is Return Bitfield 10 Drill Thru Protection flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Drill Thru Protection"
  end
  -- Is Return Bitfield 10 Multileg Reporting Typ flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Multileg Reporting Typ"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 10
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.bits = function(range, value, packet, parent)

  -- Return Bitfield 10 Cum Qty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_cum_qty, range, value)

  -- Return Bitfield 10 Day Order Qty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_day_order_qty, range, value)

  -- Return Bitfield 10 Day Cum Qty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_day_cum_qty, range, value)

  -- Return Bitfield 10 Avg Px: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_avg_px, range, value)

  -- Return Bitfield 10 Day Avg Px: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_day_avg_px, range, value)

  -- Return Bitfield 10 Pending Status: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_pending_status, range, value)

  -- Return Bitfield 10 Drill Thru Protection: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_drill_thru_protection, range, value)

  -- Return Bitfield 10 Multileg Reporting Typ: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10_multileg_reporting_typ, range, value)
end

-- Dissect: Return Bitfield 10
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_10, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 9
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9 = {}

-- Size: Return Bitfield 9
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.size = 1

-- Display: Return Bitfield 9
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 9 Cross Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Cross Id"
  end
  -- Is Return Bitfield 9 Alloc Qty flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Alloc Qty"
  end
  -- Is Return Bitfield 9 Contra Capacity flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Contra Capacity"
  end
  -- Is Return Bitfield 9 Attributed Quote flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Attributed Quote"
  end
  -- Is Return Bitfield 9 Ext Exec Inst flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Ext Exec Inst"
  end
  -- Is Return Bitfield 9 Bulk Order Ids flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Bulk Order Ids"
  end
  -- Is Return Bitfield 9 Bulk Reject Reasons flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Bulk Reject Reasons"
  end
  -- Is Return Bitfield 9 Party Role flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Party Role"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 9
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.bits = function(range, value, packet, parent)

  -- Return Bitfield 9 Cross Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_cross_id, range, value)

  -- Return Bitfield 9 Alloc Qty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_alloc_qty, range, value)

  -- Return Bitfield 9 Contra Capacity: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_contra_capacity, range, value)

  -- Return Bitfield 9 Attributed Quote: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_attributed_quote, range, value)

  -- Return Bitfield 9 Ext Exec Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_ext_exec_inst, range, value)

  -- Return Bitfield 9 Bulk Order Ids: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_bulk_order_ids, range, value)

  -- Return Bitfield 9 Bulk Reject Reasons: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_bulk_reject_reasons, range, value)

  -- Return Bitfield 9 Party Role: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9_party_role, range, value)
end

-- Dissect: Return Bitfield 9
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_9, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 8
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8 = {}

-- Size: Return Bitfield 8
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.size = 1

-- Display: Return Bitfield 8
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 8 Marketing Fee Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Marketing Fee Code"
  end
  -- Is Return Bitfield 8 Target Party Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Target Party Id"
  end
  -- Is Return Bitfield 8 Auction Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Auction Id"
  end
  -- Is Return Bitfield 8 Order Category flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Order Category"
  end
  -- Is Return Bitfield 8 Liquidity Provision flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Liquidity Provision"
  end
  -- Is Return Bitfield 8 Cmta Number flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Cmta Number"
  end
  -- Is Return Bitfield 8 Cross Type flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Cross Type"
  end
  -- Is Return Bitfield 8 Cross Prioritization flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Cross Prioritization"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 8
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.bits = function(range, value, packet, parent)

  -- Return Bitfield 8 Marketing Fee Code: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_marketing_fee_code, range, value)

  -- Return Bitfield 8 Target Party Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_target_party_id, range, value)

  -- Return Bitfield 8 Auction Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_auction_id, range, value)

  -- Return Bitfield 8 Order Category: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_order_category, range, value)

  -- Return Bitfield 8 Liquidity Provision: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_liquidity_provision, range, value)

  -- Return Bitfield 8 Cmta Number: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_cmta_number, range, value)

  -- Return Bitfield 8 Cross Type: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_cross_type, range, value)

  -- Return Bitfield 8 Cross Prioritization: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8_cross_prioritization, range, value)
end

-- Dissect: Return Bitfield 8
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_8, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 7
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7 = {}

-- Size: Return Bitfield 7
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.size = 1

-- Display: Return Bitfield 7
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 7 Fee Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Fee Code"
  end
  -- Is Return Bitfield 7 Echo Text flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Echo Text"
  end
  -- Is Return Bitfield 7 Stop Px flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Stop Px"
  end
  -- Is Return Bitfield 7 Routing Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Routing Inst"
  end
  -- Is Return Bitfield 7 Rout Strategy flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Rout Strategy"
  end
  -- Is Return Bitfield 7 Route Delivery Method flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Route Delivery Method"
  end
  -- Is Return Bitfield 7 Ex Destination flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Ex Destination"
  end
  -- Is Return Bitfield 7 Trade Report Ref Id flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Trade Report Ref Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 7
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.bits = function(range, value, packet, parent)

  -- Return Bitfield 7 Fee Code: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_fee_code, range, value)

  -- Return Bitfield 7 Echo Text: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_echo_text, range, value)

  -- Return Bitfield 7 Stop Px: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_stop_px, range, value)

  -- Return Bitfield 7 Routing Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_routing_inst, range, value)

  -- Return Bitfield 7 Rout Strategy: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_rout_strategy, range, value)

  -- Return Bitfield 7 Route Delivery Method: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_route_delivery_method, range, value)

  -- Return Bitfield 7 Ex Destination: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_ex_destination, range, value)

  -- Return Bitfield 7 Trade Report Ref Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7_trade_report_ref_id, range, value)
end

-- Dissect: Return Bitfield 7
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_7, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 6
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6 = {}

-- Size: Return Bitfield 6
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.size = 1

-- Display: Return Bitfield 6
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 6 Sub Liquidity Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Sub Liquidity Indicator"
  end
  -- Is Return Bitfield 6 Trade Report Type Return flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Trade Report Type Return"
  end
  -- Is Return Bitfield 6 Trade Publish Ind Return flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Trade Publish Ind Return"
  end
  -- Is Return Bitfield 6 Text flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Text"
  end
  -- Is Return Bitfield 6 Bid flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Bid"
  end
  -- Is Return Bitfield 6 Offer flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Offer"
  end
  -- Is Return Bitfield 6 Large Size flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Large Size"
  end
  -- Is Return Bitfield 6 Last Mkt flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Last Mkt"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 6
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.bits = function(range, value, packet, parent)

  -- Return Bitfield 6 Sub Liquidity Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_sub_liquidity_indicator, range, value)

  -- Return Bitfield 6 Trade Report Type Return: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_trade_report_type_return, range, value)

  -- Return Bitfield 6 Trade Publish Ind Return: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_trade_publish_ind_return, range, value)

  -- Return Bitfield 6 Text: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_text, range, value)

  -- Return Bitfield 6 Bid: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_bid, range, value)

  -- Return Bitfield 6 Offer: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_offer, range, value)

  -- Return Bitfield 6 Large Size: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_large_size, range, value)

  -- Return Bitfield 6 Last Mkt: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6_last_mkt, range, value)
end

-- Dissect: Return Bitfield 6
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_6, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 5
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5 = {}

-- Size: Return Bitfield 5
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.size = 1

-- Display: Return Bitfield 5
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 5 Maturity Date flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Maturity Date"
  end
  -- Is Return Bitfield 5 Strike Price flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Strike Price"
  end
  -- Is Return Bitfield 5 Currency flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Currency"
  end
  -- Is Return Bitfield 5 Id Source flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Id Source"
  end
  -- Is Return Bitfield 5 Security Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Security Id"
  end
  -- Is Return Bitfield 5 Security Exchange flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Security Exchange"
  end
  -- Is Return Bitfield 5 Capacity flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Capacity"
  end
  -- Is Return Bitfield 5 Contra Trader flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Contra Trader"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 5
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.bits = function(range, value, packet, parent)

  -- Return Bitfield 5 Maturity Date: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_maturity_date, range, value)

  -- Return Bitfield 5 Strike Price: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_strike_price, range, value)

  -- Return Bitfield 5 Currency: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_currency, range, value)

  -- Return Bitfield 5 Id Source: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_id_source, range, value)

  -- Return Bitfield 5 Security Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_security_id, range, value)

  -- Return Bitfield 5 Security Exchange: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_security_exchange, range, value)

  -- Return Bitfield 5 Capacity: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_capacity, range, value)

  -- Return Bitfield 5 Contra Trader: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5_contra_trader, range, value)
end

-- Dissect: Return Bitfield 5
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_5, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 4
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4 = {}

-- Size: Return Bitfield 4
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.size = 1

-- Display: Return Bitfield 4
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 4 Account flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Account"
  end
  -- Is Return Bitfield 4 Clearing Firm flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Clearing Firm"
  end
  -- Is Return Bitfield 4 Clearing Account flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Clearing Account"
  end
  -- Is Return Bitfield 4 Display Indicator flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Display Indicator"
  end
  -- Is Return Bitfield 4 Max Floor flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Max Floor"
  end
  -- Is Return Bitfield 4 Discretion Amount flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Discretion Amount"
  end
  -- Is Return Bitfield 4 Order Qty flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Order Qty"
  end
  -- Is Return Bitfield 4 Prevent Match flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Prevent Match"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 4
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.bits = function(range, value, packet, parent)

  -- Return Bitfield 4 Account: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_account, range, value)

  -- Return Bitfield 4 Clearing Firm: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_clearing_firm, range, value)

  -- Return Bitfield 4 Clearing Account: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_clearing_account, range, value)

  -- Return Bitfield 4 Display Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_display_indicator, range, value)

  -- Return Bitfield 4 Max Floor: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_max_floor, range, value)

  -- Return Bitfield 4 Discretion Amount: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_discretion_amount, range, value)

  -- Return Bitfield 4 Order Qty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_order_qty, range, value)

  -- Return Bitfield 4 Prevent Match: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4_prevent_match, range, value)
end

-- Dissect: Return Bitfield 4
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_4, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 3
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3 = {}

-- Size: Return Bitfield 3
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.size = 1

-- Display: Return Bitfield 3
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 3 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Symbol"
  end
  -- Is Return Bitfield 3 Symbol Sfx flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Symbol Sfx"
  end
  -- Is Return Bitfield 3 Currency flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Currency"
  end
  -- Is Return Bitfield 3 Id Source flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Id Source"
  end
  -- Is Return Bitfield 3 Security Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Security Id"
  end
  -- Is Return Bitfield 3 Security Exchange flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Security Exchange"
  end
  -- Is Return Bitfield 3 Capacity flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Capacity"
  end
  -- Is Return Bitfield 3 Contra Trader flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Contra Trader"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 3
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.bits = function(range, value, packet, parent)

  -- Return Bitfield 3 Symbol: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_symbol, range, value)

  -- Return Bitfield 3 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_symbol_sfx, range, value)

  -- Return Bitfield 3 Currency: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_currency, range, value)

  -- Return Bitfield 3 Id Source: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_id_source, range, value)

  -- Return Bitfield 3 Security Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_security_id, range, value)

  -- Return Bitfield 3 Security Exchange: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_security_exchange, range, value)

  -- Return Bitfield 3 Capacity: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_capacity, range, value)

  -- Return Bitfield 3 Contra Trader: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3_contra_trader, range, value)
end

-- Dissect: Return Bitfield 3
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_3, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2 = {}

-- Size: Return Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.size = 1

-- Display: Return Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 2 Side flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Side"
  end
  -- Is Return Bitfield 2 Peg Difference flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Peg Difference"
  end
  -- Is Return Bitfield 2 Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Price"
  end
  -- Is Return Bitfield 2 Exec Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Exec Inst"
  end
  -- Is Return Bitfield 2 Ord Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Ord Type"
  end
  -- Is Return Bitfield 2 Time In Force flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Time In Force"
  end
  -- Is Return Bitfield 2 Min Qty flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Min Qty"
  end
  -- Is Return Bitfield 2 Contra Trader flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Contra Trader"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.bits = function(range, value, packet, parent)

  -- Return Bitfield 2 Side: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_side, range, value)

  -- Return Bitfield 2 Peg Difference: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_peg_difference, range, value)

  -- Return Bitfield 2 Price: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_price, range, value)

  -- Return Bitfield 2 Exec Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_exec_inst, range, value)

  -- Return Bitfield 2 Ord Type: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_ord_type, range, value)

  -- Return Bitfield 2 Time In Force: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_time_in_force, range, value)

  -- Return Bitfield 2 Min Qty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_min_qty, range, value)

  -- Return Bitfield 2 Contra Trader: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2_contra_trader, range, value)
end

-- Dissect: Return Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_2, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1 = {}

-- Size: Return Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.size = 1

-- Display: Return Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 1 Order Acknowledgment Return Bitfields flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Order Acknowledgment Return Bitfields"
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
  -- Is Return Bitfield 1 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.bits = function(range, value, packet, parent)

  -- Return Bitfield 1 Order Acknowledgment Return Bitfields: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_order_acknowledgment_return_bitfields, range, value)

  -- Return Bitfield 1 Peg Difference: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_peg_difference, range, value)

  -- Return Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_price, range, value)

  -- Return Bitfield 1 Exec Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_exec_inst, range, value)

  -- Return Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_ord_type, range, value)

  -- Return Bitfield 1 Time In Force: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_time_in_force, range, value)

  -- Return Bitfield 1 Min Qty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_min_qty, range, value)

  -- Return Bitfield 1 Reserved 128: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1_reserved_128, range, value)
end

-- Dissect: Return Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.display(range, value, packet, parent)
  local element = parent:add_le(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.return_bitfield_1, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purge Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_rejected_message = {}

-- Read runtime size of: Purge Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Purge Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_rejected_message.fields = function(buffer, offset, packet, parent, size_of_purge_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgaequities_binaryorderentry_boe_v2_4_57.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 20
  local return_bitfield_20 = nil

  local return_bitfield_20_exists = number_of_return_bitfields >= 20

  if return_bitfield_20_exists then

    -- Return Bitfield 20: Struct of 8 fields
    index, return_bitfield_20 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 21
  local return_bitfield_21 = nil

  local return_bitfield_21_exists = number_of_return_bitfields >= 21

  if return_bitfield_21_exists then

    -- Return Bitfield 21: Struct of 8 fields
    index, return_bitfield_21 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 22
  local return_bitfield_22 = nil

  local return_bitfield_22_exists = number_of_return_bitfields >= 22

  if return_bitfield_22_exists then

    -- Return Bitfield 22: Struct of 8 fields
    index, return_bitfield_22 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Purge Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_purge_rejected_message)
  local size_of_purge_rejected_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_rejected_message.size(buffer, offset)
  local index = offset + size_of_purge_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_rejected_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_rejected_message.fields(buffer, offset, packet, parent, size_of_purge_rejected_message)
    parent:set_len(size_of_purge_rejected_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_rejected_message.fields(buffer, offset, packet, parent, size_of_purge_rejected_message)

    return index
  end
end

-- Mass Cancel Acknowledgment Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_acknowledgment_message = {}

-- Read runtime size of: Mass Cancel Acknowledgment Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Mass Cancel Acknowledgment Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Acknowledgment Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Coun: Binary
  index, cancelled_order_coun = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancelled_order_coun.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Acknowledgment Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_acknowledgment_message.dissect = function(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)
  local size_of_mass_cancel_acknowledgment_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_acknowledgment_message.size(buffer, offset)
  local index = offset + size_of_mass_cancel_acknowledgment_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.mass_cancel_acknowledgment_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)
    parent:set_len(size_of_mass_cancel_acknowledgment_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_acknowledgment_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)

    return index
  end
end

-- Trade Cancel Or Correct Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.trade_cancel_or_correct_message = {}

-- Read runtime size of: Trade Cancel Or Correct Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.trade_cancel_or_correct_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Cancel Or Correct Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.trade_cancel_or_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Or Correct Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.trade_cancel_or_correct_message.fields = function(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgaequities_binaryorderentry_boe_v2_4_57.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.dissect(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.corrected_price.dissect(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_time.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 20
  local return_bitfield_20 = nil

  local return_bitfield_20_exists = number_of_return_bitfields >= 20

  if return_bitfield_20_exists then

    -- Return Bitfield 20: Struct of 8 fields
    index, return_bitfield_20 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 21
  local return_bitfield_21 = nil

  local return_bitfield_21_exists = number_of_return_bitfields >= 21

  if return_bitfield_21_exists then

    -- Return Bitfield 21: Struct of 8 fields
    index, return_bitfield_21 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 22
  local return_bitfield_22 = nil

  local return_bitfield_22_exists = number_of_return_bitfields >= 22

  if return_bitfield_22_exists then

    -- Return Bitfield 22: Struct of 8 fields
    index, return_bitfield_22 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Cancel Or Correct Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.trade_cancel_or_correct_message.dissect = function(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)
  local size_of_trade_cancel_or_correct_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.trade_cancel_or_correct_message.size(buffer, offset)
  local index = offset + size_of_trade_cancel_or_correct_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.trade_cancel_or_correct_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.trade_cancel_or_correct_message.fields(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)
    parent:set_len(size_of_trade_cancel_or_correct_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.trade_cancel_or_correct_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.trade_cancel_or_correct_message.fields(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)

    return index
  end
end

-- Order Execution Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_execution_message = {}

-- Read runtime size of: Order Execution Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_execution_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Execution Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_execution_message.fields = function(buffer, offset, packet, parent, size_of_order_execution_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgaequities_binaryorderentry_boe_v2_4_57.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicato: Alphanumeric
  index, sub_liquidity_indicato = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicato.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_edgaequities_binaryorderentry_boe_v2_4_57.contra_broker.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 20
  local return_bitfield_20 = nil

  local return_bitfield_20_exists = number_of_return_bitfields >= 20

  if return_bitfield_20_exists then

    -- Return Bitfield 20: Struct of 8 fields
    index, return_bitfield_20 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 21
  local return_bitfield_21 = nil

  local return_bitfield_21_exists = number_of_return_bitfields >= 21

  if return_bitfield_21_exists then

    -- Return Bitfield 21: Struct of 8 fields
    index, return_bitfield_21 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 22
  local return_bitfield_22 = nil

  local return_bitfield_22_exists = number_of_return_bitfields >= 22

  if return_bitfield_22_exists then

    -- Return Bitfield 22: Struct of 8 fields
    index, return_bitfield_22 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if side_exists then
    index, side = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if price_exists then
    index, price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if account_exists then
    index, account = cboe_edgaequities_binaryorderentry_boe_v2_4_57.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sub Liquidity Indicator
  local sub_liquidity_indicator = nil

  local sub_liquidity_indicator_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if sub_liquidity_indicator_exists then
    index, sub_liquidity_indicator = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cross Trade Flag
  local cross_trade_flag = nil

  local cross_trade_flag_exists = number_of_return_bitfields >= 21 and bit.band(return_bitfield_21, 0x08) > 0

  if cross_trade_flag_exists then
    index, cross_trade_flag = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = number_of_return_bitfields >= 21 and bit.band(return_bitfield_21, 0x40) > 0

  if locate_broker_exists then
    index, locate_broker = cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Execution Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_execution_message.dissect = function(buffer, offset, packet, parent, size_of_order_execution_message)
  local size_of_order_execution_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_execution_message.size(buffer, offset)
  local index = offset + size_of_order_execution_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_execution_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_execution_message.fields(buffer, offset, packet, parent, size_of_order_execution_message)
    parent:set_len(size_of_order_execution_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_execution_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_execution_message.fields(buffer, offset, packet, parent, size_of_order_execution_message)

    return index
  end
end

-- Cancel Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_rejected_message = {}

-- Read runtime size of: Cancel Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Cancel Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_rejected_message.fields = function(buffer, offset, packet, parent, size_of_cancel_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgaequities_binaryorderentry_boe_v2_4_57.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 20
  local return_bitfield_20 = nil

  local return_bitfield_20_exists = number_of_return_bitfields >= 20

  if return_bitfield_20_exists then

    -- Return Bitfield 20: Struct of 8 fields
    index, return_bitfield_20 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 21
  local return_bitfield_21 = nil

  local return_bitfield_21_exists = number_of_return_bitfields >= 21

  if return_bitfield_21_exists then

    -- Return Bitfield 21: Struct of 8 fields
    index, return_bitfield_21 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 22
  local return_bitfield_22 = nil

  local return_bitfield_22_exists = number_of_return_bitfields >= 22

  if return_bitfield_22_exists then

    -- Return Bitfield 22: Struct of 8 fields
    index, return_bitfield_22 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if side_exists then
    index, side = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if price_exists then
    index, price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Cancel Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_cancel_rejected_message)
  local size_of_cancel_rejected_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_rejected_message.size(buffer, offset)
  local index = offset + size_of_cancel_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_rejected_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_rejected_message.fields(buffer, offset, packet, parent, size_of_cancel_rejected_message)
    parent:set_len(size_of_cancel_rejected_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_rejected_message.fields(buffer, offset, packet, parent, size_of_cancel_rejected_message)

    return index
  end
end

-- Order Cancelled Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_cancelled_message = {}

-- Read runtime size of: Order Cancelled Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_cancelled_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Cancelled Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_cancelled_message.fields = function(buffer, offset, packet, parent, size_of_order_cancelled_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_reason.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 20
  local return_bitfield_20 = nil

  local return_bitfield_20_exists = number_of_return_bitfields >= 20

  if return_bitfield_20_exists then

    -- Return Bitfield 20: Struct of 8 fields
    index, return_bitfield_20 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 21
  local return_bitfield_21 = nil

  local return_bitfield_21_exists = number_of_return_bitfields >= 21

  if return_bitfield_21_exists then

    -- Return Bitfield 21: Struct of 8 fields
    index, return_bitfield_21 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 22
  local return_bitfield_22 = nil

  local return_bitfield_22_exists = number_of_return_bitfields >= 22

  if return_bitfield_22_exists then

    -- Return Bitfield 22: Struct of 8 fields
    index, return_bitfield_22 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if side_exists then
    index, side = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if price_exists then
    index, price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cross Trade Flag
  local cross_trade_flag = nil

  local cross_trade_flag_exists = number_of_return_bitfields >= 21 and bit.band(return_bitfield_21, 0x08) > 0

  if cross_trade_flag_exists then
    index, cross_trade_flag = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Cancelled Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_cancelled_message.dissect = function(buffer, offset, packet, parent, size_of_order_cancelled_message)
  local size_of_order_cancelled_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_cancelled_message.size(buffer, offset)
  local index = offset + size_of_order_cancelled_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_cancelled_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_cancelled_message.fields(buffer, offset, packet, parent, size_of_order_cancelled_message)
    parent:set_len(size_of_order_cancelled_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_cancelled_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_cancelled_message.fields(buffer, offset, packet, parent, size_of_order_cancelled_message)

    return index
  end
end

-- User Modify Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.user_modify_rejected_message = {}

-- Read runtime size of: User Modify Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.user_modify_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: User Modify Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.user_modify_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Modify Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.user_modify_rejected_message.fields = function(buffer, offset, packet, parent, size_of_user_modify_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgaequities_binaryorderentry_boe_v2_4_57.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 20
  local return_bitfield_20 = nil

  local return_bitfield_20_exists = number_of_return_bitfields >= 20

  if return_bitfield_20_exists then

    -- Return Bitfield 20: Struct of 8 fields
    index, return_bitfield_20 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 21
  local return_bitfield_21 = nil

  local return_bitfield_21_exists = number_of_return_bitfields >= 21

  if return_bitfield_21_exists then

    -- Return Bitfield 21: Struct of 8 fields
    index, return_bitfield_21 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 22
  local return_bitfield_22 = nil

  local return_bitfield_22_exists = number_of_return_bitfields >= 22

  if return_bitfield_22_exists then

    -- Return Bitfield 22: Struct of 8 fields
    index, return_bitfield_22 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: User Modify Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.user_modify_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_user_modify_rejected_message)
  local size_of_user_modify_rejected_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.user_modify_rejected_message.size(buffer, offset)
  local index = offset + size_of_user_modify_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.user_modify_rejected_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.user_modify_rejected_message.fields(buffer, offset, packet, parent, size_of_user_modify_rejected_message)
    parent:set_len(size_of_user_modify_rejected_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.user_modify_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.user_modify_rejected_message.fields(buffer, offset, packet, parent, size_of_user_modify_rejected_message)

    return index
  end
end

-- Order Restated Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_restated_message = {}

-- Read runtime size of: Order Restated Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_restated_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Restated Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_restated_message.fields = function(buffer, offset, packet, parent, size_of_order_restated_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_id.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Alphanumeric
  index, restatement_reason = cboe_edgaequities_binaryorderentry_boe_v2_4_57.restatement_reason.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 20
  local return_bitfield_20 = nil

  local return_bitfield_20_exists = number_of_return_bitfields >= 20

  if return_bitfield_20_exists then

    -- Return Bitfield 20: Struct of 8 fields
    index, return_bitfield_20 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 21
  local return_bitfield_21 = nil

  local return_bitfield_21_exists = number_of_return_bitfields >= 21

  if return_bitfield_21_exists then

    -- Return Bitfield 21: Struct of 8 fields
    index, return_bitfield_21 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 22
  local return_bitfield_22 = nil

  local return_bitfield_22_exists = number_of_return_bitfields >= 22

  if return_bitfield_22_exists then

    -- Return Bitfield 22: Struct of 8 fields
    index, return_bitfield_22 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if side_exists then
    index, side = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if price_exists then
    index, price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x40) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ex_destination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_return_bitfields >= 12 and bit.band(return_bitfield_12, 0x08) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Restated Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_restated_message.dissect = function(buffer, offset, packet, parent, size_of_order_restated_message)
  local size_of_order_restated_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_restated_message.size(buffer, offset)
  local index = offset + size_of_order_restated_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_restated_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_restated_message.fields(buffer, offset, packet, parent, size_of_order_restated_message)
    parent:set_len(size_of_order_restated_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_restated_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_restated_message.fields(buffer, offset, packet, parent, size_of_order_restated_message)

    return index
  end
end

-- Order Modified Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_modified_message = {}

-- Read runtime size of: Order Modified Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_modified_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Modified Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_modified_message.fields = function(buffer, offset, packet, parent, size_of_order_modified_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 20
  local return_bitfield_20 = nil

  local return_bitfield_20_exists = number_of_return_bitfields >= 20

  if return_bitfield_20_exists then

    -- Return Bitfield 20: Struct of 8 fields
    index, return_bitfield_20 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 21
  local return_bitfield_21 = nil

  local return_bitfield_21_exists = number_of_return_bitfields >= 21

  if return_bitfield_21_exists then

    -- Return Bitfield 21: Struct of 8 fields
    index, return_bitfield_21 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 22
  local return_bitfield_22 = nil

  local return_bitfield_22_exists = number_of_return_bitfields >= 22

  if return_bitfield_22_exists then

    -- Return Bitfield 22: Struct of 8 fields
    index, return_bitfield_22 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if side_exists then
    index, side = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if price_exists then
    index, price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if account_exists then
    index, account = cboe_edgaequities_binaryorderentry_boe_v2_4_57.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_edgaequities_binaryorderentry_boe_v2_4_57.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Discretion Amount
  local discretion_amount = nil

  local discretion_amount_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x20) > 0

  if discretion_amount_exists then
    index, discretion_amount = cboe_edgaequities_binaryorderentry_boe_v2_4_57.discretion_amount.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_edgaequities_binaryorderentry_boe_v2_4_57.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x02) > 0

  if echo_text_exists then
    index, echo_text = cboe_edgaequities_binaryorderentry_boe_v2_4_57.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x08) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x10) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_edgaequities_binaryorderentry_boe_v2_4_57.rout_strategy.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Route Delivery Method
  local route_delivery_method = nil

  local route_delivery_method_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x20) > 0

  if route_delivery_method_exists then
    index, route_delivery_method = cboe_edgaequities_binaryorderentry_boe_v2_4_57.route_delivery_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x40) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ex_destination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Px
  local last_px = nil

  local last_px_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x08) > 0

  if last_px_exists then
    index, last_px = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x10) > 0

  if display_price_exists then
    index, display_price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Working Price
  local working_price = nil

  local working_price_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x20) > 0

  if working_price_exists then
    index, working_price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.working_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x08) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_edgaequities_binaryorderentry_boe_v2_4_57.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cross Trade Flag
  local cross_trade_flag = nil

  local cross_trade_flag_exists = number_of_return_bitfields >= 21 and bit.band(return_bitfield_21, 0x08) > 0

  if cross_trade_flag_exists then
    index, cross_trade_flag = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = number_of_return_bitfields >= 21 and bit.band(return_bitfield_21, 0x40) > 0

  if locate_broker_exists then
    index, locate_broker = cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Modified Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_modified_message.dissect = function(buffer, offset, packet, parent, size_of_order_modified_message)
  local size_of_order_modified_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_modified_message.size(buffer, offset)
  local index = offset + size_of_order_modified_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_modified_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_modified_message.fields(buffer, offset, packet, parent, size_of_order_modified_message)
    parent:set_len(size_of_order_modified_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_modified_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_modified_message.fields(buffer, offset, packet, parent, size_of_order_modified_message)

    return index
  end
end

-- Order Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_rejected_message = {}

-- Read runtime size of: Order Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_rejected_message.fields = function(buffer, offset, packet, parent, size_of_order_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgaequities_binaryorderentry_boe_v2_4_57.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 20
  local return_bitfield_20 = nil

  local return_bitfield_20_exists = number_of_return_bitfields >= 20

  if return_bitfield_20_exists then

    -- Return Bitfield 20: Struct of 8 fields
    index, return_bitfield_20 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 21
  local return_bitfield_21 = nil

  local return_bitfield_21_exists = number_of_return_bitfields >= 21

  if return_bitfield_21_exists then

    -- Return Bitfield 21: Struct of 8 fields
    index, return_bitfield_21 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 22
  local return_bitfield_22 = nil

  local return_bitfield_22_exists = number_of_return_bitfields >= 22

  if return_bitfield_22_exists then

    -- Return Bitfield 22: Struct of 8 fields
    index, return_bitfield_22 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if side_exists then
    index, side = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if price_exists then
    index, price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sub Liquidity Indicator
  local sub_liquidity_indicator = nil

  local sub_liquidity_indicator_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if sub_liquidity_indicator_exists then
    index, sub_liquidity_indicator = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x08) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_edgaequities_binaryorderentry_boe_v2_4_57.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 9 and bit.band(return_bitfield_9, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Rejected Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_order_rejected_message)
  local size_of_order_rejected_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_rejected_message.size(buffer, offset)
  local index = offset + size_of_order_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_rejected_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_rejected_message.fields(buffer, offset, packet, parent, size_of_order_rejected_message)
    parent:set_len(size_of_order_rejected_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_rejected_message.fields(buffer, offset, packet, parent, size_of_order_rejected_message)

    return index
  end
end

-- Order Acknowledgment Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_acknowledgment_message = {}

-- Read runtime size of: Order Acknowledgment Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Acknowledgment Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgment Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_order_acknowledgment_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 18
  local return_bitfield_18 = nil

  local return_bitfield_18_exists = number_of_return_bitfields >= 18

  if return_bitfield_18_exists then

    -- Return Bitfield 18: Struct of 8 fields
    index, return_bitfield_18 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_18.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 19
  local return_bitfield_19 = nil

  local return_bitfield_19_exists = number_of_return_bitfields >= 19

  if return_bitfield_19_exists then

    -- Return Bitfield 19: Struct of 8 fields
    index, return_bitfield_19 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_19.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 20
  local return_bitfield_20 = nil

  local return_bitfield_20_exists = number_of_return_bitfields >= 20

  if return_bitfield_20_exists then

    -- Return Bitfield 20: Struct of 8 fields
    index, return_bitfield_20 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_20.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 21
  local return_bitfield_21 = nil

  local return_bitfield_21_exists = number_of_return_bitfields >= 21

  if return_bitfield_21_exists then

    -- Return Bitfield 21: Struct of 8 fields
    index, return_bitfield_21 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_21.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 22
  local return_bitfield_22 = nil

  local return_bitfield_22_exists = number_of_return_bitfields >= 22

  if return_bitfield_22_exists then

    -- Return Bitfield 22: Struct of 8 fields
    index, return_bitfield_22 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.return_bitfield_22.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if side_exists then
    index, side = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x04) > 0

  if price_exists then
    index, price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x01) > 0

  if account_exists then
    index, account = cboe_edgaequities_binaryorderentry_boe_v2_4_57.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_edgaequities_binaryorderentry_boe_v2_4_57.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Discretion Amount
  local discretion_amount = nil

  local discretion_amount_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x20) > 0

  if discretion_amount_exists then
    index, discretion_amount = cboe_edgaequities_binaryorderentry_boe_v2_4_57.discretion_amount.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 4 and bit.band(return_bitfield_4, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_edgaequities_binaryorderentry_boe_v2_4_57.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sub Liquidity Indicator
  local sub_liquidity_indicator = nil

  local sub_liquidity_indicator_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if sub_liquidity_indicator_exists then
    index, sub_liquidity_indicator = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sub_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x02) > 0

  if echo_text_exists then
    index, echo_text = cboe_edgaequities_binaryorderentry_boe_v2_4_57.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x08) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x10) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_edgaequities_binaryorderentry_boe_v2_4_57.rout_strategy.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Route Delivery Method
  local route_delivery_method = nil

  local route_delivery_method_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x20) > 0

  if route_delivery_method_exists then
    index, route_delivery_method = cboe_edgaequities_binaryorderentry_boe_v2_4_57.route_delivery_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x40) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ex_destination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Px
  local last_px = nil

  local last_px_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x08) > 0

  if last_px_exists then
    index, last_px = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x10) > 0

  if display_price_exists then
    index, display_price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Working Price
  local working_price = nil

  local working_price_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x20) > 0

  if working_price_exists then
    index, working_price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.working_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 14 and bit.band(return_bitfield_14, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x08) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_edgaequities_binaryorderentry_boe_v2_4_57.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cross Trade Flag
  local cross_trade_flag = nil

  local cross_trade_flag_exists = number_of_return_bitfields >= 21 and bit.band(return_bitfield_21, 0x08) > 0

  if cross_trade_flag_exists then
    index, cross_trade_flag = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = number_of_return_bitfields >= 21 and bit.band(return_bitfield_21, 0x40) > 0

  if locate_broker_exists then
    index, locate_broker = cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmc Sessions
  local cmc_sessions = nil

  local cmc_sessions_exists = number_of_return_bitfields >= 22 and bit.band(return_bitfield_22, 0x08) > 0

  if cmc_sessions_exists then
    index, cmc_sessions = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cmc_sessions.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Step Up Amount
  local step_up_amount = nil

  local step_up_amount_exists = number_of_return_bitfields >= 22 and bit.band(return_bitfield_22, 0x40) > 0

  if step_up_amount_exists then
    index, step_up_amount = cboe_edgaequities_binaryorderentry_boe_v2_4_57.step_up_amount.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Acknowledgment Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_acknowledgment_message.dissect = function(buffer, offset, packet, parent, size_of_order_acknowledgment_message)
  local size_of_order_acknowledgment_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_acknowledgment_message.size(buffer, offset)
  local index = offset + size_of_order_acknowledgment_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.order_acknowledgment_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_order_acknowledgment_message)
    parent:set_len(size_of_order_acknowledgment_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_acknowledgment_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_order_acknowledgment_message)

    return index
  end
end

-- Risk Group I Ds
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_i_ds = {}

-- Size: Risk Group I Ds
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_i_ds.size =
  cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id.size

-- Display: Risk Group I Ds
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_i_ds.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Group I Ds
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_i_ds.fields = function(buffer, offset, packet, parent, risk_group_i_ds_index)
  local index = offset

  -- Implicit Risk Group I Ds Index
  if risk_group_i_ds_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.risk_group_i_ds_index, risk_group_i_ds_index)
    iteration:set_generated()
  end

  -- Risk Group Id: Binary
  index, risk_group_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Group I Ds
cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_i_ds.dissect = function(buffer, offset, packet, parent, risk_group_i_ds_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.risk_group_i_ds, buffer(offset, 0))
    local index = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_i_ds.fields(buffer, offset, packet, parent, risk_group_i_ds_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_i_ds.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_i_ds.fields(buffer, offset, packet, parent, risk_group_i_ds_index)
  end
end

-- Purge Orders Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_2 = {}

-- Size: Purge Orders Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_2.size = 1

-- Display: Purge Orders Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Purge Orders Bitfield 2 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 2 Symbol"
  end
  -- Is Purge Orders Bitfield 2 Symbol Sfx flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 2 Symbol Sfx"
  end
  -- Is Purge Orders Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 2 Reserved 4"
  end
  -- Is Purge Orders Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 2 Reserved 8"
  end
  -- Is Purge Orders Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 2 Reserved 16"
  end
  -- Is Purge Orders Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 2 Reserved 32"
  end
  -- Is Purge Orders Bitfield 2 Send Time flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 2 Send Time"
  end
  -- Is Purge Orders Bitfield 2 Matching Unit flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 2 Matching Unit"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Purge Orders Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_2.bits = function(range, value, packet, parent)

  -- Purge Orders Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_symbol, range, value)

  -- Purge Orders Bitfield 2 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_symbol_sfx, range, value)

  -- Purge Orders Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_reserved_4, range, value)

  -- Purge Orders Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_reserved_8, range, value)

  -- Purge Orders Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_reserved_16, range, value)

  -- Purge Orders Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_reserved_32, range, value)

  -- Purge Orders Bitfield 2 Send Time: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_send_time, range, value)

  -- Purge Orders Bitfield 2 Matching Unit: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2_matching_unit, range, value)
end

-- Dissect: Purge Orders Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_2, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purge Orders Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_1 = {}

-- Size: Purge Orders Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_1.size = 1

-- Display: Purge Orders Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Purge Orders Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 1 Clearing Firm"
  end
  -- Is Purge Orders Bitfield 1 Mass Cancel Lockout flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 1 Mass Cancel Lockout"
  end
  -- Is Purge Orders Bitfield 1 Mass Cancel Inst flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 1 Mass Cancel Inst"
  end
  -- Is Purge Orders Bitfield 1 Risk Root flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 1 Risk Root"
  end
  -- Is Purge Orders Bitfield 1 Mass Cancel Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 1 Mass Cancel Id"
  end
  -- Is Purge Orders Bitfield 1 Routing Firm Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 1 Routing Firm Id"
  end
  -- Is Purge Orders Bitfield 1 Manual Order Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 1 Manual Order Indicator"
  end
  -- Is Purge Orders Bitfield 1 Operator Id flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Purge Orders Bitfield 1 Operator Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Purge Orders Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_1.bits = function(range, value, packet, parent)

  -- Purge Orders Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_clearing_firm, range, value)

  -- Purge Orders Bitfield 1 Mass Cancel Lockout: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_mass_cancel_lockout, range, value)

  -- Purge Orders Bitfield 1 Mass Cancel Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_mass_cancel_inst, range, value)

  -- Purge Orders Bitfield 1 Risk Root: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_risk_root, range, value)

  -- Purge Orders Bitfield 1 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_mass_cancel_id, range, value)

  -- Purge Orders Bitfield 1 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_routing_firm_id, range, value)

  -- Purge Orders Bitfield 1 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_manual_order_indicator, range, value)

  -- Purge Orders Bitfield 1 Operator Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1_operator_id, range, value)
end

-- Dissect: Purge Orders Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_orders_bitfield_1, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purge Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_order_message = {}

-- Read runtime size of: Purge Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Purge Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_order_message.fields = function(buffer, offset, packet, parent, size_of_purge_order_message)
  local index = offset

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Purge Orders Bitfields: Binary
  index, number_of_purge_orders_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_purge_orders_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Purge Orders Bitfield 1
  local purge_orders_bitfield_1 = nil

  local purge_orders_bitfield_1_exists = number_of_purge_orders_bitfields >= 1

  if purge_orders_bitfield_1_exists then

    -- Purge Orders Bitfield 1: Struct of 8 fields
    index, purge_orders_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Purge Orders Bitfield 2
  local purge_orders_bitfield_2 = nil

  local purge_orders_bitfield_2_exists = number_of_purge_orders_bitfields >= 2

  if purge_orders_bitfield_2_exists then

    -- Purge Orders Bitfield 2: Struct of 8 fields
    index, purge_orders_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_orders_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Risk Group Id Cnt: Binary
  index, risk_group_id_cnt = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Risk Group I Ds
  for risk_group_i_ds_index = 1, risk_group_id_cnt do
    index, risk_group_i_ds = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_i_ds.dissect(buffer, index, packet, parent, risk_group_i_ds_index)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_purge_orders_bitfields >= 1 and bit.band(purge_orders_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Inst
  local mass_cancel_inst = nil

  local mass_cancel_inst_exists = number_of_purge_orders_bitfields >= 1 and bit.band(purge_orders_bitfield_1, 0x04) > 0

  if mass_cancel_inst_exists then
    index, mass_cancel_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_purge_orders_bitfields >= 1 and bit.band(purge_orders_bitfield_1, 0x10) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_purge_orders_bitfields >= 2 and bit.band(purge_orders_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_purge_orders_bitfields >= 2 and bit.band(purge_orders_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Matching Unit
  local matching_unit = nil

  local matching_unit_exists = number_of_purge_orders_bitfields >= 2 and bit.band(purge_orders_bitfield_2, 0x80) > 0

  if matching_unit_exists then
    index, matching_unit = cboe_edgaequities_binaryorderentry_boe_v2_4_57.matching_unit.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Purge Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_order_message.dissect = function(buffer, offset, packet, parent, size_of_purge_order_message)
  local size_of_purge_order_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_order_message.size(buffer, offset)
  local index = offset + size_of_purge_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.purge_order_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_order_message.fields(buffer, offset, packet, parent, size_of_purge_order_message)
    parent:set_len(size_of_purge_order_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_order_message.fields(buffer, offset, packet, parent, size_of_purge_order_message)

    return index
  end
end

-- Modify Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_2 = {}

-- Size: Modify Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_2.size = 1

-- Display: Modify Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Modify Order Bitfield 2 Max Floor flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Max Floor"
  end
  -- Is Modify Order Bitfield 2 Stop Px flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Stop Px"
  end
  -- Is Modify Order Bitfield 2 Routing Firm Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Routing Firm Id"
  end
  -- Is Modify Order Bitfield 2 Manual Order Indicator flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Manual Order Indicator"
  end
  -- Is Modify Order Bitfield 2 Operator Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Operator Id"
  end
  -- Is Modify Order Bitfield 2 Frequent Trader Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Frequent Trader Id"
  end
  -- Is Modify Order Bitfield 2 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Reserved 64"
  end
  -- Is Modify Order Bitfield 2 Locate Broker flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_2.bits = function(range, value, packet, parent)

  -- Modify Order Bitfield 2 Max Floor: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_max_floor, range, value)

  -- Modify Order Bitfield 2 Stop Px: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_stop_px, range, value)

  -- Modify Order Bitfield 2 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_routing_firm_id, range, value)

  -- Modify Order Bitfield 2 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_manual_order_indicator, range, value)

  -- Modify Order Bitfield 2 Operator Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_operator_id, range, value)

  -- Modify Order Bitfield 2 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_frequent_trader_id, range, value)

  -- Modify Order Bitfield 2 Reserved 64: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_reserved_64, range, value)

  -- Modify Order Bitfield 2 Locate Broker: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2_locate_broker, range, value)
end

-- Dissect: Modify Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_2, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_1 = {}

-- Size: Modify Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_1.size = 1

-- Display: Modify Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Modify Order Bitfield 1 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Reserved 1"
  end
  -- Is Modify Order Bitfield 1 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Reserved 2"
  end
  -- Is Modify Order Bitfield 1 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Reserved 4"
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_1.bits = function(range, value, packet, parent)

  -- Modify Order Bitfield 1 Reserved 1: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_reserved_1, range, value)

  -- Modify Order Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_reserved_2, range, value)

  -- Modify Order Bitfield 1 Reserved 4: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_reserved_4, range, value)

  -- Modify Order Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_price, range, value)

  -- Modify Order Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_ord_type, range, value)

  -- Modify Order Bitfield 1 Cancel Orig On Reject: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_cancel_orig_on_reject, range, value)

  -- Modify Order Bitfield 1 Exec Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_exec_inst, range, value)

  -- Modify Order Bitfield 1 Side: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1_side, range, value)
end

-- Dissect: Modify Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_bitfield_1, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_message = {}

-- Read runtime size of: Modify Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Modify Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_message.fields = function(buffer, offset, packet, parent, size_of_modify_order_message)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Number Of Modify Order Bitfields: Binary
  index, number_of_modify_order_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_modify_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Modify Order Bitfield 1
  local modify_order_bitfield_1 = nil

  local modify_order_bitfield_1_exists = number_of_modify_order_bitfields >= 1

  if modify_order_bitfield_1_exists then

    -- Modify Order Bitfield 1: Struct of 8 fields
    index, modify_order_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Modify Order Bitfield 2
  local modify_order_bitfield_2 = nil

  local modify_order_bitfield_2_exists = number_of_modify_order_bitfields >= 2

  if modify_order_bitfield_2_exists then

    -- Modify Order Bitfield 2: Struct of 8 fields
    index, modify_order_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x08) > 0

  if price_exists then
    index, price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cancel Orig On Reject
  local cancel_orig_on_reject = nil

  local cancel_orig_on_reject_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x20) > 0

  if cancel_orig_on_reject_exists then
    index, cancel_orig_on_reject = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_orig_on_reject.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x40) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x80) > 0

  if side_exists then
    index, side = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_modify_order_bitfields >= 2 and bit.band(modify_order_bitfield_2, 0x01) > 0

  if max_floor_exists then
    index, max_floor = cboe_edgaequities_binaryorderentry_boe_v2_4_57.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_modify_order_bitfields >= 2 and bit.band(modify_order_bitfield_2, 0x02) > 0

  if stop_px_exists then
    index, stop_px = cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = number_of_modify_order_bitfields >= 2 and bit.band(modify_order_bitfield_2, 0x80) > 0

  if locate_broker_exists then
    index, locate_broker = cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Modify Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_message.dissect = function(buffer, offset, packet, parent, size_of_modify_order_message)
  local size_of_modify_order_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_message.size(buffer, offset)
  local index = offset + size_of_modify_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.modify_order_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_message.fields(buffer, offset, packet, parent, size_of_modify_order_message)
    parent:set_len(size_of_modify_order_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_message.fields(buffer, offset, packet, parent, size_of_modify_order_message)

    return index
  end
end

-- Cancel Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_2 = {}

-- Size: Cancel Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_2.size = 1

-- Display: Cancel Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Cancel Order Bitfield 2 Mass Cancel Inst flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Mass Cancel Inst"
  end
  -- Is Cancel Order Bitfield 2 Symbol flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Symbol"
  end
  -- Is Cancel Order Bitfield 2 Symbol Sfx flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Symbol Sfx"
  end
  -- Is Cancel Order Bitfield 2 Send Time flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Send Time"
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_2.bits = function(range, value, packet, parent)

  -- Cancel Order Bitfield 2 Mass Cancel Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_mass_cancel_inst, range, value)

  -- Cancel Order Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_symbol, range, value)

  -- Cancel Order Bitfield 2 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_symbol_sfx, range, value)

  -- Cancel Order Bitfield 2 Send Time: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_send_time, range, value)

  -- Cancel Order Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_reserved_16, range, value)

  -- Cancel Order Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_reserved_32, range, value)

  -- Cancel Order Bitfield 2 Reserved 64: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_reserved_64, range, value)

  -- Cancel Order Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2_reserved_128, range, value)
end

-- Dissect: Cancel Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_2, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cancel Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_1 = {}

-- Size: Cancel Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_1.size = 1

-- Display: Cancel Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Cancel Order Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Clearing Firm"
  end
  -- Is Cancel Order Bitfield 1 Mass Cancel Lockout flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Mass Cancel Lockout"
  end
  -- Is Cancel Order Bitfield 1 Mass Cancel flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Mass Cancel"
  end
  -- Is Cancel Order Bitfield 1 Risk Root flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Risk Root"
  end
  -- Is Cancel Order Bitfield 1 Mass Cancel Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Mass Cancel Id"
  end
  -- Is Cancel Order Bitfield 1 Routing Firm Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Routing Firm Id"
  end
  -- Is Cancel Order Bitfield 1 Manual Order Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Manual Order Indicator"
  end
  -- Is Cancel Order Bitfield 1 Operator Id flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Operator Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Cancel Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_1.bits = function(range, value, packet, parent)

  -- Cancel Order Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_clearing_firm, range, value)

  -- Cancel Order Bitfield 1 Mass Cancel Lockout: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_mass_cancel_lockout, range, value)

  -- Cancel Order Bitfield 1 Mass Cancel: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_mass_cancel, range, value)

  -- Cancel Order Bitfield 1 Risk Root: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_risk_root, range, value)

  -- Cancel Order Bitfield 1 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_mass_cancel_id, range, value)

  -- Cancel Order Bitfield 1 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_routing_firm_id, range, value)

  -- Cancel Order Bitfield 1 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_manual_order_indicator, range, value)

  -- Cancel Order Bitfield 1 Operator Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1_operator_id, range, value)
end

-- Dissect: Cancel Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_bitfield_1, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cancel Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_message = {}

-- Read runtime size of: Cancel Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Cancel Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_message.fields = function(buffer, offset, packet, parent, size_of_cancel_order_message)
  local index = offset

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Number Of Cancel Order Bitfields: Binary
  index, number_of_cancel_order_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_cancel_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Cancel Order Bitfield 1
  local cancel_order_bitfield_1 = nil

  local cancel_order_bitfield_1_exists = number_of_cancel_order_bitfields >= 1

  if cancel_order_bitfield_1_exists then

    -- Cancel Order Bitfield 1: Struct of 8 fields
    index, cancel_order_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cancel Order Bitfield 2
  local cancel_order_bitfield_2 = nil

  local cancel_order_bitfield_2_exists = number_of_cancel_order_bitfields >= 2

  if cancel_order_bitfield_2_exists then

    -- Cancel Order Bitfield 2: Struct of 8 fields
    index, cancel_order_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_cancel_order_bitfields >= 1 and bit.band(cancel_order_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Cancel Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_message.dissect = function(buffer, offset, packet, parent, size_of_cancel_order_message)
  local size_of_cancel_order_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_message.size(buffer, offset)
  local index = offset + size_of_cancel_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.cancel_order_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_message.fields(buffer, offset, packet, parent, size_of_cancel_order_message)
    parent:set_len(size_of_cancel_order_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_message.fields(buffer, offset, packet, parent, size_of_cancel_order_message)

    return index
  end
end

-- New Order Bitfield 12
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_12 = {}

-- Size: New Order Bitfield 12
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_12.size = 1

-- Display: New Order Bitfield 12
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_12.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 12 Held flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 12 Held"
  end
  -- Is New Order Bitfield 12 Locate Broker flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 12 Locate Broker"
  end
  -- Is New Order Bitfield 12 Cmc Sessions flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 12 Cmc Sessions"
  end
  -- Is New Order Bitfield 12 Step Up Amount flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 12 Step Up Amount"
  end
  -- Is New Order Bitfield 12 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 12 Reserved 16"
  end
  -- Is New Order Bitfield 12 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 12 Reserved 32"
  end
  -- Is New Order Bitfield 12 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 12 Reserved 64"
  end
  -- Is New Order Bitfield 12 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 12 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 12
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_12.bits = function(range, value, packet, parent)

  -- New Order Bitfield 12 Held: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_held, range, value)

  -- New Order Bitfield 12 Locate Broker: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_locate_broker, range, value)

  -- New Order Bitfield 12 Cmc Sessions: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_cmc_sessions, range, value)

  -- New Order Bitfield 12 Step Up Amount: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_step_up_amount, range, value)

  -- New Order Bitfield 12 Reserved 16: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_reserved_16, range, value)

  -- New Order Bitfield 12 Reserved 32: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_reserved_32, range, value)

  -- New Order Bitfield 12 Reserved 64: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_reserved_64, range, value)

  -- New Order Bitfield 12 Reserved 128: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 12
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_12.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_12.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_12.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_12, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_12.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 11
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_11 = {}

-- Size: New Order Bitfield 11
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_11.size = 1

-- Display: New Order Bitfield 11
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_11.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 11 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 11 Reserved 1"
  end
  -- Is New Order Bitfield 11 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 11 Reserved 2"
  end
  -- Is New Order Bitfield 11 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 11 Reserved 4"
  end
  -- Is New Order Bitfield 11 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 11 Reserved 8"
  end
  -- Is New Order Bitfield 11 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 11 Reserved 16"
  end
  -- Is New Order Bitfield 11 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 11 Reserved 32"
  end
  -- Is New Order Bitfield 11 Cross Trade Flag flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 11 Cross Trade Flag"
  end
  -- Is New Order Bitfield 11 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 11 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 11
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_11.bits = function(range, value, packet, parent)

  -- New Order Bitfield 11 Reserved 1: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_1, range, value)

  -- New Order Bitfield 11 Reserved 2: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_2, range, value)

  -- New Order Bitfield 11 Reserved 4: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_4, range, value)

  -- New Order Bitfield 11 Reserved 8: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_8, range, value)

  -- New Order Bitfield 11 Reserved 16: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_16, range, value)

  -- New Order Bitfield 11 Reserved 32: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_32, range, value)

  -- New Order Bitfield 11 Cross Trade Flag: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_cross_trade_flag, range, value)

  -- New Order Bitfield 11 Reserved 128: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 11
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_11.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_11.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_11.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_11, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_11.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 10
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_10 = {}

-- Size: New Order Bitfield 10
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_10.size = 1

-- Display: New Order Bitfield 10
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_10.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 10 Session Eligibility flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 10 Session Eligibility"
  end
  -- Is New Order Bitfield 10 Attributed Quote flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 10 Attributed Quote"
  end
  -- Is New Order Bitfield 10 Booking Type flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 10 Booking Type"
  end
  -- Is New Order Bitfield 10 Ext Exec Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 10 Ext Exec Inst"
  end
  -- Is New Order Bitfield 10 Client Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 10 Client Id"
  end
  -- Is New Order Bitfield 10 Investor Id flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 10 Investor Id"
  end
  -- Is New Order Bitfield 10 Executor Id flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 10 Executor Id"
  end
  -- Is New Order Bitfield 10 Order Origination flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 10 Order Origination"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 10
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_10.bits = function(range, value, packet, parent)

  -- New Order Bitfield 10 Session Eligibility: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_session_eligibility, range, value)

  -- New Order Bitfield 10 Attributed Quote: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_attributed_quote, range, value)

  -- New Order Bitfield 10 Booking Type: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_booking_type, range, value)

  -- New Order Bitfield 10 Ext Exec Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_ext_exec_inst, range, value)

  -- New Order Bitfield 10 Client Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_client_id, range, value)

  -- New Order Bitfield 10 Investor Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_investor_id, range, value)

  -- New Order Bitfield 10 Executor Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_executor_id, range, value)

  -- New Order Bitfield 10 Order Origination: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10_order_origination, range, value)
end

-- Dissect: New Order Bitfield 10
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_10.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_10.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_10.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_10, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_10.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 9
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_9 = {}

-- Size: New Order Bitfield 9
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_9.size = 1

-- Display: New Order Bitfield 9
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_9.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 9 Order Origin flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 9 Order Origin"
  end
  -- Is New Order Bitfield 9 Ors flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 9 Ors"
  end
  -- Is New Order Bitfield 9 Price Type flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 9 Price Type"
  end
  -- Is New Order Bitfield 9 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 9 Reserved 8"
  end
  -- Is New Order Bitfield 9 Open Close flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 9 Open Close"
  end
  -- Is New Order Bitfield 9 Cmta Number flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 9 Cmta Number"
  end
  -- Is New Order Bitfield 9 Target Party Id flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 9 Target Party Id"
  end
  -- Is New Order Bitfield 9 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 9 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 9
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_9.bits = function(range, value, packet, parent)

  -- New Order Bitfield 9 Order Origin: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_order_origin, range, value)

  -- New Order Bitfield 9 Ors: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_ors, range, value)

  -- New Order Bitfield 9 Price Type: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_price_type, range, value)

  -- New Order Bitfield 9 Reserved 8: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_reserved_8, range, value)

  -- New Order Bitfield 9 Open Close: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_open_close, range, value)

  -- New Order Bitfield 9 Cmta Number: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_cmta_number, range, value)

  -- New Order Bitfield 9 Target Party Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_target_party_id, range, value)

  -- New Order Bitfield 9 Reserved 128: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 9
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_9.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_9.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_9.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_9, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_9.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 8
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_8 = {}

-- Size: New Order Bitfield 8
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_8.size = 1

-- Display: New Order Bitfield 8
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_8.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 8 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Reserved 1"
  end
  -- Is New Order Bitfield 8 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Reserved 2"
  end
  -- Is New Order Bitfield 8 Clearing Optional Data flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Clearing Optional Data"
  end
  -- Is New Order Bitfield 8 Client Id Attr flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Client Id Attr"
  end
  -- Is New Order Bitfield 8 Frequent Trader Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Frequent Trader Id"
  end
  -- Is New Order Bitfield 8 Compression flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Compression"
  end
  -- Is New Order Bitfield 8 Floor Destination flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Floor Destination"
  end
  -- Is New Order Bitfield 8 Floor Routing Inst flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 8 Floor Routing Inst"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 8
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_8.bits = function(range, value, packet, parent)

  -- New Order Bitfield 8 Reserved 1: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_reserved_1, range, value)

  -- New Order Bitfield 8 Reserved 2: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_reserved_2, range, value)

  -- New Order Bitfield 8 Clearing Optional Data: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_clearing_optional_data, range, value)

  -- New Order Bitfield 8 Client Id Attr: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_client_id_attr, range, value)

  -- New Order Bitfield 8 Frequent Trader Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_frequent_trader_id, range, value)

  -- New Order Bitfield 8 Compression: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_compression, range, value)

  -- New Order Bitfield 8 Floor Destination: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_floor_destination, range, value)

  -- New Order Bitfield 8 Floor Routing Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8_floor_routing_inst, range, value)
end

-- Dissect: New Order Bitfield 8
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_8.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_8.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_8.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_8, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_8.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 7
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_7 = {}

-- Size: New Order Bitfield 7
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_7.size = 1

-- Display: New Order Bitfield 7
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_7.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 7 Algorithmic Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Algorithmic Indicator"
  end
  -- Is New Order Bitfield 7 Risk Group Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Risk Group Id"
  end
  -- Is New Order Bitfield 7 Client Qualified Role flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Client Qualified Role"
  end
  -- Is New Order Bitfield 7 Investor Qualified Role flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Investor Qualified Role"
  end
  -- Is New Order Bitfield 7 Executor Qualified Role flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Executor Qualified Role"
  end
  -- Is New Order Bitfield 7 Cti Code flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Cti Code"
  end
  -- Is New Order Bitfield 7 Manual Order Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Manual Order Indicator"
  end
  -- Is New Order Bitfield 7 Operator Id flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Operator Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 7
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_7.bits = function(range, value, packet, parent)

  -- New Order Bitfield 7 Algorithmic Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_algorithmic_indicator, range, value)

  -- New Order Bitfield 7 Risk Group Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_risk_group_id, range, value)

  -- New Order Bitfield 7 Client Qualified Role: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_client_qualified_role, range, value)

  -- New Order Bitfield 7 Investor Qualified Role: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_investor_qualified_role, range, value)

  -- New Order Bitfield 7 Executor Qualified Role: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_executor_qualified_role, range, value)

  -- New Order Bitfield 7 Cti Code: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_cti_code, range, value)

  -- New Order Bitfield 7 Manual Order Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_manual_order_indicator, range, value)

  -- New Order Bitfield 7 Operator Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7_operator_id, range, value)
end

-- Dissect: New Order Bitfield 7
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_7.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_7.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_7, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 6
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_6 = {}

-- Size: New Order Bitfield 6
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_6.size = 1

-- Display: New Order Bitfield 6
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_6.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 6 Display Range flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Display Range"
  end
  -- Is New Order Bitfield 6 Stop Px flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Stop Px"
  end
  -- Is New Order Bitfield 6 Rout Strategy flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Rout Strategy"
  end
  -- Is New Order Bitfield 6 Route Delivery Method flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Route Delivery Method"
  end
  -- Is New Order Bitfield 6 Ex Destination flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Ex Destination"
  end
  -- Is New Order Bitfield 6 Echo Text flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Echo Text"
  end
  -- Is New Order Bitfield 6 Auction Id flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Auction Id"
  end
  -- Is New Order Bitfield 6 Routing Firm Id flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Routing Firm Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 6
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_6.bits = function(range, value, packet, parent)

  -- New Order Bitfield 6 Display Range: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_display_range, range, value)

  -- New Order Bitfield 6 Stop Px: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_stop_px, range, value)

  -- New Order Bitfield 6 Rout Strategy: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_rout_strategy, range, value)

  -- New Order Bitfield 6 Route Delivery Method: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_route_delivery_method, range, value)

  -- New Order Bitfield 6 Ex Destination: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_ex_destination, range, value)

  -- New Order Bitfield 6 Echo Text: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_echo_text, range, value)

  -- New Order Bitfield 6 Auction Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_auction_id, range, value)

  -- New Order Bitfield 6 Routing Firm Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6_routing_firm_id, range, value)
end

-- Dissect: New Order Bitfield 6
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_6, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 5
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_5 = {}

-- Size: New Order Bitfield 5
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_5.size = 1

-- Display: New Order Bitfield 5
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_5.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 5 Maturity Date flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Maturity Date"
  end
  -- Is New Order Bitfield 5 Strike Price flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Strike Price"
  end
  -- Is New Order Bitfield 5 Put Or Call flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Put Or Call"
  end
  -- Is New Order Bitfield 5 Risk Reset flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Risk Reset"
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
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_5.bits = function(range, value, packet, parent)

  -- New Order Bitfield 5 Maturity Date: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_maturity_date, range, value)

  -- New Order Bitfield 5 Strike Price: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_strike_price, range, value)

  -- New Order Bitfield 5 Put Or Call: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_put_or_call, range, value)

  -- New Order Bitfield 5 Risk Reset: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_risk_reset, range, value)

  -- New Order Bitfield 5 Reserved 16: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_reserved_16, range, value)

  -- New Order Bitfield 5 Reserved 32: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_reserved_32, range, value)

  -- New Order Bitfield 5 Reserved 64: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_reserved_64, range, value)

  -- New Order Bitfield 5 Reserved 128: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 5
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_5, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 4
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_4 = {}

-- Size: New Order Bitfield 4
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_4.size = 1

-- Display: New Order Bitfield 4
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_4.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 4 Account flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Account"
  end
  -- Is New Order Bitfield 4 Display Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Display Indicator"
  end
  -- Is New Order Bitfield 4 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 4"
  end
  -- Is New Order Bitfield 4 Discretion Amount flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Discretion Amount"
  end
  -- Is New Order Bitfield 4 Peg Difference flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Peg Difference"
  end
  -- Is New Order Bitfield 4 Prevent Match flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Prevent Match"
  end
  -- Is New Order Bitfield 4 Locate Reqd flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Locate Reqd"
  end
  -- Is New Order Bitfield 4 Expire Time flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Expire Time"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 4
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_4.bits = function(range, value, packet, parent)

  -- New Order Bitfield 4 Account: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_account, range, value)

  -- New Order Bitfield 4 Display Indicator: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_display_indicator, range, value)

  -- New Order Bitfield 4 Reserved 4: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_reserved_4, range, value)

  -- New Order Bitfield 4 Discretion Amount: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_discretion_amount, range, value)

  -- New Order Bitfield 4 Peg Difference: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_peg_difference, range, value)

  -- New Order Bitfield 4 Prevent Match: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_prevent_match, range, value)

  -- New Order Bitfield 4 Locate Reqd: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_locate_reqd, range, value)

  -- New Order Bitfield 4 Expire Time: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4_expire_time, range, value)
end

-- Dissect: New Order Bitfield 4
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_4, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 3
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_3 = {}

-- Size: New Order Bitfield 3
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_3.size = 1

-- Display: New Order Bitfield 3
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_3.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 3 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Symbol"
  end
  -- Is New Order Bitfield 3 Symbol Sfx flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Symbol Sfx"
  end
  -- Is New Order Bitfield 3 Currency flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Currency"
  end
  -- Is New Order Bitfield 3 Id Source flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Id Source"
  end
  -- Is New Order Bitfield 3 Security Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Security Id"
  end
  -- Is New Order Bitfield 3 Security Exchange flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Security Exchange"
  end
  -- Is New Order Bitfield 3 Capacity flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Capacity"
  end
  -- Is New Order Bitfield 3 Routing Inst flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Routing Inst"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 3
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_3.bits = function(range, value, packet, parent)

  -- New Order Bitfield 3 Symbol: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_symbol, range, value)

  -- New Order Bitfield 3 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_symbol_sfx, range, value)

  -- New Order Bitfield 3 Currency: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_currency, range, value)

  -- New Order Bitfield 3 Id Source: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_id_source, range, value)

  -- New Order Bitfield 3 Security Id: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_security_id, range, value)

  -- New Order Bitfield 3 Security Exchange: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_security_exchange, range, value)

  -- New Order Bitfield 3 Capacity: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_capacity, range, value)

  -- New Order Bitfield 3 Routing Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3_routing_inst, range, value)
end

-- Dissect: New Order Bitfield 3
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_3, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_2 = {}

-- Size: New Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_2.size = 1

-- Display: New Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 2 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Clearing Firm"
  end
  -- Is New Order Bitfield 2 Clearing Account flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Clearing Account"
  end
  -- Is New Order Bitfield 2 Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Price"
  end
  -- Is New Order Bitfield 2 Exec Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Exec Inst"
  end
  -- Is New Order Bitfield 2 Ord Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Ord Type"
  end
  -- Is New Order Bitfield 2 Time In Force flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Time In Force"
  end
  -- Is New Order Bitfield 2 Min Qty flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Min Qty"
  end
  -- Is New Order Bitfield 2 Max Floor flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Max Floor"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_2.bits = function(range, value, packet, parent)

  -- New Order Bitfield 2 Clearing Firm: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_clearing_firm, range, value)

  -- New Order Bitfield 2 Clearing Account: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_clearing_account, range, value)

  -- New Order Bitfield 2 Price: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_price, range, value)

  -- New Order Bitfield 2 Exec Inst: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_exec_inst, range, value)

  -- New Order Bitfield 2 Ord Type: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_ord_type, range, value)

  -- New Order Bitfield 2 Time In Force: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_time_in_force, range, value)

  -- New Order Bitfield 2 Min Qty: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_min_qty, range, value)

  -- New Order Bitfield 2 Max Floor: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2_max_floor, range, value)
end

-- Dissect: New Order Bitfield 2
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_2, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_1 = {}

-- Size: New Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_1.size = 1

-- Display: New Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 1 New Order Input Bitfields flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 New Order Input Bitfields"
  end
  -- Is New Order Bitfield 1 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Reserved 2"
  end
  -- Is New Order Bitfield 1 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Reserved 4"
  end
  -- Is New Order Bitfield 1 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Reserved 8"
  end
  -- Is New Order Bitfield 1 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Reserved 16"
  end
  -- Is New Order Bitfield 1 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Reserved 32"
  end
  -- Is New Order Bitfield 1 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Reserved 64"
  end
  -- Is New Order Bitfield 1 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_1.bits = function(range, value, packet, parent)

  -- New Order Bitfield 1 New Order Input Bitfields: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_new_order_input_bitfields, range, value)

  -- New Order Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_2, range, value)

  -- New Order Bitfield 1 Reserved 4: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_4, range, value)

  -- New Order Bitfield 1 Reserved 8: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_8, range, value)

  -- New Order Bitfield 1 Reserved 16: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_16, range, value)

  -- New Order Bitfield 1 Reserved 32: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_32, range, value)

  -- New Order Bitfield 1 Reserved 64: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_64, range, value)

  -- New Order Bitfield 1 Reserved 128: 1 Bit
  parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 1
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_bitfield_1, range, display)

  if show.structs then
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_message = {}

-- Read runtime size of: New Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: New Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_message.fields = function(buffer, offset, packet, parent, size_of_new_order_message)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgaequities_binaryorderentry_boe_v2_4_57.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_qty.dissect(buffer, index, packet, parent)

  -- Number Of New Order Bitfields: Binary
  index, number_of_new_order_bitfields = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_new_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: New Order Bitfield 1
  local new_order_bitfield_1 = nil

  local new_order_bitfield_1_exists = number_of_new_order_bitfields >= 1

  if new_order_bitfield_1_exists then

    -- New Order Bitfield 1: Struct of 8 fields
    index, new_order_bitfield_1 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 2
  local new_order_bitfield_2 = nil

  local new_order_bitfield_2_exists = number_of_new_order_bitfields >= 2

  if new_order_bitfield_2_exists then

    -- New Order Bitfield 2: Struct of 8 fields
    index, new_order_bitfield_2 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 3
  local new_order_bitfield_3 = nil

  local new_order_bitfield_3_exists = number_of_new_order_bitfields >= 3

  if new_order_bitfield_3_exists then

    -- New Order Bitfield 3: Struct of 8 fields
    index, new_order_bitfield_3 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 4
  local new_order_bitfield_4 = nil

  local new_order_bitfield_4_exists = number_of_new_order_bitfields >= 4

  if new_order_bitfield_4_exists then

    -- New Order Bitfield 4: Struct of 8 fields
    index, new_order_bitfield_4 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 5
  local new_order_bitfield_5 = nil

  local new_order_bitfield_5_exists = number_of_new_order_bitfields >= 5

  if new_order_bitfield_5_exists then

    -- New Order Bitfield 5: Struct of 8 fields
    index, new_order_bitfield_5 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 6
  local new_order_bitfield_6 = nil

  local new_order_bitfield_6_exists = number_of_new_order_bitfields >= 6

  if new_order_bitfield_6_exists then

    -- New Order Bitfield 6: Struct of 8 fields
    index, new_order_bitfield_6 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 7
  local new_order_bitfield_7 = nil

  local new_order_bitfield_7_exists = number_of_new_order_bitfields >= 7

  if new_order_bitfield_7_exists then

    -- New Order Bitfield 7: Struct of 8 fields
    index, new_order_bitfield_7 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 8
  local new_order_bitfield_8 = nil

  local new_order_bitfield_8_exists = number_of_new_order_bitfields >= 8

  if new_order_bitfield_8_exists then

    -- New Order Bitfield 8: Struct of 8 fields
    index, new_order_bitfield_8 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 9
  local new_order_bitfield_9 = nil

  local new_order_bitfield_9_exists = number_of_new_order_bitfields >= 9

  if new_order_bitfield_9_exists then

    -- New Order Bitfield 9: Struct of 8 fields
    index, new_order_bitfield_9 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 10
  local new_order_bitfield_10 = nil

  local new_order_bitfield_10_exists = number_of_new_order_bitfields >= 10

  if new_order_bitfield_10_exists then

    -- New Order Bitfield 10: Struct of 8 fields
    index, new_order_bitfield_10 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 11
  local new_order_bitfield_11 = nil

  local new_order_bitfield_11_exists = number_of_new_order_bitfields >= 11

  if new_order_bitfield_11_exists then

    -- New Order Bitfield 11: Struct of 8 fields
    index, new_order_bitfield_11 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 12
  local new_order_bitfield_12 = nil

  local new_order_bitfield_12_exists = number_of_new_order_bitfields >= 12

  if new_order_bitfield_12_exists then

    -- New Order Bitfield 12: Struct of 8 fields
    index, new_order_bitfield_12 = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x02) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_edgaequities_binaryorderentry_boe_v2_4_57.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x04) > 0

  if price_exists then
    index, price = cboe_edgaequities_binaryorderentry_boe_v2_4_57.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_edgaequities_binaryorderentry_boe_v2_4_57.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_edgaequities_binaryorderentry_boe_v2_4_57.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x80) > 0

  if max_floor_exists then
    index, max_floor = cboe_edgaequities_binaryorderentry_boe_v2_4_57.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_edgaequities_binaryorderentry_boe_v2_4_57.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_edgaequities_binaryorderentry_boe_v2_4_57.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x80) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x01) > 0

  if account_exists then
    index, account = cboe_edgaequities_binaryorderentry_boe_v2_4_57.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x02) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Discretion Amount
  local discretion_amount = nil

  local discretion_amount_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x08) > 0

  if discretion_amount_exists then
    index, discretion_amount = cboe_edgaequities_binaryorderentry_boe_v2_4_57.discretion_amount.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x10) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_edgaequities_binaryorderentry_boe_v2_4_57.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x20) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_edgaequities_binaryorderentry_boe_v2_4_57.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Reqd
  local locate_reqd = nil

  local locate_reqd_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x40) > 0

  if locate_reqd_exists then
    index, locate_reqd = cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_reqd.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_edgaequities_binaryorderentry_boe_v2_4_57.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Risk Reset
  local risk_reset = nil

  local risk_reset_exists = number_of_new_order_bitfields >= 5 and bit.band(new_order_bitfield_5, 0x08) > 0

  if risk_reset_exists then
    index, risk_reset = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_reset.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Range
  local display_range = nil

  local display_range_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x01) > 0

  if display_range_exists then
    index, display_range = cboe_edgaequities_binaryorderentry_boe_v2_4_57.display_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x02) > 0

  if stop_px_exists then
    index, stop_px = cboe_edgaequities_binaryorderentry_boe_v2_4_57.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x04) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_edgaequities_binaryorderentry_boe_v2_4_57.rout_strategy.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Route Delivery Method
  local route_delivery_method = nil

  local route_delivery_method_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x08) > 0

  if route_delivery_method_exists then
    index, route_delivery_method = cboe_edgaequities_binaryorderentry_boe_v2_4_57.route_delivery_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x10) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ex_destination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x20) > 0

  if echo_text_exists then
    index, echo_text = cboe_edgaequities_binaryorderentry_boe_v2_4_57.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Risk Group Id
  local risk_group_id = nil

  local risk_group_id_exists = number_of_new_order_bitfields >= 7 and bit.band(new_order_bitfield_7, 0x02) > 0

  if risk_group_id_exists then
    index, risk_group_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.risk_group_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_new_order_bitfields >= 10 and bit.band(new_order_bitfield_10, 0x02) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_edgaequities_binaryorderentry_boe_v2_4_57.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_new_order_bitfields >= 10 and bit.band(new_order_bitfield_10, 0x08) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_edgaequities_binaryorderentry_boe_v2_4_57.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cross Trade Flag
  local cross_trade_flag = nil

  local cross_trade_flag_exists = number_of_new_order_bitfields >= 11 and bit.band(new_order_bitfield_11, 0x40) > 0

  if cross_trade_flag_exists then
    index, cross_trade_flag = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cross_trade_flag.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = number_of_new_order_bitfields >= 12 and bit.band(new_order_bitfield_12, 0x02) > 0

  if locate_broker_exists then
    index, locate_broker = cboe_edgaequities_binaryorderentry_boe_v2_4_57.locate_broker.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cmc Sessions
  local cmc_sessions = nil

  local cmc_sessions_exists = number_of_new_order_bitfields >= 12 and bit.band(new_order_bitfield_12, 0x04) > 0

  if cmc_sessions_exists then
    index, cmc_sessions = cboe_edgaequities_binaryorderentry_boe_v2_4_57.cmc_sessions.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Step Up Amount
  local step_up_amount = nil

  local step_up_amount_exists = number_of_new_order_bitfields >= 12 and bit.band(new_order_bitfield_12, 0x08) > 0

  if step_up_amount_exists then
    index, step_up_amount = cboe_edgaequities_binaryorderentry_boe_v2_4_57.step_up_amount.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_message.dissect = function(buffer, offset, packet, parent, size_of_new_order_message)
  local size_of_new_order_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_message.size(buffer, offset)
  local index = offset + size_of_new_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.new_order_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_message.fields(buffer, offset, packet, parent, size_of_new_order_message)
    parent:set_len(size_of_new_order_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_message.fields(buffer, offset, packet, parent, size_of_new_order_message)

    return index
  end
end

-- Units
cboe_edgaequities_binaryorderentry_boe_v2_4_57.units = {}

-- Size: Units
cboe_edgaequities_binaryorderentry_boe_v2_4_57.units.size =
  cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_number.size + 
  cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_sequence.size

-- Display: Units
cboe_edgaequities_binaryorderentry_boe_v2_4_57.units.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Units
cboe_edgaequities_binaryorderentry_boe_v2_4_57.units.fields = function(buffer, offset, packet, parent, units_index)
  local index = offset

  -- Implicit Units Index
  if units_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.units_index, units_index)
    iteration:set_generated()
  end

  -- Unit Number: Binary
  index, unit_number = cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_number.dissect(buffer, index, packet, parent)

  -- Unit Sequence: Binary
  index, unit_sequence = cboe_edgaequities_binaryorderentry_boe_v2_4_57.unit_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Units
cboe_edgaequities_binaryorderentry_boe_v2_4_57.units.dissect = function(buffer, offset, packet, parent, units_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.units, buffer(offset, 0))
    local index = cboe_edgaequities_binaryorderentry_boe_v2_4_57.units.fields(buffer, offset, packet, parent, units_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.units.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.units.fields(buffer, offset, packet, parent, units_index)
  end
end

-- Logout Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_message = {}

-- Read runtime size of: Logout Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Logout Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_message.fields = function(buffer, offset, packet, parent, size_of_logout_message)
  local index = offset

  -- Logout Reason: Alphanumeric
  index, logout_reason = cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: Text
  index, logout_reason_text = cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_reason_text.dissect(buffer, index, packet, parent)

  -- Last Received Sequence Number: Binary
  index, last_received_sequence_number = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_received_sequence_number.dissect(buffer, index, packet, parent)

  -- Number Of Units: Binary
  index, number_of_units = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Units
  for units_index = 1, number_of_units do
    index, units = cboe_edgaequities_binaryorderentry_boe_v2_4_57.units.dissect(buffer, index, packet, parent, units_index)
  end

  return index
end

-- Dissect: Logout Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_message.dissect = function(buffer, offset, packet, parent, size_of_logout_message)
  local size_of_logout_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_message.size(buffer, offset)
  local index = offset + size_of_logout_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.logout_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_message.fields(buffer, offset, packet, parent, size_of_logout_message)
    parent:set_len(size_of_logout_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_message.fields(buffer, offset, packet, parent, size_of_logout_message)

    return index
  end
end

-- Param Group
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group = {}

-- Size: Param Group
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group.size =
  cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_length.size + 
  cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_type.size

-- Display: Param Group
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Param Group
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group.fields = function(buffer, offset, packet, parent, param_group_index)
  local index = offset

  -- Implicit Param Group Index
  if param_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.param_group_index, param_group_index)
    iteration:set_generated()
  end

  -- Param Group Length: Binary
  index, param_group_length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_length.dissect(buffer, index, packet, parent)

  -- Param Group Type: Binary
  index, param_group_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Param Group
cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group.dissect = function(buffer, offset, packet, parent, param_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.param_group, buffer(offset, 0))
    local index = cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group.fields(buffer, offset, packet, parent, param_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group.fields(buffer, offset, packet, parent, param_group_index)
  end
end

-- Login Response Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_message = {}

-- Read runtime size of: Login Response Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Login Response Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_message.fields = function(buffer, offset, packet, parent, size_of_login_response_message)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: Text
  index, login_response_text = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_text.dissect(buffer, index, packet, parent)

  -- No Unspecified Unit Replay: Binary
  index, no_unspecified_unit_replay = cboe_edgaequities_binaryorderentry_boe_v2_4_57.no_unspecified_unit_replay.dissect(buffer, index, packet, parent)

  -- Last Received Sequence Number: Binary
  index, last_received_sequence_number = cboe_edgaequities_binaryorderentry_boe_v2_4_57.last_received_sequence_number.dissect(buffer, index, packet, parent)

  -- Number Of Units: Binary
  index, number_of_units = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Units
  for units_index = 1, number_of_units do
    index, units = cboe_edgaequities_binaryorderentry_boe_v2_4_57.units.dissect(buffer, index, packet, parent, units_index)
  end

  -- Number Of Param Groups: Binary
  index, number_of_param_groups = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_param_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Param Group
  for param_group_index = 1, number_of_param_groups do
    index, param_group = cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group.dissect(buffer, index, packet, parent, param_group_index)
  end

  return index
end

-- Dissect: Login Response Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_message.dissect = function(buffer, offset, packet, parent, size_of_login_response_message)
  local size_of_login_response_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_message.size(buffer, offset)
  local index = offset + size_of_login_response_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.login_response_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_message.fields(buffer, offset, packet, parent, size_of_login_response_message)
    parent:set_len(size_of_login_response_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_message.fields(buffer, offset, packet, parent, size_of_login_response_message)

    return index
  end
end

-- Login Request Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_request_message = {}

-- Read runtime size of: Login Request Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Login Request Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_request_message.fields = function(buffer, offset, packet, parent, size_of_login_request_message)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_edgaequities_binaryorderentry_boe_v2_4_57.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_edgaequities_binaryorderentry_boe_v2_4_57.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_edgaequities_binaryorderentry_boe_v2_4_57.password.dissect(buffer, index, packet, parent)

  -- Number Of Param Groups: Binary
  index, number_of_param_groups = cboe_edgaequities_binaryorderentry_boe_v2_4_57.number_of_param_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Param Group
  for param_group_index = 1, number_of_param_groups do
    index, param_group = cboe_edgaequities_binaryorderentry_boe_v2_4_57.param_group.dissect(buffer, index, packet, parent, param_group_index)
  end

  return index
end

-- Dissect: Login Request Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_request_message.dissect = function(buffer, offset, packet, parent, size_of_login_request_message)
  local size_of_login_request_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_request_message.size(buffer, offset)
  local index = offset + size_of_login_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.login_request_message, buffer(offset, 0))
    local current = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_request_message.fields(buffer, offset, packet, parent, size_of_login_request_message)
    parent:set_len(size_of_login_request_message)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_request_message.fields(buffer, offset, packet, parent, size_of_login_request_message)

    return index
  end
end

-- Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message = {}

-- Dissect: Message
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 0x37 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if message_type == 0x02 then
    return offset
  end
  -- Dissect Client Heartbeat Message
  if message_type == 0x03 then
    return offset
  end
  -- Dissect Login Response Message
  if message_type == 0x24 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == 0x08 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Message
  if message_type == 0x09 then
    return offset
  end
  -- Dissect Replay Complete Message
  if message_type == 0x13 then
    return offset
  end
  -- Dissect New Order Message
  if message_type == 0x38 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if message_type == 0x39 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 0x3A then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Order Message
  if message_type == 0x47 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgment Message
  if message_type == 0x25 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if message_type == 0x26 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == 0x27 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if message_type == 0x28 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Modify Rejected Message
  if message_type == 0x29 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.user_modify_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if message_type == 0x2A then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Message
  if message_type == 0x2B then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 0x2C then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Or Correct Message
  if message_type == 0x2D then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.trade_cancel_or_correct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Acknowledgment Message
  if message_type == 0x36 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.mass_cancel_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected Message
  if message_type == 0x48 then
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.purge_rejected_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_header = {}

-- Size: Message Header
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_header.size =
  cboe_edgaequities_binaryorderentry_boe_v2_4_57.start_of_message.size + 
  cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_length.size + 
  cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_type.size + 
  cboe_edgaequities_binaryorderentry_boe_v2_4_57.matching_unit.size + 
  cboe_edgaequities_binaryorderentry_boe_v2_4_57.sequence_number.size

-- Display: Message Header
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_edgaequities_binaryorderentry_boe_v2_4_57.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: Binary
  index, message_type = cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: Binary
  index, matching_unit = cboe_edgaequities_binaryorderentry_boe_v2_4_57.matching_unit.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_edgaequities_binaryorderentry_boe_v2_4_57.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.fields.message_header, buffer(offset, 0))
    local index = cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_edgaequities_binaryorderentry_boe_v2_4_57.packet = {}

-- Verify required size of Tcp packet
cboe_edgaequities_binaryorderentry_boe_v2_4_57.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_header.size
end

-- Dissect Packet
cboe_edgaequities_binaryorderentry_boe_v2_4_57.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 5 fields
  index, message_header = cboe_edgaequities_binaryorderentry_boe_v2_4_57.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 6, 1):le_uint()

  -- Message: Runtime Type with 22 branches
  index = cboe_edgaequities_binaryorderentry_boe_v2_4_57.message.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.init()
end

-- Dissector for Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57
function omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57, buffer(), omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.description, "("..buffer:len().." Bytes)")
  return cboe_edgaequities_binaryorderentry_boe_v2_4_57.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57 (Tcp)
local function omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgaequities_binaryorderentry_boe_v2_4_57.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57
  omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57
omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57:register_heuristic("tcp", omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57_tcp_heuristic)

-- Register Cboe EdgaEquities BinaryOrderEntry Boe 2.4.57 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_edgaequities_binaryorderentry_boe_v2_4_57)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.4.57
--   Date: Tuesday, September 8, 2026
--   Specification: Cboe Titanium U.S. Equities BOE Specification.pdf
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
