-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe NeoEquities OrderEntry Boe3 1.0.19 Protocol
local omi_cboe_neoequities_orderentry_boe3_v1_0_19 = Proto("Omi.Cboe.NeoEquities.OrderEntry.Boe3.v1.0.19", "Cboe NeoEquities OrderEntry Boe3 1.0.19")

-- Protocol table
local cboe_neoequities_orderentry_boe3_v1_0_19 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe NeoEquities OrderEntry Boe3 1.0.19 Fields
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.account = ProtoField.new("Account", "cboe.neoequities.orderentry.boe3.v1.0.19.account", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.anonymous = ProtoField.new("Anonymous", "cboe.neoequities.orderentry.boe3.v1.0.19.anonymous", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.neoequities.orderentry.boe3.v1.0.19.baseliquidityindicator", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.basket_trade = ProtoField.new("Basket Trade", "cboe.neoequities.orderentry.boe3.v1.0.19.baskettrade", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.broker_id = ProtoField.new("Broker Id", "cboe.neoequities.orderentry.boe3.v1.0.19.brokerid", ftypes.UINT16)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.broker_lei = ProtoField.new("Broker Lei", "cboe.neoequities.orderentry.boe3.v1.0.19.brokerlei", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_account = ProtoField.new("Buy Account", "cboe.neoequities.orderentry.boe3.v1.0.19.buyaccount", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_broker_lei = ProtoField.new("Buy Broker Lei", "cboe.neoequities.orderentry.boe3.v1.0.19.buybrokerlei", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_customer_lei = ProtoField.new("Buy Customer Lei", "cboe.neoequities.orderentry.boe3.v1.0.19.buycustomerlei", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_jitney = ProtoField.new("Buy Jitney", "cboe.neoequities.orderentry.boe3.v1.0.19.buyjitney", ftypes.UINT16)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_lei_algorithm_id = ProtoField.new("Buy Lei Algorithm Id", "cboe.neoequities.orderentry.boe3.v1.0.19.buyleialgorithmid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_lei_customer_account = ProtoField.new("Buy Lei Customer Account", "cboe.neoequities.orderentry.boe3.v1.0.19.buyleicustomeraccount", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_lei_order_origin = ProtoField.new("Buy Lei Order Origin", "cboe.neoequities.orderentry.boe3.v1.0.19.buyleiorderorigin", ftypes.UINT8)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_lei_routing_arrangemeant_indicator = ProtoField.new("Buy Lei Routing Arrangemeant Indicator", "cboe.neoequities.orderentry.boe3.v1.0.19.buyleiroutingarrangemeantindicator", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_lei_routing_arrangement_indicator = ProtoField.new("Buy Lei Routing Arrangement Indicator", "cboe.neoequities.orderentry.boe3.v1.0.19.buyleiroutingarrangementindicator", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_umir_account_type = ProtoField.new("Buy Umir Account Type", "cboe.neoequities.orderentry.boe3.v1.0.19.buyumiraccounttype", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_umir_regulation_id = ProtoField.new("Buy Umir Regulation Id", "cboe.neoequities.orderentry.boe3.v1.0.19.buyumirregulationid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.bypass = ProtoField.new("Bypass", "cboe.neoequities.orderentry.boe3.v1.0.19.bypass", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.neoequities.orderentry.boe3.v1.0.19.cancelorigonreject", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.neoequities.orderentry.boe3.v1.0.19.cancelreason", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.neoequities.orderentry.boe3.v1.0.19.cancelrejectreason", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.neoequities.orderentry.boe3.v1.0.19.clordid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.client_sequence = ProtoField.new("Client Sequence", "cboe.neoequities.orderentry.boe3.v1.0.19.clientsequence", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.contra_broker = ProtoField.new("Contra Broker", "cboe.neoequities.orderentry.boe3.v1.0.19.contrabroker", ftypes.UINT16)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.neoequities.orderentry.boe3.v1.0.19.correctedprice", ftypes.DOUBLE)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.corrected_size = ProtoField.new("Corrected Size", "cboe.neoequities.orderentry.boe3.v1.0.19.correctedsize", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cross_cl_ord_id = ProtoField.new("Cross Cl Ord Id", "cboe.neoequities.orderentry.boe3.v1.0.19.crossclordid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cross_side = ProtoField.new("Cross Side", "cboe.neoequities.orderentry.boe3.v1.0.19.crossside", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cross_type = ProtoField.new("Cross Type", "cboe.neoequities.orderentry.boe3.v1.0.19.crosstype", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cum_qty = ProtoField.new("Cum Qty", "cboe.neoequities.orderentry.boe3.v1.0.19.cumqty", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.customer_lei = ProtoField.new("Customer Lei", "cboe.neoequities.orderentry.boe3.v1.0.19.customerlei", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.display_indicator = ProtoField.new("Display Indicator", "cboe.neoequities.orderentry.boe3.v1.0.19.displayindicator", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.ex_destination = ProtoField.new("Ex Destination", "cboe.neoequities.orderentry.boe3.v1.0.19.exdestination", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exchange_message_type = ProtoField.new("Message Type", "cboe.neoequities.orderentry.boe3.v1.0.19.exchangemessagetype", ftypes.UINT16)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exec_id = ProtoField.new("Exec Id", "cboe.neoequities.orderentry.boe3.v1.0.19.execid", ftypes.UINT64)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exec_inst = ProtoField.new("Exec Inst", "cboe.neoequities.orderentry.boe3.v1.0.19.execinst", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.neoequities.orderentry.boe3.v1.0.19.execrefid", ftypes.UINT64)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.expire_date = ProtoField.new("Expire Date", "cboe.neoequities.orderentry.boe3.v1.0.19.expiredate", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.expire_time = ProtoField.new("Expire Time", "cboe.neoequities.orderentry.boe3.v1.0.19.expiretime", ftypes.UINT64)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.fee_code = ProtoField.new("Fee Code", "cboe.neoequities.orderentry.boe3.v1.0.19.feecode", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.firm_message_type = ProtoField.new("Message Type", "cboe.neoequities.orderentry.boe3.v1.0.19.firmmessagetype", ftypes.UINT16)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.fut_settl_date = ProtoField.new("Fut Settl Date", "cboe.neoequities.orderentry.boe3.v1.0.19.futsettldate", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.handling_inst = ProtoField.new("Handling Inst", "cboe.neoequities.orderentry.boe3.v1.0.19.handlinginst", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.is_self_trade = ProtoField.new("Is Self Trade", "cboe.neoequities.orderentry.boe3.v1.0.19.isselftrade", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.jitney = ProtoField.new("Jitney", "cboe.neoequities.orderentry.boe3.v1.0.19.jitney", ftypes.UINT16)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.last_px = ProtoField.new("Last Px", "cboe.neoequities.orderentry.boe3.v1.0.19.lastpx", ftypes.DOUBLE)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.last_shares = ProtoField.new("Last Shares", "cboe.neoequities.orderentry.boe3.v1.0.19.lastshares", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.neoequities.orderentry.boe3.v1.0.19.leavesqty", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.lei_algorithm_id = ProtoField.new("Lei Algorithm Id", "cboe.neoequities.orderentry.boe3.v1.0.19.leialgorithmid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.lei_customer_account = ProtoField.new("Lei Customer Account", "cboe.neoequities.orderentry.boe3.v1.0.19.leicustomeraccount", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.lei_order_origin = ProtoField.new("Lei Order Origin", "cboe.neoequities.orderentry.boe3.v1.0.19.leiorderorigin", ftypes.UINT8)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.lei_routing_arrangement_indicator = ProtoField.new("Lei Routing Arrangement Indicator", "cboe.neoequities.orderentry.boe3.v1.0.19.leiroutingarrangementindicator", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.neoequities.orderentry.boe3.v1.0.19.loginresponsestatus", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.neoequities.orderentry.boe3.v1.0.19.loginresponsetext", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.neoequities.orderentry.boe3.v1.0.19.logoutreason", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.neoequities.orderentry.boe3.v1.0.19.logoutreasontext", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.matching_priority = ProtoField.new("Matching Priority", "cboe.neoequities.orderentry.boe3.v1.0.19.matchingpriority", ftypes.UINT8)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.matching_state_participation = ProtoField.new("Matching State Participation", "cboe.neoequities.orderentry.boe3.v1.0.19.matchingstateparticipation", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.neoequities.orderentry.boe3.v1.0.19.matchingunit", ftypes.UINT8)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.max_floor = ProtoField.new("Max Floor", "cboe.neoequities.orderentry.boe3.v1.0.19.maxfloor", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.message_length = ProtoField.new("Message Length", "cboe.neoequities.orderentry.boe3.v1.0.19.messagelength", ftypes.UINT16)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.neoequities.orderentry.boe3.v1.0.19.modifyrejectreason", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.ncib = ProtoField.new("Ncib", "cboe.neoequities.orderentry.boe3.v1.0.19.ncib", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.no_trade_feat = ProtoField.new("No Trade Feat", "cboe.neoequities.orderentry.boe3.v1.0.19.notradefeat", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.no_trade_key = ProtoField.new("No Trade Key", "cboe.neoequities.orderentry.boe3.v1.0.19.notradekey", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.non_resident = ProtoField.new("Non Resident", "cboe.neoequities.orderentry.boe3.v1.0.19.nonresident", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.neoequities.orderentry.boe3.v1.0.19.numberofunits", ftypes.UINT8)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.ord_type = ProtoField.new("Ord Type", "cboe.neoequities.orderentry.boe3.v1.0.19.ordtype", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_id = ProtoField.new("Order Id", "cboe.neoequities.orderentry.boe3.v1.0.19.orderid", ftypes.UINT64)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_qty = ProtoField.new("Order Qty", "cboe.neoequities.orderentry.boe3.v1.0.19.orderqty", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.neoequities.orderentry.boe3.v1.0.19.orderrejectreason", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.neoequities.orderentry.boe3.v1.0.19.origclordid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.password = ProtoField.new("Password", "cboe.neoequities.orderentry.boe3.v1.0.19.password", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.peg_difference = ProtoField.new("Peg Difference", "cboe.neoequities.orderentry.boe3.v1.0.19.pegdifference", ftypes.DOUBLE)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.price = ProtoField.new("Price", "cboe.neoequities.orderentry.boe3.v1.0.19.price", ftypes.DOUBLE)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.principal_trade = ProtoField.new("Principal Trade", "cboe.neoequities.orderentry.boe3.v1.0.19.principaltrade", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.program_trade = ProtoField.new("Program Trade", "cboe.neoequities.orderentry.boe3.v1.0.19.programtrade", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.replay_unspecified_unit = ProtoField.new("Replay Unspecified Unit", "cboe.neoequities.orderentry.boe3.v1.0.19.replayunspecifiedunit", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.reserved = ProtoField.new("Reserved", "cboe.neoequities.orderentry.boe3.v1.0.19.reserved", ftypes.BYTES)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.reserved_field = ProtoField.new("Reserved Field", "cboe.neoequities.orderentry.boe3.v1.0.19.reservedfield", ftypes.UINT8)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.neoequities.orderentry.boe3.v1.0.19.restatementreason", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.routing_inst = ProtoField.new("Routing Inst", "cboe.neoequities.orderentry.boe3.v1.0.19.routinginst", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.neoequities.orderentry.boe3.v1.0.19.secondaryorderid", ftypes.UINT64)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_account = ProtoField.new("Sell Account", "cboe.neoequities.orderentry.boe3.v1.0.19.sellaccount", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_broker_lei = ProtoField.new("Sell Broker Lei", "cboe.neoequities.orderentry.boe3.v1.0.19.sellbrokerlei", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_customer_lei = ProtoField.new("Sell Customer Lei", "cboe.neoequities.orderentry.boe3.v1.0.19.sellcustomerlei", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_jitney = ProtoField.new("Sell Jitney", "cboe.neoequities.orderentry.boe3.v1.0.19.selljitney", ftypes.UINT16)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_lei_algorithm_id = ProtoField.new("Sell Lei Algorithm Id", "cboe.neoequities.orderentry.boe3.v1.0.19.sellleialgorithmid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_lei_customer_account = ProtoField.new("Sell Lei Customer Account", "cboe.neoequities.orderentry.boe3.v1.0.19.sellleicustomeraccount", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_lei_order_origin = ProtoField.new("Sell Lei Order Origin", "cboe.neoequities.orderentry.boe3.v1.0.19.sellleiorderorigin", ftypes.UINT8)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_lei_routing_arrangement_indicator = ProtoField.new("Sell Lei Routing Arrangement Indicator", "cboe.neoequities.orderentry.boe3.v1.0.19.sellleiroutingarrangementindicator", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_umir_account_type = ProtoField.new("Sell Umir Account Type", "cboe.neoequities.orderentry.boe3.v1.0.19.sellumiraccounttype", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_umir_regulation_id = ProtoField.new("Sell Umir Regulation Id", "cboe.neoequities.orderentry.boe3.v1.0.19.sellumirregulationid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.neoequities.orderentry.boe3.v1.0.19.sequencenumber", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.session_id = ProtoField.new("Session Id", "cboe.neoequities.orderentry.boe3.v1.0.19.sessionid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.neoequities.orderentry.boe3.v1.0.19.sessionsubid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.settlement_type = ProtoField.new("Settlement Type", "cboe.neoequities.orderentry.boe3.v1.0.19.settlementtype", ftypes.UINT8)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.short_marking_exempt = ProtoField.new("Short Marking Exempt", "cboe.neoequities.orderentry.boe3.v1.0.19.shortmarkingexempt", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.side = ProtoField.new("Side", "cboe.neoequities.orderentry.boe3.v1.0.19.side", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.neoequities.orderentry.boe3.v1.0.19.startofmessage", ftypes.UINT16)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.stop_px = ProtoField.new("Stop Px", "cboe.neoequities.orderentry.boe3.v1.0.19.stoppx", ftypes.DOUBLE)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.symbol = ProtoField.new("Symbol", "cboe.neoequities.orderentry.boe3.v1.0.19.symbol", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.text = ProtoField.new("Text", "cboe.neoequities.orderentry.boe3.v1.0.19.text", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.time_in_force = ProtoField.new("Time In Force", "cboe.neoequities.orderentry.boe3.v1.0.19.timeinforce", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.trade_date = ProtoField.new("Trade Date", "cboe.neoequities.orderentry.boe3.v1.0.19.tradedate", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.neoequities.orderentry.boe3.v1.0.19.transactiontime", ftypes.UINT64)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.true_min_qty = ProtoField.new("True Min Qty", "cboe.neoequities.orderentry.boe3.v1.0.19.trueminqty", ftypes.UINT32)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.umir_account_type = ProtoField.new("Umir Account Type", "cboe.neoequities.orderentry.boe3.v1.0.19.umiraccounttype", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.umir_regulation_id = ProtoField.new("Umir Regulation Id", "cboe.neoequities.orderentry.boe3.v1.0.19.umirregulationid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.umir_user_id = ProtoField.new("Umir User Id", "cboe.neoequities.orderentry.boe3.v1.0.19.umiruserid", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.unit_number = ProtoField.new("Unit Number", "cboe.neoequities.orderentry.boe3.v1.0.19.unitnumber", ftypes.UINT8)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.neoequities.orderentry.boe3.v1.0.19.unitsequence", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.wash_trade = ProtoField.new("Wash Trade", "cboe.neoequities.orderentry.boe3.v1.0.19.washtrade", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.working_price = ProtoField.new("Working Price", "cboe.neoequities.orderentry.boe3.v1.0.19.workingprice", ftypes.DOUBLE)

-- Cboe NeoEquities OrderEntry Boe3 1.0.19 Framing
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exchange_message_header = ProtoField.new("Message Header", "cboe.neoequities.orderentry.boe3.v1.0.19.exchangemessageheader", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exchange_packet = ProtoField.new("Packet", "cboe.neoequities.orderentry.boe3.v1.0.19.exchangepacket", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.firm_message_header = ProtoField.new("Message Header", "cboe.neoequities.orderentry.boe3.v1.0.19.firmmessageheader", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.firm_packet = ProtoField.new("Packet", "cboe.neoequities.orderentry.boe3.v1.0.19.firmpacket", ftypes.STRING)

-- Cboe NeoEquities OrderEntry 1.0.19 Application Messages
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cancel_order_ca_equities_v_1 = ProtoField.new("Cancel Order Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.cancelordercaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cancel_rejected_ca_equities_v_1 = ProtoField.new("Cancel Rejected Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.cancelrejectedcaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.carried_restatement_ca_equities_v_1 = ProtoField.new("Carried Restatement Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.carriedrestatementcaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.done_for_day_ca_equities_v_1 = ProtoField.new("Done For Day Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.donefordaycaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.modify_order_ca_equities_v_1 = ProtoField.new("Modify Order Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.modifyordercaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.modify_rejected_ca_equities_v_1 = ProtoField.new("Modify Rejected Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.modifyrejectedcaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.new_order_ca_equities_v_1 = ProtoField.new("New Order Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.newordercaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.new_order_ca_equities_v_2 = ProtoField.new("New Order Ca Equities V 2", "cboe.neoequities.orderentry.boe3.v1.0.19.newordercaequitiesv2", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.new_order_cross_ca_equities_v_1 = ProtoField.new("New Order Cross Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.newordercrosscaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.new_order_cross_ca_equities_v_2 = ProtoField.new("New Order Cross Ca Equities V 2", "cboe.neoequities.orderentry.boe3.v1.0.19.newordercrosscaequitiesv2", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_acknowledgement_ca_equities_v_1 = ProtoField.new("Order Acknowledgement Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.orderacknowledgementcaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_cancelled_ca_equities_v_1 = ProtoField.new("Order Cancelled Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.ordercancelledcaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_execution_ca_equities_v_1 = ProtoField.new("Order Execution Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.orderexecutioncaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_modified_ca_equities_v_1 = ProtoField.new("Order Modified Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.ordermodifiedcaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_rejected_ca_equities_v_1 = ProtoField.new("Order Rejected Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.orderrejectedcaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_restated_ca_equities_v_1 = ProtoField.new("Order Restated Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.orderrestatedcaequitiesv1", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.trade_cancel_correct_ca_equities_v_1 = ProtoField.new("Trade Cancel Correct Ca Equities V 1", "cboe.neoequities.orderentry.boe3.v1.0.19.tradecancelcorrectcaequitiesv1", ftypes.STRING)

-- Cboe NeoEquities OrderEntry 1.0.19 Session Messages
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "cboe.neoequities.orderentry.boe3.v1.0.19.clientheartbeat", ftypes.BYTES)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.neoequities.orderentry.boe3.v1.0.19.loginrequestmessage", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.neoequities.orderentry.boe3.v1.0.19.loginresponsemessage", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.logout_request = ProtoField.new("Logout Request", "cboe.neoequities.orderentry.boe3.v1.0.19.logoutrequest", ftypes.BYTES)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.logout_response_message = ProtoField.new("Logout Response Message", "cboe.neoequities.orderentry.boe3.v1.0.19.logoutresponsemessage", ftypes.STRING)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.replay_complete = ProtoField.new("Replay Complete", "cboe.neoequities.orderentry.boe3.v1.0.19.replaycomplete", ftypes.BYTES)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "cboe.neoequities.orderentry.boe3.v1.0.19.serverheartbeat", ftypes.BYTES)

-- Cboe NeoEquities OrderEntry Boe3 1.0.19 Generated Fields
omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.unit_sequence_index = ProtoField.new("Unit Sequence Index", "cboe.neoequities.orderentry.boe3.v1.0.19.unitsequenceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Cboe NeoEquities OrderEntry Boe3 1.0.19 Formatting
-----------------------------------------------------------------------

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

-- Cboe NeoEquities OrderEntry Boe3 1.0.19 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.session_messages = true
show.indexes = true

-- Register Cboe NeoEquities OrderEntry Boe3 1.0.19 Show Options
omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_application_messages then
    show.application_messages = omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_headers then
    show.headers = omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_headers
  end
  if show.session_messages ~= omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_session_messages then
    show.session_messages = omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_session_messages
  end
  if show.structs ~= omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_structs then
    show.structs = omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_indexes then
    show.indexes = omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cboe NeoEquities OrderEntry Boe3 1.0.19 Fields
-----------------------------------------------------------------------

-- Account
cboe_neoequities_orderentry_boe3_v1_0_19.account = {}

-- Size: Account
cboe_neoequities_orderentry_boe3_v1_0_19.account.size = 16

-- Display: Account
cboe_neoequities_orderentry_boe3_v1_0_19.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
cboe_neoequities_orderentry_boe3_v1_0_19.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.account.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.account, range, value, display)

  return offset + length, value
end

-- Anonymous
cboe_neoequities_orderentry_boe3_v1_0_19.anonymous = {}

-- Size: Anonymous
cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.size = 1

-- Display: Anonymous
cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.display = function(value)
  if value == "Y" then
    return "Anonymous: Yes (Y)"
  end
  if value == "N" then
    return "Anonymous: No (N)"
  end

  return "Anonymous: Unknown("..value..")"
end

-- Dissect: Anonymous
cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.anonymous, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.display = function(value)
  if value == "A" then
    return "Base Liquidity Indicator: Trade Added Liquidity (A)"
  end
  if value == "R" then
    return "Base Liquidity Indicator: Trade Removed Liquidity (R)"
  end
  if value == "C" then
    return "Base Liquidity Indicator: Auction Trade (C)"
  end

  return "Base Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Base Liquidity Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Basket Trade
cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade = {}

-- Size: Basket Trade
cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.size = 4

-- Display: Basket Trade
cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.display = function(value)
  return "Basket Trade: "..value
end

-- Dissect: Basket Trade
cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.basket_trade, range, value, display)

  return offset + length, value
end

-- Broker Id
cboe_neoequities_orderentry_boe3_v1_0_19.broker_id = {}

-- Size: Broker Id
cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size = 2

-- Display: Broker Id
cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei = {}

-- Size: Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.size = 20

-- Display: Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Broker Lei: No Value"
  end

  return "Broker Lei: "..value
end

-- Dissect: Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.broker_lei, range, value, display)

  return offset + length, value
end

-- Buy Account
cboe_neoequities_orderentry_boe3_v1_0_19.buy_account = {}

-- Size: Buy Account
cboe_neoequities_orderentry_boe3_v1_0_19.buy_account.size = 16

-- Display: Buy Account
cboe_neoequities_orderentry_boe3_v1_0_19.buy_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Account: No Value"
  end

  return "Buy Account: "..value
end

-- Dissect: Buy Account
cboe_neoequities_orderentry_boe3_v1_0_19.buy_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_account.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_account, range, value, display)

  return offset + length, value
end

-- Buy Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.buy_broker_lei = {}

-- Size: Buy Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.buy_broker_lei.size = 20

-- Display: Buy Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.buy_broker_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Broker Lei: No Value"
  end

  return "Buy Broker Lei: "..value
end

-- Dissect: Buy Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.buy_broker_lei.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_broker_lei.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_broker_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_broker_lei, range, value, display)

  return offset + length, value
end

-- Buy Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.buy_customer_lei = {}

-- Size: Buy Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.buy_customer_lei.size = 52

-- Display: Buy Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.buy_customer_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Customer Lei: No Value"
  end

  return "Buy Customer Lei: "..value
end

-- Dissect: Buy Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.buy_customer_lei.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_customer_lei.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_customer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_customer_lei, range, value, display)

  return offset + length, value
end

-- Buy Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.buy_jitney = {}

-- Size: Buy Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.buy_jitney.size = 2

-- Display: Buy Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.buy_jitney.display = function(value)
  return "Buy Jitney: "..value
end

-- Dissect: Buy Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.buy_jitney.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_jitney.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_jitney.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_jitney, range, value, display)

  return offset + length, value
end

-- Buy Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_algorithm_id = {}

-- Size: Buy Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_algorithm_id.size = 20

-- Display: Buy Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_algorithm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Lei Algorithm Id: No Value"
  end

  return "Buy Lei Algorithm Id: "..value
end

-- Dissect: Buy Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_algorithm_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_algorithm_id.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_algorithm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_lei_algorithm_id, range, value, display)

  return offset + length, value
end

-- Buy Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_customer_account = {}

-- Size: Buy Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_customer_account.size = 20

-- Display: Buy Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_customer_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Lei Customer Account: No Value"
  end

  return "Buy Lei Customer Account: "..value
end

-- Dissect: Buy Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_customer_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_customer_account.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_customer_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_lei_customer_account, range, value, display)

  return offset + length, value
end

-- Buy Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_order_origin = {}

-- Size: Buy Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_order_origin.size = 1

-- Display: Buy Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_order_origin.display = function(value)
  if value == 5 then
    return "Buy Lei Order Origin: Direct Access Client (5)"
  end
  if value == 6 then
    return "Buy Lei Order Origin: Foreign Dealer Equivalent (6)"
  end
  if value == 7 then
    return "Buy Lei Order Origin: Order Execution Only Service (7)"
  end

  return "Buy Lei Order Origin: Unknown("..value..")"
end

-- Dissect: Buy Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_order_origin.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_order_origin.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_order_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_lei_order_origin, range, value, display)

  return offset + length, value
end

-- Buy Lei Routing Arrangemeant Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangemeant_indicator = {}

-- Size: Buy Lei Routing Arrangemeant Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangemeant_indicator.size = 1

-- Display: Buy Lei Routing Arrangemeant Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangemeant_indicator.display = function(value)
  if value == "N" then
    return "Buy Lei Routing Arrangemeant Indicator: No (N)"
  end
  if value == "Y" then
    return "Buy Lei Routing Arrangemeant Indicator: Yes (Y)"
  end

  return "Buy Lei Routing Arrangemeant Indicator: Unknown("..value..")"
end

-- Dissect: Buy Lei Routing Arrangemeant Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangemeant_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangemeant_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangemeant_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_lei_routing_arrangemeant_indicator, range, value, display)

  return offset + length, value
end

-- Buy Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangement_indicator = {}

-- Size: Buy Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangement_indicator.size = 1

-- Display: Buy Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangement_indicator.display = function(value)
  if value == "N" then
    return "Buy Lei Routing Arrangement Indicator: No (N)"
  end
  if value == "Y" then
    return "Buy Lei Routing Arrangement Indicator: Yes (Y)"
  end

  return "Buy Lei Routing Arrangement Indicator: Unknown("..value..")"
end

-- Dissect: Buy Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangement_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangement_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangement_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_lei_routing_arrangement_indicator, range, value, display)

  return offset + length, value
end

-- Buy Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_account_type = {}

-- Size: Buy Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_account_type.size = 1

-- Display: Buy Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_account_type.display = function(value)
  if value == "I" then
    return "Buy Umir Account Type: Inventory (I)"
  end
  if value == "N" then
    return "Buy Umir Account Type: Non Client (N)"
  end
  if value == "C" then
    return "Buy Umir Account Type: Client (C)"
  end
  if value == "S" then
    return "Buy Umir Account Type: Specialist (S)"
  end
  if value == "F" then
    return "Buy Umir Account Type: Options Firm Account (F)"
  end
  if value == "M" then
    return "Buy Umir Account Type: Options Market Maker (M)"
  end
  if value == "B" then
    return "Buy Umir Account Type: Bundled (B)"
  end
  if value == "X" then
    return "Buy Umir Account Type: Multi Client (X)"
  end

  return "Buy Umir Account Type: Unknown("..value..")"
end

-- Dissect: Buy Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_account_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_account_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_umir_account_type, range, value, display)

  return offset + length, value
end

-- Buy Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_regulation_id = {}

-- Size: Buy Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_regulation_id.size = 1

-- Display: Buy Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_regulation_id.display = function(value)
  if value == "S" then
    return "Buy Umir Regulation Id: Significant Shareholder (S)"
  end
  if value == "I" then
    return "Buy Umir Regulation Id: Insider (I)"
  end

  return "Buy Umir Regulation Id: Unknown("..value..")"
end

-- Dissect: Buy Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_regulation_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_regulation_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_regulation_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.buy_umir_regulation_id, range, value, display)

  return offset + length, value
end

-- Bypass
cboe_neoequities_orderentry_boe3_v1_0_19.bypass = {}

-- Size: Bypass
cboe_neoequities_orderentry_boe3_v1_0_19.bypass.size = 1

-- Display: Bypass
cboe_neoequities_orderentry_boe3_v1_0_19.bypass.display = function(value)
  if value == "Y" then
    return "Bypass: Yes (Y)"
  end
  if value == "N" then
    return "Bypass: No (N)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
cboe_neoequities_orderentry_boe3_v1_0_19.bypass.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.bypass.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.bypass.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.bypass, range, value, display)

  return offset + length, value
end

-- Cancel Orig On Reject
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_orig_on_reject.display = function(value)
  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Replacement Fails (Y)"
  end
  if value == 0 then
    return "Cancel Orig On Reject: Apply Port Default"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_orig_on_reject.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Cancel Reason
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reason = {}

-- Size: Cancel Reason
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reason.display = function(value)
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
  if value == "K" then
    return "Cancel Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Cancel Reason: Order Would Cross Or Lock Nbbo (L)"
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
  if value == "u" then
    return "Cancel Reason: Circuit Breaker Threshold Breach Limit Up Down (u)"
  end
  if value == "y" then
    return "Cancel Reason: Order Received By Cboe Canada During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reason: Session End (z)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reject_reason.display = function(value)
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
  if value == "K" then
    return "Cancel Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Cancel Reject Reason: Order Would Cross Or Lock Nbbo (L)"
  end
  if value == "N" then
    return "Cancel Reject Reason: Ran Out Of Liquidity (N)"
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
  if value == "u" then
    return "Cancel Reject Reason: Circuit Breaker Threshold Breach Limit Up Down (u)"
  end
  if value == "y" then
    return "Cancel Reject Reason: Order Received By Cboe Canada During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reject Reason: Session End (z)"
  end

  return "Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Client Sequence
cboe_neoequities_orderentry_boe3_v1_0_19.client_sequence = {}

-- Size: Client Sequence
cboe_neoequities_orderentry_boe3_v1_0_19.client_sequence.size = 4

-- Display: Client Sequence
cboe_neoequities_orderentry_boe3_v1_0_19.client_sequence.display = function(value)
  return "Client Sequence: "..value
end

-- Dissect: Client Sequence
cboe_neoequities_orderentry_boe3_v1_0_19.client_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.client_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.client_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.client_sequence, range, value, display)

  return offset + length, value
end

-- Contra Broker
cboe_neoequities_orderentry_boe3_v1_0_19.contra_broker = {}

-- Size: Contra Broker
cboe_neoequities_orderentry_boe3_v1_0_19.contra_broker.size = 2

-- Display: Contra Broker
cboe_neoequities_orderentry_boe3_v1_0_19.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
cboe_neoequities_orderentry_boe3_v1_0_19.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.contra_broker.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_neoequities_orderentry_boe3_v1_0_19.corrected_price = {}

-- Size: Corrected Price
cboe_neoequities_orderentry_boe3_v1_0_19.corrected_price.size = 8

-- Display: Corrected Price
cboe_neoequities_orderentry_boe3_v1_0_19.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
cboe_neoequities_orderentry_boe3_v1_0_19.corrected_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Price
cboe_neoequities_orderentry_boe3_v1_0_19.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_neoequities_orderentry_boe3_v1_0_19.corrected_price.translate(raw)
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Size
cboe_neoequities_orderentry_boe3_v1_0_19.corrected_size = {}

-- Size: Corrected Size
cboe_neoequities_orderentry_boe3_v1_0_19.corrected_size.size = 4

-- Display: Corrected Size
cboe_neoequities_orderentry_boe3_v1_0_19.corrected_size.display = function(value)
  return "Corrected Size: "..value
end

-- Dissect: Corrected Size
cboe_neoequities_orderentry_boe3_v1_0_19.corrected_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.corrected_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.corrected_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.corrected_size, range, value, display)

  return offset + length, value
end

-- Cross Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.cross_cl_ord_id = {}

-- Size: Cross Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.cross_cl_ord_id.size = 18

-- Display: Cross Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.cross_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cross Cl Ord Id: No Value"
  end

  return "Cross Cl Ord Id: "..value
end

-- Dissect: Cross Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.cross_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.cross_cl_ord_id.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.cross_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cross_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cross Side
cboe_neoequities_orderentry_boe3_v1_0_19.cross_side = {}

-- Size: Cross Side
cboe_neoequities_orderentry_boe3_v1_0_19.cross_side.size = 1

-- Display: Cross Side
cboe_neoequities_orderentry_boe3_v1_0_19.cross_side.display = function(value)
  if value == "8" then
    return "Cross Side: Cross (8)"
  end
  if value == "9" then
    return "Cross Side: Cross Short (9)"
  end

  return "Cross Side: Unknown("..value..")"
end

-- Dissect: Cross Side
cboe_neoequities_orderentry_boe3_v1_0_19.cross_side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.cross_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.cross_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cross_side, range, value, display)

  return offset + length, value
end

-- Cross Type
cboe_neoequities_orderentry_boe3_v1_0_19.cross_type = {}

-- Size: Cross Type
cboe_neoequities_orderentry_boe3_v1_0_19.cross_type.size = 1

-- Display: Cross Type
cboe_neoequities_orderentry_boe3_v1_0_19.cross_type.display = function(value)
  if value == "B" then
    return "Cross Type: Basis (B)"
  end
  if value == "C" then
    return "Cross Type: Contingent (C)"
  end
  if value == "D" then
    return "Cross Type: Derivative (D)"
  end
  if value == "I" then
    return "Cross Type: Internal (I)"
  end
  if value == "N" then
    return "Cross Type: Net Asset Value Nav (N)"
  end
  if value == "R" then
    return "Cross Type: Regular (R)"
  end
  if value == "V" then
    return "Cross Type: Vwap (V)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
cboe_neoequities_orderentry_boe3_v1_0_19.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Cum Qty
cboe_neoequities_orderentry_boe3_v1_0_19.cum_qty = {}

-- Size: Cum Qty
cboe_neoequities_orderentry_boe3_v1_0_19.cum_qty.size = 4

-- Display: Cum Qty
cboe_neoequities_orderentry_boe3_v1_0_19.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
cboe_neoequities_orderentry_boe3_v1_0_19.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei = {}

-- Size: Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.size = 52

-- Display: Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Customer Lei: No Value"
  end

  return "Customer Lei: "..value
end

-- Dissect: Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.customer_lei, range, value, display)

  return offset + length, value
end

-- Display Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator = {}

-- Size: Display Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.size = 1

-- Display: Display Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.display = function(value)
  if value == "V" then
    return "Display Indicator: Visible (V)"
  end
  if value == "I" then
    return "Display Indicator: Invisible (I)"
  end

  return "Display Indicator: Unknown("..value..")"
end

-- Dissect: Display Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.display_indicator, range, value, display)

  return offset + length, value
end

-- Ex Destination
cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination = {}

-- Size: Ex Destination
cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.size = 1

-- Display: Ex Destination
cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.display = function(value)
  if value == "C" then
    return "Ex Destination: Crossing Facility (C)"
  end
  if value == "D" then
    return "Ex Destination: Neod (D)"
  end
  if value == "L" then
    return "Ex Destination: Neol (L)"
  end
  if value == "N" then
    return "Ex Destination: Neon (N)"
  end
  if value == "S" then
    return "Ex Destination: Sst (S)"
  end

  return "Ex Destination: Unknown("..value..")"
end

-- Dissect: Ex Destination
cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.ex_destination, range, value, display)

  return offset + length, value
end

-- Exchange Message Type
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_type = {}

-- Size: Exchange Message Type
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_type.size = 2

-- Display: Exchange Message Type
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_type.display = function(value)
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
  if value == 6501 then
    return "Message Type: Order Acknowledgement Ca Equities V 1 (6501)"
  end
  if value == 6502 then
    return "Message Type: Order Rejected Ca Equities V 1 (6502)"
  end
  if value == 6503 then
    return "Message Type: Order Modified Ca Equities V 1 (6503)"
  end
  if value == 6504 then
    return "Message Type: Modify Rejected Ca Equities V 1 (6504)"
  end
  if value == 6505 then
    return "Message Type: Order Restated Ca Equities V 1 (6505)"
  end
  if value == 6506 then
    return "Message Type: Order Execution Ca Equities V 1 (6506)"
  end
  if value == 6507 then
    return "Message Type: Order Cancelled Ca Equities V 1 (6507)"
  end
  if value == 6508 then
    return "Message Type: Cancel Rejected Ca Equities V 1 (6508)"
  end
  if value == 6510 then
    return "Message Type: Carried Restatement Ca Equities V 1 (6510)"
  end
  if value == 6511 then
    return "Message Type: Done For Day Ca Equities V 1 (6511)"
  end
  if value == 6512 then
    return "Message Type: Trade Cancel Correct Ca Equities V 1 (6512)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Exchange Message Type
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exchange_message_type, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_neoequities_orderentry_boe3_v1_0_19.exec_id = {}

-- Size: Exec Id
cboe_neoequities_orderentry_boe3_v1_0_19.exec_id.size = 8

-- Display: Exec Id
cboe_neoequities_orderentry_boe3_v1_0_19.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_neoequities_orderentry_boe3_v1_0_19.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst = {}

-- Size: Exec Inst
cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.size = 1

-- Display: Exec Inst
cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.display = function(value)
  if value == "M" then
    return "Exec Inst: Trade At The Pnbbo Midpoint Only (M)"
  end
  if value == "R" then
    return "Exec Inst: Trade At The Nearside Pnbbo (R)"
  end
  if value == "p" then
    return "Exec Inst: Trade At The Less Aggressive Of Pnbbo Midpoint Or Minimum Improvement From The Pnbbo (p)"
  end
  if value == "r" then
    return "Exec Inst: Late Used With Time In Force 7 To Enter A Late Limit On Close Lloc (r)"
  end
  if value == 0 then
    return "Exec Inst: No ExecInst"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
cboe_neoequities_orderentry_boe3_v1_0_19.exec_ref_id = {}

-- Size: Exec Ref Id
cboe_neoequities_orderentry_boe3_v1_0_19.exec_ref_id.size = 8

-- Display: Exec Ref Id
cboe_neoequities_orderentry_boe3_v1_0_19.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_neoequities_orderentry_boe3_v1_0_19.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Expire Date
cboe_neoequities_orderentry_boe3_v1_0_19.expire_date = {}

-- Size: Expire Date
cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.size = 4

-- Display: Expire Date
cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.display = function(value)
  return "Expire Date: "..value
end

-- Dissect: Expire Date
cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_neoequities_orderentry_boe3_v1_0_19.expire_time = {}

-- Size: Expire Time
cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.size = 8

-- Display: Expire Time
cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expire Time
cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Fee Code
cboe_neoequities_orderentry_boe3_v1_0_19.fee_code = {}

-- Size: Fee Code
cboe_neoequities_orderentry_boe3_v1_0_19.fee_code.size = 2

-- Display: Fee Code
cboe_neoequities_orderentry_boe3_v1_0_19.fee_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fee Code: No Value"
  end

  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_neoequities_orderentry_boe3_v1_0_19.fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.fee_code.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Firm Message Type
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_type = {}

-- Size: Firm Message Type
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_type.size = 2

-- Display: Firm Message Type
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_type.display = function(value)
  if value == 1 then
    return "Message Type: Login Request Message (1)"
  end
  if value == 2 then
    return "Message Type: Logout Request Message (2)"
  end
  if value == 3 then
    return "Message Type: Client Heartbeat Message (3)"
  end
  if value == 6001 then
    return "Message Type: New Order Ca Equities V 1 (6001)"
  end
  if value == 6006 then
    return "Message Type: New Order Ca Equities V 2 (6006)"
  end
  if value == 6002 then
    return "Message Type: Modify Order Ca Equities V 1 (6002)"
  end
  if value == 6003 then
    return "Message Type: Cancel Order Ca Equities V 1 (6003)"
  end
  if value == 6004 then
    return "Message Type: New Order Cross Ca Equities V 1 (6004)"
  end
  if value == 6005 then
    return "Message Type: New Order Cross Ca Equities V 2 (6005)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Firm Message Type
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.firm_message_type, range, value, display)

  return offset + length, value
end

-- Fut Settl Date
cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date = {}

-- Size: Fut Settl Date
cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.size = 4

-- Display: Fut Settl Date
cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.display = function(value)
  return "Fut Settl Date: "..value
end

-- Dissect: Fut Settl Date
cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.fut_settl_date, range, value, display)

  return offset + length, value
end

-- Handling Inst
cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst = {}

-- Size: Handling Inst
cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.size = 1

-- Display: Handling Inst
cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.display = function(value)
  if value == "1" then
    return "Handling Inst: Direct Action Order Dao (1)"
  end
  if value == "5" then
    return "Handling Inst: Protect And Cancel (5)"
  end
  if value == "6" then
    return "Handling Inst: Protect And Reprice (6)"
  end

  return "Handling Inst: Unknown("..value..")"
end

-- Dissect: Handling Inst
cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.handling_inst, range, value, display)

  return offset + length, value
end

-- Is Self Trade
cboe_neoequities_orderentry_boe3_v1_0_19.is_self_trade = {}

-- Size: Is Self Trade
cboe_neoequities_orderentry_boe3_v1_0_19.is_self_trade.size = 1

-- Display: Is Self Trade
cboe_neoequities_orderentry_boe3_v1_0_19.is_self_trade.display = function(value)
  if value == "Y" then
    return "Is Self Trade: Broker Executed A Selftrade Using No Trade Feat T Suppress From Tape (Y)"
  end
  if value == "N" then
    return "Is Self Trade: All Other Cases (N)"
  end

  return "Is Self Trade: Unknown("..value..")"
end

-- Dissect: Is Self Trade
cboe_neoequities_orderentry_boe3_v1_0_19.is_self_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.is_self_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.is_self_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.is_self_trade, range, value, display)

  return offset + length, value
end

-- Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.jitney = {}

-- Size: Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.jitney.size = 2

-- Display: Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.jitney.display = function(value)
  return "Jitney: "..value
end

-- Dissect: Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.jitney.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.jitney.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.jitney.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.jitney, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_neoequities_orderentry_boe3_v1_0_19.last_px = {}

-- Size: Last Px
cboe_neoequities_orderentry_boe3_v1_0_19.last_px.size = 8

-- Display: Last Px
cboe_neoequities_orderentry_boe3_v1_0_19.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_neoequities_orderentry_boe3_v1_0_19.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_neoequities_orderentry_boe3_v1_0_19.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_neoequities_orderentry_boe3_v1_0_19.last_px.translate(raw)
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_neoequities_orderentry_boe3_v1_0_19.last_shares = {}

-- Size: Last Shares
cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.size = 4

-- Display: Last Shares
cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty = {}

-- Size: Leaves Qty
cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id = {}

-- Size: Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.size = 20

-- Display: Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Lei Algorithm Id: No Value"
  end

  return "Lei Algorithm Id: "..value
end

-- Dissect: Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.lei_algorithm_id, range, value, display)

  return offset + length, value
end

-- Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account = {}

-- Size: Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.size = 20

-- Display: Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Lei Customer Account: No Value"
  end

  return "Lei Customer Account: "..value
end

-- Dissect: Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.lei_customer_account, range, value, display)

  return offset + length, value
end

-- Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin = {}

-- Size: Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.size = 1

-- Display: Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.display = function(value)
  if value == 5 then
    return "Lei Order Origin: Direct Access Client (5)"
  end
  if value == 6 then
    return "Lei Order Origin: Foreign Dealer Equivalent (6)"
  end
  if value == 7 then
    return "Lei Order Origin: Order Execution Only Service (7)"
  end

  return "Lei Order Origin: Unknown("..value..")"
end

-- Dissect: Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.lei_order_origin, range, value, display)

  return offset + length, value
end

-- Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator = {}

-- Size: Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.size = 1

-- Display: Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.display = function(value)
  if value == "N" then
    return "Lei Routing Arrangement Indicator: No (N)"
  end
  if value == "Y" then
    return "Lei Routing Arrangement Indicator: Yes (Y)"
  end

  return "Lei Routing Arrangement Indicator: Unknown("..value..")"
end

-- Dissect: Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.lei_routing_arrangement_indicator, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_status = {}

-- Size: Login Response Status
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_status.size = 1

-- Display: Login Response Status
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_status.display = function(value)
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
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_text = {}

-- Size: Login Response Text
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_text.size = 60

-- Display: Login Response Text
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Login Response Text: No Value"
  end

  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.login_response_text.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason = {}

-- Size: Logout Reason
cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason.size = 1

-- Display: Logout Reason
cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason.display = function(value)
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
cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Reason Text
cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logout Reason Text: No Value"
  end

  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason_text.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Matching Priority
cboe_neoequities_orderentry_boe3_v1_0_19.matching_priority = {}

-- Size: Matching Priority
cboe_neoequities_orderentry_boe3_v1_0_19.matching_priority.size = 1

-- Display: Matching Priority
cboe_neoequities_orderentry_boe3_v1_0_19.matching_priority.display = function(value)
  if value == 0 then
    return "Matching Priority: None (0)"
  end
  if value == 1 then
    return "Matching Priority: Broker Preferencing (1)"
  end
  if value == 100 then
    return "Matching Priority: Market Maker Preferential Trading (100)"
  end

  return "Matching Priority: Unknown("..value..")"
end

-- Dissect: Matching Priority
cboe_neoequities_orderentry_boe3_v1_0_19.matching_priority.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.matching_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.matching_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.matching_priority, range, value, display)

  return offset + length, value
end

-- Matching State Participation
cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation = {}

-- Size: Matching State Participation
cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.size = 1

-- Display: Matching State Participation
cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.display = function(value)
  if value == "1" then
    return "Matching State Participation: Active Orders Only (1)"
  end
  if value == "2" then
    return "Matching State Participation: Passive Orders Only (2)"
  end
  if value == "3" then
    return "Matching State Participation: Both Active And Passive Orders (3)"
  end

  return "Matching State Participation: Unknown("..value..")"
end

-- Dissect: Matching State Participation
cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.matching_state_participation, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_neoequities_orderentry_boe3_v1_0_19.matching_unit = {}

-- Size: Matching Unit
cboe_neoequities_orderentry_boe3_v1_0_19.matching_unit.size = 1

-- Display: Matching Unit
cboe_neoequities_orderentry_boe3_v1_0_19.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_neoequities_orderentry_boe3_v1_0_19.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Max Floor
cboe_neoequities_orderentry_boe3_v1_0_19.max_floor = {}

-- Size: Max Floor
cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.size = 4

-- Display: Max Floor
cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_neoequities_orderentry_boe3_v1_0_19.message_length = {}

-- Size: Message Length
cboe_neoequities_orderentry_boe3_v1_0_19.message_length.size = 2

-- Display: Message Length
cboe_neoequities_orderentry_boe3_v1_0_19.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_neoequities_orderentry_boe3_v1_0_19.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.message_length, range, value, display)

  return offset + length, value
end

-- Modify Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.modify_reject_reason.display = function(value)
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
  if value == "K" then
    return "Modify Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Modify Reject Reason: Order Would Cross Or Lock Nbbo (L)"
  end
  if value == "N" then
    return "Modify Reject Reason: Ran Out Of Liquidity (N)"
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
  if value == "u" then
    return "Modify Reject Reason: Circuit Breaker Threshold Breach Limit Up Down (u)"
  end
  if value == "y" then
    return "Modify Reject Reason: Order Received By Cboe Canada During Replay (y)"
  end
  if value == "z" then
    return "Modify Reject Reason: Session End (z)"
  end

  return "Modify Reject Reason: Unknown("..value..")"
end

-- Dissect: Modify Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.modify_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- Ncib
cboe_neoequities_orderentry_boe3_v1_0_19.ncib = {}

-- Size: Ncib
cboe_neoequities_orderentry_boe3_v1_0_19.ncib.size = 1

-- Display: Ncib
cboe_neoequities_orderentry_boe3_v1_0_19.ncib.display = function(value)
  if value == "Y" then
    return "Ncib: Yes (Y)"
  end
  if value == "N" then
    return "Ncib: No (N)"
  end

  return "Ncib: Unknown("..value..")"
end

-- Dissect: Ncib
cboe_neoequities_orderentry_boe3_v1_0_19.ncib.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.ncib.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.ncib.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.ncib, range, value, display)

  return offset + length, value
end

-- No Trade Feat
cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat = {}

-- Size: No Trade Feat
cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.size = 1

-- Display: No Trade Feat
cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.display = function(value)
  if value == "T" then
    return "No Trade Feat: Suppress From Tape (T)"
  end
  if value == "N" then
    return "No Trade Feat: Cancel Newest (N)"
  end
  if value == "O" then
    return "No Trade Feat: Cancel Oldest (O)"
  end
  if value == "D" then
    return "No Trade Feat: Decrement Larger Cancel Smaller (D)"
  end
  if value == "U" then
    return "No Trade Feat: No Self Trade Protection (U)"
  end

  return "No Trade Feat: Unknown("..value..")"
end

-- Dissect: No Trade Feat
cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.no_trade_feat, range, value, display)

  return offset + length, value
end

-- No Trade Key
cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key = {}

-- Size: No Trade Key
cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.size = 6

-- Display: No Trade Key
cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "No Trade Key: No Value"
  end

  return "No Trade Key: "..value
end

-- Dissect: No Trade Key
cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.no_trade_key, range, value, display)

  return offset + length, value
end

-- Non Resident
cboe_neoequities_orderentry_boe3_v1_0_19.non_resident = {}

-- Size: Non Resident
cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.size = 1

-- Display: Non Resident
cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.display = function(value)
  if value == "Y" then
    return "Non Resident: Yes (Y)"
  end
  if value == "N" then
    return "Non Resident: No (N)"
  end

  return "Non Resident: Unknown("..value..")"
end

-- Dissect: Non Resident
cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.non_resident, range, value, display)

  return offset + length, value
end

-- Number Of Units
cboe_neoequities_orderentry_boe3_v1_0_19.number_of_units = {}

-- Size: Number Of Units
cboe_neoequities_orderentry_boe3_v1_0_19.number_of_units.size = 1

-- Display: Number Of Units
cboe_neoequities_orderentry_boe3_v1_0_19.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_neoequities_orderentry_boe3_v1_0_19.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_neoequities_orderentry_boe3_v1_0_19.ord_type = {}

-- Size: Ord Type
cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.size = 1

-- Display: Ord Type
cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.display = function(value)
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
cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_neoequities_orderentry_boe3_v1_0_19.order_id = {}

-- Size: Order Id
cboe_neoequities_orderentry_boe3_v1_0_19.order_id.size = 8

-- Display: Order Id
cboe_neoequities_orderentry_boe3_v1_0_19.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_neoequities_orderentry_boe3_v1_0_19.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
cboe_neoequities_orderentry_boe3_v1_0_19.order_qty = {}

-- Size: Order Qty
cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size = 4

-- Display: Order Qty
cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.order_reject_reason.display = function(value)
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
  if value == "K" then
    return "Order Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Order Reject Reason: Order Would Cross Or Lock Nbbo (L)"
  end
  if value == "N" then
    return "Order Reject Reason: Ran Out Of Liquidity (N)"
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
  if value == "u" then
    return "Order Reject Reason: Circuit Breaker Threshold Breach Limit Up Down (u)"
  end
  if value == "y" then
    return "Order Reject Reason: Order Received By Cboe Canada During Replay (y)"
  end
  if value == "z" then
    return "Order Reject Reason: Session End (z)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
cboe_neoequities_orderentry_boe3_v1_0_19.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Password
cboe_neoequities_orderentry_boe3_v1_0_19.password = {}

-- Size: Password
cboe_neoequities_orderentry_boe3_v1_0_19.password.size = 10

-- Display: Password
cboe_neoequities_orderentry_boe3_v1_0_19.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
cboe_neoequities_orderentry_boe3_v1_0_19.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.password.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Difference
cboe_neoequities_orderentry_boe3_v1_0_19.peg_difference = {}

-- Size: Peg Difference
cboe_neoequities_orderentry_boe3_v1_0_19.peg_difference.size = 8

-- Display: Peg Difference
cboe_neoequities_orderentry_boe3_v1_0_19.peg_difference.display = function(value)
  return "Peg Difference: "..value
end

-- Translate: Peg Difference
cboe_neoequities_orderentry_boe3_v1_0_19.peg_difference.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Peg Difference
cboe_neoequities_orderentry_boe3_v1_0_19.peg_difference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.peg_difference.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_neoequities_orderentry_boe3_v1_0_19.peg_difference.translate(raw)
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.peg_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.peg_difference, range, value, display)

  return offset + length, value
end

-- Price
cboe_neoequities_orderentry_boe3_v1_0_19.price = {}

-- Size: Price
cboe_neoequities_orderentry_boe3_v1_0_19.price.size = 8

-- Display: Price
cboe_neoequities_orderentry_boe3_v1_0_19.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_neoequities_orderentry_boe3_v1_0_19.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_neoequities_orderentry_boe3_v1_0_19.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_neoequities_orderentry_boe3_v1_0_19.price.translate(raw)
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.price, range, value, display)

  return offset + length, value
end

-- Principal Trade
cboe_neoequities_orderentry_boe3_v1_0_19.principal_trade = {}

-- Size: Principal Trade
cboe_neoequities_orderentry_boe3_v1_0_19.principal_trade.size = 1

-- Display: Principal Trade
cboe_neoequities_orderentry_boe3_v1_0_19.principal_trade.display = function(value)
  if value == "Y" then
    return "Principal Trade: Broker Executed A Principal Trade (Y)"
  end
  if value == "N" then
    return "Principal Trade: All Other Cases (N)"
  end

  return "Principal Trade: Unknown("..value..")"
end

-- Dissect: Principal Trade
cboe_neoequities_orderentry_boe3_v1_0_19.principal_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.principal_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.principal_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.principal_trade, range, value, display)

  return offset + length, value
end

-- Program Trade
cboe_neoequities_orderentry_boe3_v1_0_19.program_trade = {}

-- Size: Program Trade
cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.size = 1

-- Display: Program Trade
cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.display = function(value)
  if value == "Y" then
    return "Program Trade: Yes (Y)"
  end
  if value == "N" then
    return "Program Trade: No (N)"
  end

  return "Program Trade: Unknown("..value..")"
end

-- Dissect: Program Trade
cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.program_trade, range, value, display)

  return offset + length, value
end

-- Replay Unspecified Unit
cboe_neoequities_orderentry_boe3_v1_0_19.replay_unspecified_unit = {}

-- Size: Replay Unspecified Unit
cboe_neoequities_orderentry_boe3_v1_0_19.replay_unspecified_unit.size = 1

-- Display: Replay Unspecified Unit
cboe_neoequities_orderentry_boe3_v1_0_19.replay_unspecified_unit.display = function(value)
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
cboe_neoequities_orderentry_boe3_v1_0_19.replay_unspecified_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.replay_unspecified_unit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.replay_unspecified_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.replay_unspecified_unit, range, value, display)

  return offset + length, value
end

-- Reserved
cboe_neoequities_orderentry_boe3_v1_0_19.reserved = {}

-- Size: Reserved
cboe_neoequities_orderentry_boe3_v1_0_19.reserved.size = 4

-- Display: Reserved
cboe_neoequities_orderentry_boe3_v1_0_19.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_neoequities_orderentry_boe3_v1_0_19.reserved.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved Field
cboe_neoequities_orderentry_boe3_v1_0_19.reserved_field = {}

-- Size: Reserved Field
cboe_neoequities_orderentry_boe3_v1_0_19.reserved_field.size = 1

-- Display: Reserved Field
cboe_neoequities_orderentry_boe3_v1_0_19.reserved_field.display = function(value)
  return "Reserved Field: "..value
end

-- Dissect: Reserved Field
cboe_neoequities_orderentry_boe3_v1_0_19.reserved_field.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.reserved_field.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.reserved_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.reserved_field, range, value, display)

  return offset + length, value
end

-- Restatement Reason
cboe_neoequities_orderentry_boe3_v1_0_19.restatement_reason = {}

-- Size: Restatement Reason
cboe_neoequities_orderentry_boe3_v1_0_19.restatement_reason.size = 1

-- Display: Restatement Reason
cboe_neoequities_orderentry_boe3_v1_0_19.restatement_reason.display = function(value)
  if value == "L" then
    return "Restatement Reason: Reload Iceberg Display Size Refreshed (L)"
  end
  if value == "P" then
    return "Restatement Reason: Reprice Ex Opr Mtl (P)"
  end
  if value == "W" then
    return "Restatement Reason: Partial Reduce Due Selftrade Prevention Result Based On No Trade Feat (W)"
  end
  if value == "T" then
    return "Restatement Reason: Triggered Stop Order (T)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_neoequities_orderentry_boe3_v1_0_19.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Routing Inst
cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst = {}

-- Size: Routing Inst
cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.size = 1

-- Display: Routing Inst
cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.display = function(value)
  if value == "P" then
    return "Routing Inst: Post Only Cancel (P)"
  end
  if value == "p" then
    return "Routing Inst: Post Only Reprice (p)"
  end

  return "Routing Inst: Unknown("..value..")"
end

-- Dissect: Routing Inst
cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.routing_inst, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
cboe_neoequities_orderentry_boe3_v1_0_19.secondary_order_id = {}

-- Size: Secondary Order Id
cboe_neoequities_orderentry_boe3_v1_0_19.secondary_order_id.size = 8

-- Display: Secondary Order Id
cboe_neoequities_orderentry_boe3_v1_0_19.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_neoequities_orderentry_boe3_v1_0_19.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Sell Account
cboe_neoequities_orderentry_boe3_v1_0_19.sell_account = {}

-- Size: Sell Account
cboe_neoequities_orderentry_boe3_v1_0_19.sell_account.size = 16

-- Display: Sell Account
cboe_neoequities_orderentry_boe3_v1_0_19.sell_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Account: No Value"
  end

  return "Sell Account: "..value
end

-- Dissect: Sell Account
cboe_neoequities_orderentry_boe3_v1_0_19.sell_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sell_account.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sell_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_account, range, value, display)

  return offset + length, value
end

-- Sell Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.sell_broker_lei = {}

-- Size: Sell Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.sell_broker_lei.size = 20

-- Display: Sell Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.sell_broker_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Broker Lei: No Value"
  end

  return "Sell Broker Lei: "..value
end

-- Dissect: Sell Broker Lei
cboe_neoequities_orderentry_boe3_v1_0_19.sell_broker_lei.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sell_broker_lei.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sell_broker_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_broker_lei, range, value, display)

  return offset + length, value
end

-- Sell Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.sell_customer_lei = {}

-- Size: Sell Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.sell_customer_lei.size = 52

-- Display: Sell Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.sell_customer_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Customer Lei: No Value"
  end

  return "Sell Customer Lei: "..value
end

-- Dissect: Sell Customer Lei
cboe_neoequities_orderentry_boe3_v1_0_19.sell_customer_lei.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sell_customer_lei.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sell_customer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_customer_lei, range, value, display)

  return offset + length, value
end

-- Sell Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.sell_jitney = {}

-- Size: Sell Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.sell_jitney.size = 2

-- Display: Sell Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.sell_jitney.display = function(value)
  return "Sell Jitney: "..value
end

-- Dissect: Sell Jitney
cboe_neoequities_orderentry_boe3_v1_0_19.sell_jitney.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sell_jitney.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sell_jitney.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_jitney, range, value, display)

  return offset + length, value
end

-- Sell Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_algorithm_id = {}

-- Size: Sell Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_algorithm_id.size = 20

-- Display: Sell Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_algorithm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Lei Algorithm Id: No Value"
  end

  return "Sell Lei Algorithm Id: "..value
end

-- Dissect: Sell Lei Algorithm Id
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_algorithm_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_algorithm_id.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_algorithm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_lei_algorithm_id, range, value, display)

  return offset + length, value
end

-- Sell Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_customer_account = {}

-- Size: Sell Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_customer_account.size = 20

-- Display: Sell Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_customer_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Lei Customer Account: No Value"
  end

  return "Sell Lei Customer Account: "..value
end

-- Dissect: Sell Lei Customer Account
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_customer_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_customer_account.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_customer_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_lei_customer_account, range, value, display)

  return offset + length, value
end

-- Sell Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_order_origin = {}

-- Size: Sell Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_order_origin.size = 1

-- Display: Sell Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_order_origin.display = function(value)
  if value == 5 then
    return "Sell Lei Order Origin: Direct Access Client (5)"
  end
  if value == 6 then
    return "Sell Lei Order Origin: Foreign Dealer Equivalent (6)"
  end
  if value == 7 then
    return "Sell Lei Order Origin: Order Execution Only Service (7)"
  end

  return "Sell Lei Order Origin: Unknown("..value..")"
end

-- Dissect: Sell Lei Order Origin
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_order_origin.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_order_origin.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_order_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_lei_order_origin, range, value, display)

  return offset + length, value
end

-- Sell Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_routing_arrangement_indicator = {}

-- Size: Sell Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_routing_arrangement_indicator.size = 1

-- Display: Sell Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_routing_arrangement_indicator.display = function(value)
  if value == "N" then
    return "Sell Lei Routing Arrangement Indicator: No (N)"
  end
  if value == "Y" then
    return "Sell Lei Routing Arrangement Indicator: Yes (Y)"
  end

  return "Sell Lei Routing Arrangement Indicator: Unknown("..value..")"
end

-- Dissect: Sell Lei Routing Arrangement Indicator
cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_routing_arrangement_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_routing_arrangement_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_routing_arrangement_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_lei_routing_arrangement_indicator, range, value, display)

  return offset + length, value
end

-- Sell Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_account_type = {}

-- Size: Sell Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_account_type.size = 1

-- Display: Sell Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_account_type.display = function(value)
  if value == "I" then
    return "Sell Umir Account Type: Inventory (I)"
  end
  if value == "N" then
    return "Sell Umir Account Type: Non Client (N)"
  end
  if value == "C" then
    return "Sell Umir Account Type: Client (C)"
  end
  if value == "S" then
    return "Sell Umir Account Type: Specialist (S)"
  end
  if value == "F" then
    return "Sell Umir Account Type: Options Firm Account (F)"
  end
  if value == "M" then
    return "Sell Umir Account Type: Options Market Maker (M)"
  end
  if value == "B" then
    return "Sell Umir Account Type: Bundled (B)"
  end
  if value == "X" then
    return "Sell Umir Account Type: Multi Client (X)"
  end

  return "Sell Umir Account Type: Unknown("..value..")"
end

-- Dissect: Sell Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_account_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_account_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_umir_account_type, range, value, display)

  return offset + length, value
end

-- Sell Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_regulation_id = {}

-- Size: Sell Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_regulation_id.size = 1

-- Display: Sell Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_regulation_id.display = function(value)
  if value == "S" then
    return "Sell Umir Regulation Id: Significant Shareholder (S)"
  end
  if value == "I" then
    return "Sell Umir Regulation Id: Insider (I)"
  end

  return "Sell Umir Regulation Id: Unknown("..value..")"
end

-- Dissect: Sell Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_regulation_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_regulation_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_regulation_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sell_umir_regulation_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number = {}

-- Size: Sequence Number
cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.size = 4

-- Display: Sequence Number
cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
cboe_neoequities_orderentry_boe3_v1_0_19.session_id = {}

-- Size: Session Id
cboe_neoequities_orderentry_boe3_v1_0_19.session_id.size = 4

-- Display: Session Id
cboe_neoequities_orderentry_boe3_v1_0_19.session_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Id: No Value"
  end

  return "Session Id: "..value
end

-- Dissect: Session Id
cboe_neoequities_orderentry_boe3_v1_0_19.session_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.session_id.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_neoequities_orderentry_boe3_v1_0_19.session_sub_id = {}

-- Size: Session Sub Id
cboe_neoequities_orderentry_boe3_v1_0_19.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_neoequities_orderentry_boe3_v1_0_19.session_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Sub Id: No Value"
  end

  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_neoequities_orderentry_boe3_v1_0_19.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.session_sub_id.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Settlement Type
cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type = {}

-- Size: Settlement Type
cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.size = 1

-- Display: Settlement Type
cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.display = function(value)
  if value == 1 then
    return "Settlement Type: Cash (1)"
  end
  if value == 6 then
    return "Settlement Type: Future (6)"
  end
  if value == 11 then
    return "Settlement Type: Non Net (11)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Short Marking Exempt
cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt = {}

-- Size: Short Marking Exempt
cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.size = 1

-- Display: Short Marking Exempt
cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.display = function(value)
  if value == "0" then
    return "Short Marking Exempt: Short Market Exempt (0)"
  end
  if value == "1" then
    return "Short Marking Exempt: Buy Of A New Order Cross Is Short Marking Exempt (1)"
  end
  if value == "2" then
    return "Short Marking Exempt: Sell Of A New Order Cross Is Short Marking Exempt (2)"
  end
  if value == "3" then
    return "Short Marking Exempt: Both Sides Of A New Order Cross Is Short Marking Exempt (3)"
  end
  if value == 0 then
    return "Short Marking Exempt: Not Short Marking Exempt"
  end

  return "Short Marking Exempt: Unknown("..value..")"
end

-- Dissect: Short Marking Exempt
cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.short_marking_exempt, range, value, display)

  return offset + length, value
end

-- Side
cboe_neoequities_orderentry_boe3_v1_0_19.side = {}

-- Size: Side
cboe_neoequities_orderentry_boe3_v1_0_19.side.size = 1

-- Display: Side
cboe_neoequities_orderentry_boe3_v1_0_19.side.display = function(value)
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
cboe_neoequities_orderentry_boe3_v1_0_19.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_neoequities_orderentry_boe3_v1_0_19.start_of_message = {}

-- Size: Start Of Message
cboe_neoequities_orderentry_boe3_v1_0_19.start_of_message.size = 2

-- Display: Start Of Message
cboe_neoequities_orderentry_boe3_v1_0_19.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_neoequities_orderentry_boe3_v1_0_19.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Stop Px
cboe_neoequities_orderentry_boe3_v1_0_19.stop_px = {}

-- Size: Stop Px
cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.size = 8

-- Display: Stop Px
cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Stop Px
cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.translate(raw)
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_neoequities_orderentry_boe3_v1_0_19.symbol = {}

-- Size: Symbol
cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size = 14

-- Display: Symbol
cboe_neoequities_orderentry_boe3_v1_0_19.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_neoequities_orderentry_boe3_v1_0_19.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text
cboe_neoequities_orderentry_boe3_v1_0_19.text = {}

-- Size: Text
cboe_neoequities_orderentry_boe3_v1_0_19.text.size = 60

-- Display: Text
cboe_neoequities_orderentry_boe3_v1_0_19.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cboe_neoequities_orderentry_boe3_v1_0_19.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.text.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force = {}

-- Size: Time In Force
cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.size = 1

-- Display: Time In Force
cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.display = function(value)
  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "1" then
    return "Time In Force: Good Til Cancel Gtc (1)"
  end
  if value == "2" then
    return "Time In Force: At The Open Opg (2)"
  end
  if value == "3" then
    return "Time In Force: Immediate Or Cancel Ioc (3)"
  end
  if value == "4" then
    return "Time In Force: Fill Or Kill Fok (4)"
  end
  if value == "6" then
    return "Time In Force: Good Til Date Gtd Good Til Time Gtt (6)"
  end
  if value == "7" then
    return "Time In Force: At The Close Atc (7)"
  end
  if value == "R" then
    return "Time In Force: Regular Hours Only Rho (R)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_neoequities_orderentry_boe3_v1_0_19.trade_date = {}

-- Size: Trade Date
cboe_neoequities_orderentry_boe3_v1_0_19.trade_date.size = 4

-- Display: Trade Date
cboe_neoequities_orderentry_boe3_v1_0_19.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_neoequities_orderentry_boe3_v1_0_19.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time = {}

-- Size: Transaction Time
cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size = 8

-- Display: Transaction Time
cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- True Min Qty
cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty = {}

-- Size: True Min Qty
cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.size = 4

-- Display: True Min Qty
cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.display = function(value)
  return "True Min Qty: "..value
end

-- Dissect: True Min Qty
cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.true_min_qty, range, value, display)

  return offset + length, value
end

-- Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type = {}

-- Size: Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.size = 1

-- Display: Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.display = function(value)
  if value == "I" then
    return "Umir Account Type: Inventory (I)"
  end
  if value == "N" then
    return "Umir Account Type: Non Client (N)"
  end
  if value == "C" then
    return "Umir Account Type: Client (C)"
  end
  if value == "S" then
    return "Umir Account Type: Specialist (S)"
  end
  if value == "F" then
    return "Umir Account Type: Options Firm Account (F)"
  end
  if value == "M" then
    return "Umir Account Type: Options Market Maker (M)"
  end
  if value == "B" then
    return "Umir Account Type: Bundled (B)"
  end
  if value == "X" then
    return "Umir Account Type: Multi Client (X)"
  end

  return "Umir Account Type: Unknown("..value..")"
end

-- Dissect: Umir Account Type
cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.umir_account_type, range, value, display)

  return offset + length, value
end

-- Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id = {}

-- Size: Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.size = 1

-- Display: Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.display = function(value)
  if value == "S" then
    return "Umir Regulation Id: Significant Shareholder (S)"
  end
  if value == "I" then
    return "Umir Regulation Id: Insider (I)"
  end

  return "Umir Regulation Id: Unknown("..value..")"
end

-- Dissect: Umir Regulation Id
cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.umir_regulation_id, range, value, display)

  return offset + length, value
end

-- Umir User Id
cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id = {}

-- Size: Umir User Id
cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.size = 12

-- Display: Umir User Id
cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Umir User Id: No Value"
  end

  return "Umir User Id: "..value
end

-- Dissect: Umir User Id
cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.size
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

  local display = cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.umir_user_id, range, value, display)

  return offset + length, value
end

-- Unit Number
cboe_neoequities_orderentry_boe3_v1_0_19.unit_number = {}

-- Size: Unit Number
cboe_neoequities_orderentry_boe3_v1_0_19.unit_number.size = 1

-- Display: Unit Number
cboe_neoequities_orderentry_boe3_v1_0_19.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_neoequities_orderentry_boe3_v1_0_19.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Wash Trade
cboe_neoequities_orderentry_boe3_v1_0_19.wash_trade = {}

-- Size: Wash Trade
cboe_neoequities_orderentry_boe3_v1_0_19.wash_trade.size = 1

-- Display: Wash Trade
cboe_neoequities_orderentry_boe3_v1_0_19.wash_trade.display = function(value)
  if value == "Y" then
    return "Wash Trade: Broker Executed A Wash Trade (Y)"
  end
  if value == "N" then
    return "Wash Trade: All Other Cases (N)"
  end

  return "Wash Trade: Unknown("..value..")"
end

-- Dissect: Wash Trade
cboe_neoequities_orderentry_boe3_v1_0_19.wash_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.wash_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.wash_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.wash_trade, range, value, display)

  return offset + length, value
end

-- Working Price
cboe_neoequities_orderentry_boe3_v1_0_19.working_price = {}

-- Size: Working Price
cboe_neoequities_orderentry_boe3_v1_0_19.working_price.size = 8

-- Display: Working Price
cboe_neoequities_orderentry_boe3_v1_0_19.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
cboe_neoequities_orderentry_boe3_v1_0_19.working_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_neoequities_orderentry_boe3_v1_0_19.working_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_orderentry_boe3_v1_0_19.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_neoequities_orderentry_boe3_v1_0_19.working_price.translate(raw)
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe NeoEquities OrderEntry Boe3 1.0.19
-----------------------------------------------------------------------

-- Trade Cancel Correct Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.trade_cancel_correct_ca_equities_v_1 = {}

-- Size: Trade Cancel Correct Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.trade_cancel_correct_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.exec_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.exec_ref_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.last_px.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.side.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.corrected_size.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.corrected_price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.fee_code.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.size

-- Display: Trade Cancel Correct Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.trade_cancel_correct_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Correct Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.trade_cancel_correct_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_neoequities_orderentry_boe3_v1_0_19.account.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_neoequities_orderentry_boe3_v1_0_19.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_neoequities_orderentry_boe3_v1_0_19.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_neoequities_orderentry_boe3_v1_0_19.last_px.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_neoequities_orderentry_boe3_v1_0_19.side.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Text
  index, base_liquidity_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Size: Binary
  index, corrected_size = cboe_neoequities_orderentry_boe3_v1_0_19.corrected_size.dissect(buffer, index, packet, parent)

  -- Umir User Id: Alphanumeric
  index, umir_user_id = cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.dissect(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_neoequities_orderentry_boe3_v1_0_19.corrected_price.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_neoequities_orderentry_boe3_v1_0_19.fee_code.dissect(buffer, index, packet, parent)

  -- Settlement Type: Binary
  index, settlement_type = cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.dissect(buffer, index, packet, parent)

  -- Fut Settl Date: Date
  index, fut_settl_date = cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Correct Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.trade_cancel_correct_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.trade_cancel_correct_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.trade_cancel_correct_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.trade_cancel_correct_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.trade_cancel_correct_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Done For Day Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.done_for_day_ca_equities_v_1 = {}

-- Size: Done For Day Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.done_for_day_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size

-- Display: Done For Day Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.done_for_day_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Done For Day Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.done_for_day_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Done For Day Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.done_for_day_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.done_for_day_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.done_for_day_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.done_for_day_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.done_for_day_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Carried Restatement Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.carried_restatement_ca_equities_v_1 = {}

-- Size: Carried Restatement Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.carried_restatement_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cum_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.side.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.jitney.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.bypass.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ncib.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.size

-- Display: Carried Restatement Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.carried_restatement_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Carried Restatement Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.carried_restatement_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_neoequities_orderentry_boe3_v1_0_19.order_id.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_neoequities_orderentry_boe3_v1_0_19.account.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.dissect(buffer, index, packet, parent)

  -- Handling Inst: Text
  index, handling_inst = cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Binary
  index, cum_qty = cboe_neoequities_orderentry_boe3_v1_0_19.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: Text
  index, ord_type = cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_neoequities_orderentry_boe3_v1_0_19.price.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_neoequities_orderentry_boe3_v1_0_19.side.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.dissect(buffer, index, packet, parent)

  -- Settlement Type: Binary
  index, settlement_type = cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.dissect(buffer, index, packet, parent)

  -- Fut Settl Date: Date
  index, fut_settl_date = cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.dissect(buffer, index, packet, parent)

  -- Lei Order Origin: Binary
  index, lei_order_origin = cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.dissect(buffer, index, packet, parent)

  -- Lei Routing Arrangement Indicator: Text
  index, lei_routing_arrangement_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.dissect(buffer, index, packet, parent)

  -- Umir Account Type: Text
  index, umir_account_type = cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.dissect(buffer, index, packet, parent)

  -- Umir User Id: Alphanumeric
  index, umir_user_id = cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.dissect(buffer, index, packet, parent)

  -- Basket Trade: Binary
  index, basket_trade = cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.dissect(buffer, index, packet, parent)

  -- Program Trade: Text
  index, program_trade = cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.dissect(buffer, index, packet, parent)

  -- Jitney: Binary
  index, jitney = cboe_neoequities_orderentry_boe3_v1_0_19.jitney.dissect(buffer, index, packet, parent)

  -- Anonymous: Text
  index, anonymous = cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.dissect(buffer, index, packet, parent)

  -- Umir Regulation Id: Text
  index, umir_regulation_id = cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.dissect(buffer, index, packet, parent)

  -- Non Resident: Text
  index, non_resident = cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.dissect(buffer, index, packet, parent)

  -- Bypass: Text
  index, bypass = cboe_neoequities_orderentry_boe3_v1_0_19.bypass.dissect(buffer, index, packet, parent)

  -- Ncib: Text
  index, ncib = cboe_neoequities_orderentry_boe3_v1_0_19.ncib.dissect(buffer, index, packet, parent)

  -- Short Marking Exempt: Text
  index, short_marking_exempt = cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.dissect(buffer, index, packet, parent)

  -- Lei Customer Account: Text
  index, lei_customer_account = cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.dissect(buffer, index, packet, parent)

  -- Lei Algorithm Id: Text
  index, lei_algorithm_id = cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.dissect(buffer, index, packet, parent)

  -- Customer Lei: Text
  index, customer_lei = cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.dissect(buffer, index, packet, parent)

  -- Broker Lei: Alphanumeric
  index, broker_lei = cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.dissect(buffer, index, packet, parent)

  -- Display Indicator: Text
  index, display_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.dissect(buffer, index, packet, parent)

  -- Matching State Participation: Text
  index, matching_state_participation = cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.dissect(buffer, index, packet, parent)

  -- True Min Qty: Binary
  index, true_min_qty = cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Carried Restatement Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.carried_restatement_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.carried_restatement_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.carried_restatement_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.carried_restatement_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.carried_restatement_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_rejected_ca_equities_v_1 = {}

-- Size: Cancel Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_rejected_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.text.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reject_reason.size

-- Display: Cancel Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_rejected_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_rejected_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_neoequities_orderentry_boe3_v1_0_19.text.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_rejected_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cancel_rejected_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_rejected_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_rejected_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.cancel_rejected_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancelled Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_cancelled_ca_equities_v_1 = {}

-- Size: Order Cancelled Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_cancelled_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reason.size

-- Display: Order Cancelled Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_cancelled_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_cancelled_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_cancelled_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_cancelled_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.order_cancelled_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.order_cancelled_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_cancelled_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_execution_ca_equities_v_1 = {}

-- Size: Order Execution Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_execution_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.exec_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.last_px.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.side.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.trade_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.contra_broker.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.principal_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.wash_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.matching_priority.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.is_self_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.fee_code.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.size

-- Display: Order Execution Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_execution_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_execution_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_neoequities_orderentry_boe3_v1_0_19.exec_id.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_neoequities_orderentry_boe3_v1_0_19.last_px.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_neoequities_orderentry_boe3_v1_0_19.order_id.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_neoequities_orderentry_boe3_v1_0_19.side.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_neoequities_orderentry_boe3_v1_0_19.trade_date.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.dissect(buffer, index, packet, parent)

  -- Contra Broker: Binary
  index, contra_broker = cboe_neoequities_orderentry_boe3_v1_0_19.contra_broker.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Text
  index, base_liquidity_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Principal Trade: Text
  index, principal_trade = cboe_neoequities_orderentry_boe3_v1_0_19.principal_trade.dissect(buffer, index, packet, parent)

  -- Wash Trade: Text
  index, wash_trade = cboe_neoequities_orderentry_boe3_v1_0_19.wash_trade.dissect(buffer, index, packet, parent)

  -- No Trade Feat: Text
  index, no_trade_feat = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.dissect(buffer, index, packet, parent)

  -- No Trade Key: Text
  index, no_trade_key = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.dissect(buffer, index, packet, parent)

  -- Short Marking Exempt: Text
  index, short_marking_exempt = cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.dissect(buffer, index, packet, parent)

  -- Matching Priority: Binary
  index, matching_priority = cboe_neoequities_orderentry_boe3_v1_0_19.matching_priority.dissect(buffer, index, packet, parent)

  -- Is Self Trade: Text
  index, is_self_trade = cboe_neoequities_orderentry_boe3_v1_0_19.is_self_trade.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_neoequities_orderentry_boe3_v1_0_19.fee_code.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_execution_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_execution_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.order_execution_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.order_execution_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_execution_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Restated Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_restated_ca_equities_v_1 = {}

-- Size: Order Restated Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_restated_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.secondary_order_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.last_px.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.restatement_reason.size

-- Display: Order Restated Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_restated_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_restated_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_neoequities_orderentry_boe3_v1_0_19.order_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_neoequities_orderentry_boe3_v1_0_19.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_neoequities_orderentry_boe3_v1_0_19.last_px.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_neoequities_orderentry_boe3_v1_0_19.last_shares.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Text
  index, base_liquidity_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_neoequities_orderentry_boe3_v1_0_19.price.dissect(buffer, index, packet, parent)

  -- True Min Qty: Binary
  index, true_min_qty = cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Text
  index, restatement_reason = cboe_neoequities_orderentry_boe3_v1_0_19.restatement_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Restated Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_restated_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_restated_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.order_restated_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.order_restated_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_restated_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Modify Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.modify_rejected_ca_equities_v_1 = {}

-- Size: Modify Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.modify_rejected_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.text.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.modify_reject_reason.size

-- Display: Modify Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.modify_rejected_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.modify_rejected_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_neoequities_orderentry_boe3_v1_0_19.text.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_neoequities_orderentry_boe3_v1_0_19.modify_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.modify_rejected_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.modify_rejected_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.modify_rejected_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.modify_rejected_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.modify_rejected_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_modified_ca_equities_v_1 = {}

-- Size: Order Modified Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_modified_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.secondary_order_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.size

-- Display: Order Modified Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_modified_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_modified_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_neoequities_orderentry_boe3_v1_0_19.order_id.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_neoequities_orderentry_boe3_v1_0_19.account.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.dissect(buffer, index, packet, parent)

  -- Lei Order Origin: Binary
  index, lei_order_origin = cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.dissect(buffer, index, packet, parent)

  -- Lei Routing Arrangement Indicator: Text
  index, lei_routing_arrangement_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.dissect(buffer, index, packet, parent)

  -- Umir Account Type: Text
  index, umir_account_type = cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.dissect(buffer, index, packet, parent)

  -- Lei Customer Account: Text
  index, lei_customer_account = cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.dissect(buffer, index, packet, parent)

  -- Lei Algorithm Id: Text
  index, lei_algorithm_id = cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.dissect(buffer, index, packet, parent)

  -- Customer Lei: Text
  index, customer_lei = cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.dissect(buffer, index, packet, parent)

  -- Broker Lei: Alphanumeric
  index, broker_lei = cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_neoequities_orderentry_boe3_v1_0_19.leaves_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_neoequities_orderentry_boe3_v1_0_19.price.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.dissect(buffer, index, packet, parent)

  -- True Min Qty: Binary
  index, true_min_qty = cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_neoequities_orderentry_boe3_v1_0_19.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_modified_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_modified_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.order_modified_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.order_modified_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_modified_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_rejected_ca_equities_v_1 = {}

-- Size: Order Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_rejected_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_reject_reason.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.text.size

-- Display: Order Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_rejected_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_rejected_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_neoequities_orderentry_boe3_v1_0_19.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_neoequities_orderentry_boe3_v1_0_19.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_rejected_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_rejected_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.order_rejected_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.order_rejected_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_rejected_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Acknowledgement Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_acknowledgement_ca_equities_v_1 = {}

-- Size: Order Acknowledgement Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_acknowledgement_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.working_price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.side.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.size

-- Display: Order Acknowledgement Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_acknowledgement_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_acknowledgement_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_neoequities_orderentry_boe3_v1_0_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_neoequities_orderentry_boe3_v1_0_19.account.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_neoequities_orderentry_boe3_v1_0_19.order_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: Text
  index, ord_type = cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_neoequities_orderentry_boe3_v1_0_19.price.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_neoequities_orderentry_boe3_v1_0_19.working_price.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_neoequities_orderentry_boe3_v1_0_19.side.dissect(buffer, index, packet, parent)

  -- Short Marking Exempt: Text
  index, short_marking_exempt = cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.dissect(buffer, index, packet, parent)

  -- No Trade Feat: Text
  index, no_trade_feat = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.dissect(buffer, index, packet, parent)

  -- No Trade Key: Text
  index, no_trade_key = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Text
  index, base_liquidity_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- True Min Qty: Binary
  index, true_min_qty = cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.order_acknowledgement_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.order_acknowledgement_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.order_acknowledgement_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.order_acknowledgement_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_acknowledgement_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Server Heartbeat
cboe_neoequities_orderentry_boe3_v1_0_19.server_heartbeat = {}

-- Display: Server Heartbeat
cboe_neoequities_orderentry_boe3_v1_0_19.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
cboe_neoequities_orderentry_boe3_v1_0_19.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Response Message
cboe_neoequities_orderentry_boe3_v1_0_19.logout_response_message = {}

-- Size: Logout Response Message
cboe_neoequities_orderentry_boe3_v1_0_19.logout_response_message.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason_text.size

-- Display: Logout Response Message
cboe_neoequities_orderentry_boe3_v1_0_19.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
cboe_neoequities_orderentry_boe3_v1_0_19.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 3 values
  index, logout_reason = cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: 60 Byte Ascii String
  index, logout_reason_text = cboe_neoequities_orderentry_boe3_v1_0_19.logout_reason_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
cboe_neoequities_orderentry_boe3_v1_0_19.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.logout_response_message, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Complete
cboe_neoequities_orderentry_boe3_v1_0_19.replay_complete = {}

-- Display: Replay Complete
cboe_neoequities_orderentry_boe3_v1_0_19.replay_complete.display = function(packet, parent, length)
  return "Replay Complete"
end


-- Dissect: Replay Complete
cboe_neoequities_orderentry_boe3_v1_0_19.replay_complete.dissect = function(buffer, offset, packet, parent)
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.replay_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unit Sequence
cboe_neoequities_orderentry_boe3_v1_0_19.unit_sequence = {}

-- Size: Unit Sequence
cboe_neoequities_orderentry_boe3_v1_0_19.unit_sequence.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.unit_number.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.size

-- Display: Unit Sequence
cboe_neoequities_orderentry_boe3_v1_0_19.unit_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Sequence
cboe_neoequities_orderentry_boe3_v1_0_19.unit_sequence.fields = function(buffer, offset, packet, parent, unit_sequence_index)
  local index = offset

  -- Implicit Unit Sequence Index
  if unit_sequence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.unit_sequence_index, unit_sequence_index)
    iteration:set_generated()
  end

  -- Unit Number: 1 Byte Unsigned Fixed Width Integer
  index, unit_number = cboe_neoequities_orderentry_boe3_v1_0_19.unit_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
cboe_neoequities_orderentry_boe3_v1_0_19.unit_sequence.dissect = function(buffer, offset, packet, parent, unit_sequence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.unit_sequence, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.unit_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
  end
end

-- Login Response Message
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_message = {}

-- Calculate size of: Login Response Message
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_neoequities_orderentry_boe3_v1_0_19.login_response_status.size

  index = index + cboe_neoequities_orderentry_boe3_v1_0_19.login_response_text.size

  index = index + cboe_neoequities_orderentry_boe3_v1_0_19.client_sequence.size

  index = index + cboe_neoequities_orderentry_boe3_v1_0_19.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Response Message
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: 1 Byte Ascii String Enum with 8 values
  index, login_response_status = cboe_neoequities_orderentry_boe3_v1_0_19.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: 60 Byte Ascii String
  index, login_response_text = cboe_neoequities_orderentry_boe3_v1_0_19.login_response_text.dissect(buffer, index, packet, parent)

  -- Client Sequence: 4 Byte Unsigned Fixed Width Integer
  index, client_sequence = cboe_neoequities_orderentry_boe3_v1_0_19.client_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_neoequities_orderentry_boe3_v1_0_19.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_neoequities_orderentry_boe3_v1_0_19.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Response Message
cboe_neoequities_orderentry_boe3_v1_0_19.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.login_response_message, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Message
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message = {}

-- Dissect: Exchange Message
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message.dissect = function(buffer, offset, packet, parent, exchange_message_type)
  -- Dissect Login Response Message
  if exchange_message_type == 501 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete
  if exchange_message_type == 502 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.replay_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response Message
  if exchange_message_type == 503 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if exchange_message_type == 504 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement Ca Equities V 1
  if exchange_message_type == 6501 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_acknowledgement_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Ca Equities V 1
  if exchange_message_type == 6502 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_rejected_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Ca Equities V 1
  if exchange_message_type == 6503 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_modified_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Rejected Ca Equities V 1
  if exchange_message_type == 6504 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.modify_rejected_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Ca Equities V 1
  if exchange_message_type == 6505 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_restated_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Ca Equities V 1
  if exchange_message_type == 6506 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_execution_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Ca Equities V 1
  if exchange_message_type == 6507 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.order_cancelled_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Ca Equities V 1
  if exchange_message_type == 6508 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.cancel_rejected_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Carried Restatement Ca Equities V 1
  if exchange_message_type == 6510 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.carried_restatement_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Done For Day Ca Equities V 1
  if exchange_message_type == 6511 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.done_for_day_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Correct Ca Equities V 1
  if exchange_message_type == 6512 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.trade_cancel_correct_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Exchange Message Header
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_header = {}

-- Size: Exchange Message Header
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_header.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.start_of_message.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.message_length.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.matching_unit.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.reserved_field.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.size

-- Display: Exchange Message Header
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Message Header
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_neoequities_orderentry_boe3_v1_0_19.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_neoequities_orderentry_boe3_v1_0_19.message_length.dissect(buffer, index, packet, parent)

  -- Exchange Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, exchange_message_type = cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_neoequities_orderentry_boe3_v1_0_19.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_neoequities_orderentry_boe3_v1_0_19.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Exchange Message Header
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.exchange_message_header, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Packet
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_packet = {}

-- Verify required size of Tcp packet
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_header.size
end

-- Dissect Exchange Packet
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Exchange Message Header: Struct of 6 fields
  index, exchange_message_header = cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Exchange Message Type
  local exchange_message_type = buffer(index - 8, 2):le_uint()

  -- Exchange Message: Runtime Type with 15 branches
  index = cboe_neoequities_orderentry_boe3_v1_0_19.exchange_message.dissect(buffer, index, packet, parent, exchange_message_type)

  return index
end

-- New Order Cross Ca Equities V 2
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_2 = {}

-- Size: New Order Cross Ca Equities V 2
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_2.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cross_cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cross_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.bypass.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ncib.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cross_side.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_account_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_regulation_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_jitney.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_customer_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_algorithm_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_customer_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_broker_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_order_origin.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangement_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_account_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_regulation_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_jitney.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_customer_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_algorithm_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_customer_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_broker_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_order_origin.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_routing_arrangement_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.reserved.size

-- Display: New Order Cross Ca Equities V 2
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Ca Equities V 2
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Cross Cl Ord Id: Text
  index, cross_cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cross_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Text
  index, cross_type = cboe_neoequities_orderentry_boe3_v1_0_19.cross_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_neoequities_orderentry_boe3_v1_0_19.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.dissect(buffer, index, packet, parent)

  -- Settlement Type: Binary
  index, settlement_type = cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.dissect(buffer, index, packet, parent)

  -- Fut Settl Date: Date
  index, fut_settl_date = cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.dissect(buffer, index, packet, parent)

  -- Umir User Id: Alphanumeric
  index, umir_user_id = cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.dissect(buffer, index, packet, parent)

  -- Basket Trade: Binary
  index, basket_trade = cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.dissect(buffer, index, packet, parent)

  -- Program Trade: Text
  index, program_trade = cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.dissect(buffer, index, packet, parent)

  -- Non Resident: Text
  index, non_resident = cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.dissect(buffer, index, packet, parent)

  -- Bypass: Text
  index, bypass = cboe_neoequities_orderentry_boe3_v1_0_19.bypass.dissect(buffer, index, packet, parent)

  -- Ncib: Text
  index, ncib = cboe_neoequities_orderentry_boe3_v1_0_19.ncib.dissect(buffer, index, packet, parent)

  -- Cross Side: Text
  index, cross_side = cboe_neoequities_orderentry_boe3_v1_0_19.cross_side.dissect(buffer, index, packet, parent)

  -- Short Marking Exempt: Text
  index, short_marking_exempt = cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.dissect(buffer, index, packet, parent)

  -- Buy Umir Account Type: Text
  index, buy_umir_account_type = cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_account_type.dissect(buffer, index, packet, parent)

  -- Buy Account: Text
  index, buy_account = cboe_neoequities_orderentry_boe3_v1_0_19.buy_account.dissect(buffer, index, packet, parent)

  -- Buy Umir Regulation Id: Text
  index, buy_umir_regulation_id = cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_regulation_id.dissect(buffer, index, packet, parent)

  -- Buy Jitney: Binary
  index, buy_jitney = cboe_neoequities_orderentry_boe3_v1_0_19.buy_jitney.dissect(buffer, index, packet, parent)

  -- Buy Lei Customer Account: Text
  index, buy_lei_customer_account = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_customer_account.dissect(buffer, index, packet, parent)

  -- Buy Lei Algorithm Id: Text
  index, buy_lei_algorithm_id = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_algorithm_id.dissect(buffer, index, packet, parent)

  -- Buy Customer Lei: Text
  index, buy_customer_lei = cboe_neoequities_orderentry_boe3_v1_0_19.buy_customer_lei.dissect(buffer, index, packet, parent)

  -- Buy Broker Lei: Alphanumeric
  index, buy_broker_lei = cboe_neoequities_orderentry_boe3_v1_0_19.buy_broker_lei.dissect(buffer, index, packet, parent)

  -- Buy Lei Order Origin: Binary
  index, buy_lei_order_origin = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_order_origin.dissect(buffer, index, packet, parent)

  -- Buy Lei Routing Arrangement Indicator: Text
  index, buy_lei_routing_arrangement_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangement_indicator.dissect(buffer, index, packet, parent)

  -- Sell Umir Account Type: Text
  index, sell_umir_account_type = cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_account_type.dissect(buffer, index, packet, parent)

  -- Sell Account: Text
  index, sell_account = cboe_neoequities_orderentry_boe3_v1_0_19.sell_account.dissect(buffer, index, packet, parent)

  -- Sell Umir Regulation Id: Text
  index, sell_umir_regulation_id = cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_regulation_id.dissect(buffer, index, packet, parent)

  -- Sell Jitney: Binary
  index, sell_jitney = cboe_neoequities_orderentry_boe3_v1_0_19.sell_jitney.dissect(buffer, index, packet, parent)

  -- Sell Lei Customer Account: Text
  index, sell_lei_customer_account = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_customer_account.dissect(buffer, index, packet, parent)

  -- Sell Lei Algorithm Id: Text
  index, sell_lei_algorithm_id = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_algorithm_id.dissect(buffer, index, packet, parent)

  -- Sell Customer Lei: Text
  index, sell_customer_lei = cboe_neoequities_orderentry_boe3_v1_0_19.sell_customer_lei.dissect(buffer, index, packet, parent)

  -- Sell Broker Lei: Alphanumeric
  index, sell_broker_lei = cboe_neoequities_orderentry_boe3_v1_0_19.sell_broker_lei.dissect(buffer, index, packet, parent)

  -- Sell Lei Order Origin: Binary
  index, sell_lei_order_origin = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_order_origin.dissect(buffer, index, packet, parent)

  -- Sell Lei Routing Arrangement Indicator: Text
  index, sell_lei_routing_arrangement_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_routing_arrangement_indicator.dissect(buffer, index, packet, parent)

  -- Anonymous: Text
  index, anonymous = cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.dissect(buffer, index, packet, parent)

  -- Reserved: Reserved
  index, reserved = cboe_neoequities_orderentry_boe3_v1_0_19.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Ca Equities V 2
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_2.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.new_order_cross_ca_equities_v_2, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_2.fields(buffer, offset, packet, parent)
  end
end

-- New Order Cross Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_1 = {}

-- Size: New Order Cross Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cross_cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cross_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.bypass.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ncib.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cross_side.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_account_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_regulation_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_jitney.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_customer_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_algorithm_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_customer_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_broker_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_order_origin.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangemeant_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_account_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_regulation_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_jitney.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_customer_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_algorithm_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_customer_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_broker_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_order_origin.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_routing_arrangement_indicator.size

-- Display: New Order Cross Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Cross Cl Ord Id: Text
  index, cross_cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cross_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Text
  index, cross_type = cboe_neoequities_orderentry_boe3_v1_0_19.cross_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_neoequities_orderentry_boe3_v1_0_19.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.dissect(buffer, index, packet, parent)

  -- Settlement Type: Binary
  index, settlement_type = cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.dissect(buffer, index, packet, parent)

  -- Fut Settl Date: Date
  index, fut_settl_date = cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.dissect(buffer, index, packet, parent)

  -- Umir User Id: Alphanumeric
  index, umir_user_id = cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.dissect(buffer, index, packet, parent)

  -- Basket Trade: Binary
  index, basket_trade = cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.dissect(buffer, index, packet, parent)

  -- Program Trade: Text
  index, program_trade = cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.dissect(buffer, index, packet, parent)

  -- Non Resident: Text
  index, non_resident = cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.dissect(buffer, index, packet, parent)

  -- Bypass: Text
  index, bypass = cboe_neoequities_orderentry_boe3_v1_0_19.bypass.dissect(buffer, index, packet, parent)

  -- Ncib: Text
  index, ncib = cboe_neoequities_orderentry_boe3_v1_0_19.ncib.dissect(buffer, index, packet, parent)

  -- Cross Side: Text
  index, cross_side = cboe_neoequities_orderentry_boe3_v1_0_19.cross_side.dissect(buffer, index, packet, parent)

  -- Short Marking Exempt: Text
  index, short_marking_exempt = cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.dissect(buffer, index, packet, parent)

  -- Buy Umir Account Type: Text
  index, buy_umir_account_type = cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_account_type.dissect(buffer, index, packet, parent)

  -- Buy Account: Text
  index, buy_account = cboe_neoequities_orderentry_boe3_v1_0_19.buy_account.dissect(buffer, index, packet, parent)

  -- Buy Umir Regulation Id: Text
  index, buy_umir_regulation_id = cboe_neoequities_orderentry_boe3_v1_0_19.buy_umir_regulation_id.dissect(buffer, index, packet, parent)

  -- Buy Jitney: Binary
  index, buy_jitney = cboe_neoequities_orderentry_boe3_v1_0_19.buy_jitney.dissect(buffer, index, packet, parent)

  -- Buy Lei Customer Account: Text
  index, buy_lei_customer_account = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_customer_account.dissect(buffer, index, packet, parent)

  -- Buy Lei Algorithm Id: Text
  index, buy_lei_algorithm_id = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_algorithm_id.dissect(buffer, index, packet, parent)

  -- Buy Customer Lei: Text
  index, buy_customer_lei = cboe_neoequities_orderentry_boe3_v1_0_19.buy_customer_lei.dissect(buffer, index, packet, parent)

  -- Buy Broker Lei: Alphanumeric
  index, buy_broker_lei = cboe_neoequities_orderentry_boe3_v1_0_19.buy_broker_lei.dissect(buffer, index, packet, parent)

  -- Buy Lei Order Origin: Binary
  index, buy_lei_order_origin = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_order_origin.dissect(buffer, index, packet, parent)

  -- Buy Lei Routing Arrangemeant Indicator: Text
  index, buy_lei_routing_arrangemeant_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.buy_lei_routing_arrangemeant_indicator.dissect(buffer, index, packet, parent)

  -- Sell Umir Account Type: Text
  index, sell_umir_account_type = cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_account_type.dissect(buffer, index, packet, parent)

  -- Sell Account: Text
  index, sell_account = cboe_neoequities_orderentry_boe3_v1_0_19.sell_account.dissect(buffer, index, packet, parent)

  -- Sell Umir Regulation Id: Text
  index, sell_umir_regulation_id = cboe_neoequities_orderentry_boe3_v1_0_19.sell_umir_regulation_id.dissect(buffer, index, packet, parent)

  -- Sell Jitney: Binary
  index, sell_jitney = cboe_neoequities_orderentry_boe3_v1_0_19.sell_jitney.dissect(buffer, index, packet, parent)

  -- Sell Lei Customer Account: Text
  index, sell_lei_customer_account = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_customer_account.dissect(buffer, index, packet, parent)

  -- Sell Lei Algorithm Id: Text
  index, sell_lei_algorithm_id = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_algorithm_id.dissect(buffer, index, packet, parent)

  -- Sell Customer Lei: Text
  index, sell_customer_lei = cboe_neoequities_orderentry_boe3_v1_0_19.sell_customer_lei.dissect(buffer, index, packet, parent)

  -- Sell Broker Lei: Alphanumeric
  index, sell_broker_lei = cboe_neoequities_orderentry_boe3_v1_0_19.sell_broker_lei.dissect(buffer, index, packet, parent)

  -- Sell Lei Order Origin: Binary
  index, sell_lei_order_origin = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_order_origin.dissect(buffer, index, packet, parent)

  -- Sell Lei Routing Arrangement Indicator: Text
  index, sell_lei_routing_arrangement_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.sell_lei_routing_arrangement_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.new_order_cross_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_order_ca_equities_v_1 = {}

-- Size: Cancel Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_order_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.size

-- Display: Cancel Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_order_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_order_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.cancel_order_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.cancel_order_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_order_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_order_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.cancel_order_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.modify_order_ca_equities_v_1 = {}

-- Size: Modify Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.modify_order_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cancel_orig_on_reject.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.size

-- Display: Modify Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.modify_order_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.modify_order_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_neoequities_orderentry_boe3_v1_0_19.account.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_neoequities_orderentry_boe3_v1_0_19.price.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.dissect(buffer, index, packet, parent)

  -- Lei Order Origin: Binary
  index, lei_order_origin = cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.dissect(buffer, index, packet, parent)

  -- Lei Routing Arrangement Indicator: Text
  index, lei_routing_arrangement_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.dissect(buffer, index, packet, parent)

  -- Umir Account Type: Text
  index, umir_account_type = cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.dissect(buffer, index, packet, parent)

  -- Lei Customer Account: Text
  index, lei_customer_account = cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.dissect(buffer, index, packet, parent)

  -- Lei Algorithm Id: Text
  index, lei_algorithm_id = cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.dissect(buffer, index, packet, parent)

  -- Customer Lei: Text
  index, customer_lei = cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.dissect(buffer, index, packet, parent)

  -- Broker Lei: Alphanumeric
  index, broker_lei = cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.dissect(buffer, index, packet, parent)

  -- Cancel Orig On Reject: Text
  index, cancel_orig_on_reject = cboe_neoequities_orderentry_boe3_v1_0_19.cancel_orig_on_reject.dissect(buffer, index, packet, parent)

  -- True Min Qty: Binary
  index, true_min_qty = cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.modify_order_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.modify_order_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.modify_order_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.modify_order_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.modify_order_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- New Order Ca Equities V 2
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_2 = {}

-- Size: New Order Ca Equities V 2
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_2.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.side.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.jitney.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.bypass.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ncib.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.peg_difference.size

-- Display: New Order Ca Equities V 2
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Ca Equities V 2
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Account: Text
  index, account = cboe_neoequities_orderentry_boe3_v1_0_19.account.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.dissect(buffer, index, packet, parent)

  -- Handling Inst: Text
  index, handling_inst = cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: Text
  index, ord_type = cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_neoequities_orderentry_boe3_v1_0_19.price.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_neoequities_orderentry_boe3_v1_0_19.side.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.dissect(buffer, index, packet, parent)

  -- Settlement Type: Binary
  index, settlement_type = cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.dissect(buffer, index, packet, parent)

  -- Fut Settl Date: Date
  index, fut_settl_date = cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.dissect(buffer, index, packet, parent)

  -- Lei Order Origin: Binary
  index, lei_order_origin = cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.dissect(buffer, index, packet, parent)

  -- Lei Routing Arrangement Indicator: Text
  index, lei_routing_arrangement_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.dissect(buffer, index, packet, parent)

  -- Umir Account Type: Text
  index, umir_account_type = cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.dissect(buffer, index, packet, parent)

  -- Umir User Id: Alphanumeric
  index, umir_user_id = cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.dissect(buffer, index, packet, parent)

  -- Basket Trade: Binary
  index, basket_trade = cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.dissect(buffer, index, packet, parent)

  -- Program Trade: Text
  index, program_trade = cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.dissect(buffer, index, packet, parent)

  -- Jitney: Binary
  index, jitney = cboe_neoequities_orderentry_boe3_v1_0_19.jitney.dissect(buffer, index, packet, parent)

  -- Anonymous: Text
  index, anonymous = cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.dissect(buffer, index, packet, parent)

  -- Umir Regulation Id: Text
  index, umir_regulation_id = cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.dissect(buffer, index, packet, parent)

  -- Non Resident: Text
  index, non_resident = cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.dissect(buffer, index, packet, parent)

  -- Bypass: Text
  index, bypass = cboe_neoequities_orderentry_boe3_v1_0_19.bypass.dissect(buffer, index, packet, parent)

  -- Ncib: Text
  index, ncib = cboe_neoequities_orderentry_boe3_v1_0_19.ncib.dissect(buffer, index, packet, parent)

  -- No Trade Feat: Text
  index, no_trade_feat = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.dissect(buffer, index, packet, parent)

  -- No Trade Key: Text
  index, no_trade_key = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.dissect(buffer, index, packet, parent)

  -- Short Marking Exempt: Text
  index, short_marking_exempt = cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.dissect(buffer, index, packet, parent)

  -- Lei Customer Account: Text
  index, lei_customer_account = cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.dissect(buffer, index, packet, parent)

  -- Lei Algorithm Id: Text
  index, lei_algorithm_id = cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.dissect(buffer, index, packet, parent)

  -- Customer Lei: Text
  index, customer_lei = cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.dissect(buffer, index, packet, parent)

  -- Broker Lei: Alphanumeric
  index, broker_lei = cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.dissect(buffer, index, packet, parent)

  -- Display Indicator: Text
  index, display_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.dissect(buffer, index, packet, parent)

  -- Matching State Participation: Text
  index, matching_state_participation = cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.dissect(buffer, index, packet, parent)

  -- True Min Qty: Binary
  index, true_min_qty = cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.dissect(buffer, index, packet, parent)

  -- Peg Difference: BinaryPrice
  index, peg_difference = cboe_neoequities_orderentry_boe3_v1_0_19.peg_difference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Ca Equities V 2
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_2.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.new_order_ca_equities_v_2, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_2.fields(buffer, offset, packet, parent)
  end
end

-- New Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_1 = {}

-- Size: New Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_1.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.price.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.side.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.symbol.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.jitney.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.bypass.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.ncib.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.size

-- Display: New Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Account: Text
  index, account = cboe_neoequities_orderentry_boe3_v1_0_19.account.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_neoequities_orderentry_boe3_v1_0_19.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Broker Id: Binary
  index, broker_id = cboe_neoequities_orderentry_boe3_v1_0_19.broker_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_neoequities_orderentry_boe3_v1_0_19.exec_inst.dissect(buffer, index, packet, parent)

  -- Handling Inst: Text
  index, handling_inst = cboe_neoequities_orderentry_boe3_v1_0_19.handling_inst.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_neoequities_orderentry_boe3_v1_0_19.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: Text
  index, ord_type = cboe_neoequities_orderentry_boe3_v1_0_19.ord_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_neoequities_orderentry_boe3_v1_0_19.price.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_neoequities_orderentry_boe3_v1_0_19.stop_px.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_neoequities_orderentry_boe3_v1_0_19.side.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_neoequities_orderentry_boe3_v1_0_19.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_neoequities_orderentry_boe3_v1_0_19.time_in_force.dissect(buffer, index, packet, parent)

  -- Settlement Type: Binary
  index, settlement_type = cboe_neoequities_orderentry_boe3_v1_0_19.settlement_type.dissect(buffer, index, packet, parent)

  -- Fut Settl Date: Date
  index, fut_settl_date = cboe_neoequities_orderentry_boe3_v1_0_19.fut_settl_date.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_neoequities_orderentry_boe3_v1_0_19.ex_destination.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_neoequities_orderentry_boe3_v1_0_19.max_floor.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_neoequities_orderentry_boe3_v1_0_19.expire_time.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_neoequities_orderentry_boe3_v1_0_19.expire_date.dissect(buffer, index, packet, parent)

  -- Lei Order Origin: Binary
  index, lei_order_origin = cboe_neoequities_orderentry_boe3_v1_0_19.lei_order_origin.dissect(buffer, index, packet, parent)

  -- Lei Routing Arrangement Indicator: Text
  index, lei_routing_arrangement_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.lei_routing_arrangement_indicator.dissect(buffer, index, packet, parent)

  -- Umir Account Type: Text
  index, umir_account_type = cboe_neoequities_orderentry_boe3_v1_0_19.umir_account_type.dissect(buffer, index, packet, parent)

  -- Umir User Id: Alphanumeric
  index, umir_user_id = cboe_neoequities_orderentry_boe3_v1_0_19.umir_user_id.dissect(buffer, index, packet, parent)

  -- Basket Trade: Binary
  index, basket_trade = cboe_neoequities_orderentry_boe3_v1_0_19.basket_trade.dissect(buffer, index, packet, parent)

  -- Program Trade: Text
  index, program_trade = cboe_neoequities_orderentry_boe3_v1_0_19.program_trade.dissect(buffer, index, packet, parent)

  -- Jitney: Binary
  index, jitney = cboe_neoequities_orderentry_boe3_v1_0_19.jitney.dissect(buffer, index, packet, parent)

  -- Anonymous: Text
  index, anonymous = cboe_neoequities_orderentry_boe3_v1_0_19.anonymous.dissect(buffer, index, packet, parent)

  -- Umir Regulation Id: Text
  index, umir_regulation_id = cboe_neoequities_orderentry_boe3_v1_0_19.umir_regulation_id.dissect(buffer, index, packet, parent)

  -- Non Resident: Text
  index, non_resident = cboe_neoequities_orderentry_boe3_v1_0_19.non_resident.dissect(buffer, index, packet, parent)

  -- Bypass: Text
  index, bypass = cboe_neoequities_orderentry_boe3_v1_0_19.bypass.dissect(buffer, index, packet, parent)

  -- Ncib: Text
  index, ncib = cboe_neoequities_orderentry_boe3_v1_0_19.ncib.dissect(buffer, index, packet, parent)

  -- No Trade Feat: Text
  index, no_trade_feat = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_feat.dissect(buffer, index, packet, parent)

  -- No Trade Key: Text
  index, no_trade_key = cboe_neoequities_orderentry_boe3_v1_0_19.no_trade_key.dissect(buffer, index, packet, parent)

  -- Short Marking Exempt: Text
  index, short_marking_exempt = cboe_neoequities_orderentry_boe3_v1_0_19.short_marking_exempt.dissect(buffer, index, packet, parent)

  -- Lei Customer Account: Text
  index, lei_customer_account = cboe_neoequities_orderentry_boe3_v1_0_19.lei_customer_account.dissect(buffer, index, packet, parent)

  -- Lei Algorithm Id: Text
  index, lei_algorithm_id = cboe_neoequities_orderentry_boe3_v1_0_19.lei_algorithm_id.dissect(buffer, index, packet, parent)

  -- Customer Lei: Text
  index, customer_lei = cboe_neoequities_orderentry_boe3_v1_0_19.customer_lei.dissect(buffer, index, packet, parent)

  -- Broker Lei: Alphanumeric
  index, broker_lei = cboe_neoequities_orderentry_boe3_v1_0_19.broker_lei.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_neoequities_orderentry_boe3_v1_0_19.routing_inst.dissect(buffer, index, packet, parent)

  -- Display Indicator: Text
  index, display_indicator = cboe_neoequities_orderentry_boe3_v1_0_19.display_indicator.dissect(buffer, index, packet, parent)

  -- Matching State Participation: Text
  index, matching_state_participation = cboe_neoequities_orderentry_boe3_v1_0_19.matching_state_participation.dissect(buffer, index, packet, parent)

  -- True Min Qty: Binary
  index, true_min_qty = cboe_neoequities_orderentry_boe3_v1_0_19.true_min_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Ca Equities V 1
cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.new_order_ca_equities_v_1, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
cboe_neoequities_orderentry_boe3_v1_0_19.client_heartbeat = {}

-- Display: Client Heartbeat
cboe_neoequities_orderentry_boe3_v1_0_19.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
cboe_neoequities_orderentry_boe3_v1_0_19.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Request
cboe_neoequities_orderentry_boe3_v1_0_19.logout_request = {}

-- Display: Logout Request
cboe_neoequities_orderentry_boe3_v1_0_19.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
cboe_neoequities_orderentry_boe3_v1_0_19.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = cboe_neoequities_orderentry_boe3_v1_0_19.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Request Message
cboe_neoequities_orderentry_boe3_v1_0_19.login_request_message = {}

-- Calculate size of: Login Request Message
cboe_neoequities_orderentry_boe3_v1_0_19.login_request_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_neoequities_orderentry_boe3_v1_0_19.session_id.size

  index = index + cboe_neoequities_orderentry_boe3_v1_0_19.session_sub_id.size

  index = index + cboe_neoequities_orderentry_boe3_v1_0_19.password.size

  index = index + cboe_neoequities_orderentry_boe3_v1_0_19.replay_unspecified_unit.size

  index = index + cboe_neoequities_orderentry_boe3_v1_0_19.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Request Message
cboe_neoequities_orderentry_boe3_v1_0_19.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_neoequities_orderentry_boe3_v1_0_19.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Ascii String
  index, session_id = cboe_neoequities_orderentry_boe3_v1_0_19.session_id.dissect(buffer, index, packet, parent)

  -- Session Sub Id: 4 Byte Ascii String
  index, session_sub_id = cboe_neoequities_orderentry_boe3_v1_0_19.session_sub_id.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_neoequities_orderentry_boe3_v1_0_19.password.dissect(buffer, index, packet, parent)

  -- Replay Unspecified Unit: 1 Byte Ascii String Enum with 3 values
  index, replay_unspecified_unit = cboe_neoequities_orderentry_boe3_v1_0_19.replay_unspecified_unit.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_neoequities_orderentry_boe3_v1_0_19.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_neoequities_orderentry_boe3_v1_0_19.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Request Message
cboe_neoequities_orderentry_boe3_v1_0_19.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.login_request_message, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Firm Message
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message = {}

-- Dissect: Firm Message
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message.dissect = function(buffer, offset, packet, parent, firm_message_type)
  -- Dissect Login Request Message
  if firm_message_type == 1 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if firm_message_type == 2 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if firm_message_type == 3 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Ca Equities V 1
  if firm_message_type == 6001 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Ca Equities V 2
  if firm_message_type == 6006 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.new_order_ca_equities_v_2.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Ca Equities V 1
  if firm_message_type == 6002 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.modify_order_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Ca Equities V 1
  if firm_message_type == 6003 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.cancel_order_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Ca Equities V 1
  if firm_message_type == 6004 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Ca Equities V 2
  if firm_message_type == 6005 then
    return cboe_neoequities_orderentry_boe3_v1_0_19.new_order_cross_ca_equities_v_2.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Firm Message Header
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_header = {}

-- Size: Firm Message Header
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_header.size =
  cboe_neoequities_orderentry_boe3_v1_0_19.start_of_message.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.message_length.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_type.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.matching_unit.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.reserved_field.size + 
  cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.size

-- Display: Firm Message Header
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Message Header
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_neoequities_orderentry_boe3_v1_0_19.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_neoequities_orderentry_boe3_v1_0_19.message_length.dissect(buffer, index, packet, parent)

  -- Firm Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, firm_message_type = cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_neoequities_orderentry_boe3_v1_0_19.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_neoequities_orderentry_boe3_v1_0_19.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_neoequities_orderentry_boe3_v1_0_19.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Firm Message Header
cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19.fields.firm_message_header, buffer(offset, 0))
    local index = cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Firm Packet
cboe_neoequities_orderentry_boe3_v1_0_19.firm_packet = {}

-- Verify required size of Tcp packet
cboe_neoequities_orderentry_boe3_v1_0_19.firm_packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_header.size
end

-- Dissect Firm Packet
cboe_neoequities_orderentry_boe3_v1_0_19.firm_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Firm Message Header: Struct of 6 fields
  index, firm_message_header = cboe_neoequities_orderentry_boe3_v1_0_19.firm_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Firm Message Type
  local firm_message_type = buffer(index - 8, 2):le_uint()

  -- Firm Message: Runtime Type with 9 branches
  index = cboe_neoequities_orderentry_boe3_v1_0_19.firm_message.dissect(buffer, index, packet, parent, firm_message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_neoequities_orderentry_boe3_v1_0_19.init()
end

-- Connection roles for Cboe NeoEquities OrderEntry Boe3 1.0.19: Firm is the initiator, Exchange is the acceptor
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
cboe_neoequities_orderentry_boe3_v1_0_19.role = function(packet)
  if omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.acceptor_port

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

  if omi_cboe_neoequities_orderentry_boe3_v1_0_19.prefs.swap_sides then
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
cboe_neoequities_orderentry_boe3_v1_0_19.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Cboe NeoEquities OrderEntry Boe3 1.0.19
function omi_cboe_neoequities_orderentry_boe3_v1_0_19.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_neoequities_orderentry_boe3_v1_0_19.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_neoequities_orderentry_boe3_v1_0_19, buffer(), omi_cboe_neoequities_orderentry_boe3_v1_0_19.description, "("..buffer:len().." Bytes)")

  local role = cboe_neoequities_orderentry_boe3_v1_0_19.role(packet)

  if role == "initiator" then
    return cboe_neoequities_orderentry_boe3_v1_0_19.firm_packet.dissect(buffer, packet, protocol)
  end

  return cboe_neoequities_orderentry_boe3_v1_0_19.exchange_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Firm Packet: would its message dispatch accept this frame?
cboe_neoequities_orderentry_boe3_v1_0_19.firm_packet.fingerprint = function(buffer)
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

  -- New Order Ca Equities V 1
  if firm_message_type == 6001 then
    return true
  end

  -- New Order Ca Equities V 2
  if firm_message_type == 6006 then
    return true
  end

  -- Modify Order Ca Equities V 1
  if firm_message_type == 6002 then
    return true
  end

  -- Cancel Order Ca Equities V 1
  if firm_message_type == 6003 then
    return true
  end

  -- New Order Cross Ca Equities V 1
  if firm_message_type == 6004 then
    return true
  end

  -- New Order Cross Ca Equities V 2
  if firm_message_type == 6005 then
    return true
  end

  return false
end

-- Fingerprint of Exchange Packet: would its message dispatch accept this frame?
cboe_neoequities_orderentry_boe3_v1_0_19.exchange_packet.fingerprint = function(buffer)
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

  -- Order Acknowledgement Ca Equities V 1
  if exchange_message_type == 6501 then
    return true
  end

  -- Order Rejected Ca Equities V 1
  if exchange_message_type == 6502 then
    return true
  end

  -- Order Modified Ca Equities V 1
  if exchange_message_type == 6503 then
    return true
  end

  -- Modify Rejected Ca Equities V 1
  if exchange_message_type == 6504 then
    return true
  end

  -- Order Restated Ca Equities V 1
  if exchange_message_type == 6505 then
    return true
  end

  -- Order Execution Ca Equities V 1
  if exchange_message_type == 6506 then
    return true
  end

  -- Order Cancelled Ca Equities V 1
  if exchange_message_type == 6507 then
    return true
  end

  -- Cancel Rejected Ca Equities V 1
  if exchange_message_type == 6508 then
    return true
  end

  -- Carried Restatement Ca Equities V 1
  if exchange_message_type == 6510 then
    return true
  end

  -- Done For Day Ca Equities V 1
  if exchange_message_type == 6511 then
    return true
  end

  -- Trade Cancel Correct Ca Equities V 1
  if exchange_message_type == 6512 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe NeoEquities OrderEntry Boe3 1.0.19 (Tcp)
local function omi_cboe_neoequities_orderentry_boe3_v1_0_19_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_neoequities_orderentry_boe3_v1_0_19.firm_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not cboe_neoequities_orderentry_boe3_v1_0_19.firm_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_neoequities_orderentry_boe3_v1_0_19
  omi_cboe_neoequities_orderentry_boe3_v1_0_19.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cboe NeoEquities OrderEntry Boe3 1.0.19 (Tcp)
local function omi_cboe_neoequities_orderentry_boe3_v1_0_19_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_neoequities_orderentry_boe3_v1_0_19.exchange_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not cboe_neoequities_orderentry_boe3_v1_0_19.exchange_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_neoequities_orderentry_boe3_v1_0_19
  omi_cboe_neoequities_orderentry_boe3_v1_0_19.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cboe NeoEquities OrderEntry Boe3 1.0.19 (Tcp): apply the heuristic of the sender's connection role
local function omi_cboe_neoequities_orderentry_boe3_v1_0_19_tcp_heuristic(buffer, packet, parent)
  local role = cboe_neoequities_orderentry_boe3_v1_0_19.role(packet)
  local initiator = omi_cboe_neoequities_orderentry_boe3_v1_0_19_tcp_initiator_heuristic
  local acceptor = omi_cboe_neoequities_orderentry_boe3_v1_0_19_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  cboe_neoequities_orderentry_boe3_v1_0_19.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  cboe_neoequities_orderentry_boe3_v1_0_19.swap(packet)

  return false
end

-- Register Heuristics for Cboe NeoEquities OrderEntry Boe3 1.0.19
omi_cboe_neoequities_orderentry_boe3_v1_0_19:register_heuristic("tcp", omi_cboe_neoequities_orderentry_boe3_v1_0_19_tcp_heuristic)

-- Register Cboe NeoEquities OrderEntry Boe3 1.0.19 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_neoequities_orderentry_boe3_v1_0_19)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.19
--   Date: Wednesday, December 3, 2025
--   Specification: Cboe Canada Equities BOE Specification.pdf
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
