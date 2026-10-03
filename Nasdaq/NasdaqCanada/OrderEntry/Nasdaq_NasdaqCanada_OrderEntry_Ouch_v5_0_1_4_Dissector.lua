-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Protocol
local omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4 = Proto("Omi.Nasdaq.NasdaqCanada.OrderEntry.Ouch.v5.0.1.4", "Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4")

-- Protocol table
local nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Fields
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.acceptedsession", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account = ProtoField.new("Account", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.account", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_request_appendage = ProtoField.new("Account Query Request Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryrequestappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_request_optional_field = ProtoField.new("Account Query Request Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryrequestoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_response_appendage = ProtoField.new("Account Query Response Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryresponseappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_response_optional_field = ProtoField.new("Account Query Response Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryresponseoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.algorithm_id = ProtoField.new("Algorithm Id", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.algorithmid", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.allow_conditional = ProtoField.new("Allow Conditional", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.allowconditional", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.anonymous = ProtoField.new("Anonymous", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.anonymous", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.appendage_length = ProtoField.new("Appendage Length", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.appendagelength", ftypes.UINT16)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.basket_trade = ProtoField.new("Basket Trade", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.baskettrade", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.broker_lei = ProtoField.new("Broker Lei", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.brokerlei", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.broker_pref = ProtoField.new("Broker Pref", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.brokerpref", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.bypass = ProtoField.new("Bypass", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.bypass", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_order_request_appendage = ProtoField.new("Cancel Order Request Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelorderrequestappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_order_request_optional_field = ProtoField.new("Cancel Order Request Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelorderrequestoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reason = ProtoField.new("Cancel Reason", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelreason", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reject_appendage = ProtoField.new("Cancel Reject Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelrejectappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reject_optional_field = ProtoField.new("Cancel Reject Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelrejectoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.clientpackettype", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.conditional_order = ProtoField.new("Conditional Order", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.conditionalorder", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.contra_broker = ProtoField.new("Contra Broker", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.contrabroker", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.corrected_trade_appendage = ProtoField.new("Corrected Trade Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.correctedtradeappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.corrected_trade_optional_field = ProtoField.new("Corrected Trade Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.correctedtradeoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cum_rate = ProtoField.new("Cum Rate", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cumrate", ftypes.UINT16)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.customer_account = ProtoField.new("Customer Account", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.customeraccount", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.customer_lei = ProtoField.new("Customer Lei", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.customerlei", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cxd_connect = ProtoField.new("Cxd Connect", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cxdconnect", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.debugtext", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.decrement_shares = ProtoField.new("Decrement Shares", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.decrementshares", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.display_range = ProtoField.new("Display Range", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.displayrange", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.enter_order_appendage = ProtoField.new("Enter Order Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.enterorderappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.enter_order_optional_field = ProtoField.new("Enter Order Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.enterorderoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.event_code = ProtoField.new("Event Code", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.eventcode", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.ex_destination = ProtoField.new("Ex Destination", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.exdestination", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.exec_broker = ProtoField.new("Exec Broker", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.execbroker", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.execute_match = ProtoField.new("Execute Match", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.executematch", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.expire_time = ProtoField.new("Expire Time", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.expiretime", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.firm_up_id = ProtoField.new("Firm Up Id", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.firmupid", ftypes.UINT64)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.gef_eligible = ProtoField.new("Gef Eligible", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.gefeligible", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.handl_inst = ProtoField.new("Handl Inst", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.handlinst", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.jitney = ProtoField.new("Jitney", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.jitney", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.liquidityflag", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.match_number = ProtoField.new("Match Number", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.matchnumber", ftypes.UINT64)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.max_floor = ProtoField.new("Max Floor", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.maxfloor", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.max_rate = ProtoField.new("Max Rate", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.maxrate", ftypes.UINT16)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.min_qty = ProtoField.new("Min Qty", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.minqty", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.min_qty_type = ProtoField.new("Min Qty Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.minqtytype", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.min_rate = ProtoField.new("Min Rate", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.minrate", ftypes.UINT16)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.nbbo_setter = ProtoField.new("Nbbo Setter", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.nbbosetter", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.next_user_ref_num = ProtoField.new("Next User Ref Num", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.nextuserrefnum", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.no_trade_feat = ProtoField.new("No Trade Feat", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.notradefeat", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.no_trade_key = ProtoField.new("No Trade Key", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.notradekey", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.optional_field_length = ProtoField.new("Optional Field Length", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.optionalfieldlength", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_accepted_appendage = ProtoField.new("Order Accepted Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderacceptedappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_accepted_optional_field = ProtoField.new("Order Accepted Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderacceptedoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_canceled_appendage = ProtoField.new("Order Canceled Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.ordercanceledappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_canceled_optional_field = ProtoField.new("Order Canceled Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.ordercanceledoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_executed_appendage = ProtoField.new("Order Executed Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderexecutedappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_executed_optional_field = ProtoField.new("Order Executed Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderexecutedoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_origination = ProtoField.new("Order Origination", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderorigination", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_qty = ProtoField.new("Order Qty", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderqty", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_replaced_appendage = ProtoField.new("Order Replaced Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderreplacedappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_replaced_optional_field = ProtoField.new("Order Replaced Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderreplacedoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_restated_appendage = ProtoField.new("Order Restated Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderrestatedappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_restated_optional_field = ProtoField.new("Order Restated Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderrestatedoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_state = ProtoField.new("Order State", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderstate", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.orig_user_ref_num = ProtoField.new("Orig User Ref Num", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.origuserrefnum", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.packetlength", ftypes.UINT16)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.password = ProtoField.new("Password", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.password", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.peg_offset = ProtoField.new("Peg Offset", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.pegoffset", ftypes.DOUBLE)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.peg_type = ProtoField.new("Peg Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.pegtype", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.po_comment = ProtoField.new("Po Comment", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.pocomment", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.price = ProtoField.new("Price", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.price", ftypes.DOUBLE)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.principal_trade = ProtoField.new("Principal Trade", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.principaltrade", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.program_trade = ProtoField.new("Program Trade", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.programtrade", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.pure_stream_connect = ProtoField.new("Pure Stream Connect", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.purestreamconnect", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.quantity = ProtoField.new("Quantity", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.quantity", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.quantitypreventedfromtrading", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.reject_reason = ProtoField.new("Reject Reason", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.rejectreason", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.rejectreasoncode", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.rejected_order_appendage = ProtoField.new("Rejected Order Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.rejectedorderappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.rejected_order_optional_field = ProtoField.new("Rejected Order Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.rejectedorderoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.replace_order_request_appendage = ProtoField.new("Replace Order Request Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.replaceorderrequestappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.replace_order_request_optional_field = ProtoField.new("Replace Order Request Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.replaceorderrequestoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.reprice_reason = ProtoField.new("Reprice Reason", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.repricereason", ftypes.UINT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.requestedsession", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.restate_reason = ProtoField.new("Restate Reason", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.restatereason", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.routing_arrangement_indicator = ProtoField.new("Routing Arrangement Indicator", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.routingarrangementindicator", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.routing_strategy = ProtoField.new("Routing Strategy", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.routingstrategy", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.secondaryorderid", ftypes.UINT64)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.serverpackettype", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.short_marking_exempt = ProtoField.new("Short Marking Exempt", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.shortmarkingexempt", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.side = ProtoField.new("Side", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.side", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.stp_canceled_appendage = ProtoField.new("Stp Canceled Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.stpcanceledappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.stp_canceled_optional_field = ProtoField.new("Stp Canceled Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.stpcanceledoptionalfield", ftypes.INT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.symbol = ProtoField.new("Symbol", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.symbol", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.target_strategy = ProtoField.new("Target Strategy", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.targetstrategy", ftypes.UINT16)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.timeinforce", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.timestamp", ftypes.UINT64)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.tsxncib = ProtoField.new("Tsxncib", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.tsxncib", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.umir_account_type = ProtoField.new("Umir Account Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.umiraccounttype", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.umir_regulation_id = ProtoField.new("Umir Regulation Id", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.umirregulationid", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.umir_user_id = ProtoField.new("Umir User Id", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.umiruserid", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.user_ref_idx = ProtoField.new("User Ref Idx", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.userrefidx", ftypes.UINT8)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.user_ref_num = ProtoField.new("User Ref Num", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.userrefnum", ftypes.UINT32)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.username = ProtoField.new("Username", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.username", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.wash_trade = ProtoField.new("Wash Trade", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.washtrade", ftypes.STRING)

-- Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Framing
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_packet = ProtoField.new("Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.clientpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.clientpacketheader", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_packet = ProtoField.new("Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.serverpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.serverpacketheader", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq NasdaqCanada OrderEntry 5.0.1.4 Application Messages
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_request_message = ProtoField.new("Account Query Request Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryrequestmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_response_message = ProtoField.new("Account Query Response Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryresponsemessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_order_request_message = ProtoField.new("Cancel Order Request Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelorderrequestmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reject_message = ProtoField.new("Cancel Reject Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelrejectmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.corrected_trade_message = ProtoField.new("Corrected Trade Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.correctedtrademessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.enterordermessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderacceptedmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.ordercanceledmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderreplacedmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_restated_message = ProtoField.new("Order Restated Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderrestatedmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.rejectedordermessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.replace_order_request_message = ProtoField.new("Replace Order Request Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.replaceorderrequestmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.stp_canceled_message = ProtoField.new("Stp Canceled Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.stpcanceledmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.systemeventmessage", ftypes.STRING)

-- Nasdaq NasdaqCanada OrderEntry 5.0.1.4 Session Messages
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.clientheartbeat", ftypes.BYTES)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.debugpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.endofsession", ftypes.BYTES)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.loginrequestpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.logoutrequest", ftypes.BYTES)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.serverheartbeat", ftypes.BYTES)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Generated Fields
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp_format = 2

-- Hours behind UTC (UTC) for midnight calculation
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.utc_offset_hours = 0

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

-- Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Show Options
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 0, "Hours behind UTC (UTC) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_headers then
    show.headers = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_structs then
    show.structs = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_sequences then
    show.sequences = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.show_sequences
  end
  if nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp_format ~= omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.timestamp_format then
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp_format = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.timestamp_format
  end
  if nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.utc_offset_hours ~= omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.utc_offset_hours then
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.utc_offset_hours = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation = {}
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stream_frame = nil
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.data = function(packet)
  local key = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.key(packet)
  local data = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.current = nil


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
-- Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_session = {}

-- Size: Accepted Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Account
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account = {}

-- Size: Account
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account.size = 15

-- Display: Account
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account, range, value, display)

  return offset + length, value
end

-- Account Query Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field = {}

-- Size: Account Query Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.size = 1

-- Display: Account Query Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.display = function(value)
  if value == 37 then
    return "Account Query Request Optional Field: UserRefIdx (37)"
  end

  return "Account Query Request Optional Field: Unknown("..value..")"
end

-- Dissect: Account Query Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_request_optional_field, range, value, display)

  return offset + length, value
end

-- Account Query Response Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field = {}

-- Size: Account Query Response Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.size = 1

-- Display: Account Query Response Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.display = function(value)
  if value == 37 then
    return "Account Query Response Optional Field: UserRefIdx (37)"
  end

  return "Account Query Response Optional Field: Unknown("..value..")"
end

-- Dissect: Account Query Response Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_response_optional_field, range, value, display)

  return offset + length, value
end

-- Algorithm Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id = {}

-- Size: Algorithm Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.size = 20

-- Display: Algorithm Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.display = function(value)
  return "Algorithm Id: "..value
end

-- Dissect: Algorithm Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.algorithm_id, range, value, display)

  return offset + length, value
end

-- Allow Conditional
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional = {}

-- Size: Allow Conditional
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.size = 1

-- Display: Allow Conditional
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.display = function(value)
  if value == "N" then
    return "Allow Conditional: No (N)"
  end
  if value == "Y" then
    return "Allow Conditional: Yes (Y)"
  end

  return "Allow Conditional: Unknown("..value..")"
end

-- Dissect: Allow Conditional
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.allow_conditional, range, value, display)

  return offset + length, value
end

-- Anonymous
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous = {}

-- Size: Anonymous
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.size = 1

-- Display: Anonymous
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.display = function(value)
  if value == "N" then
    return "Anonymous: No (N)"
  end
  if value == "Y" then
    return "Anonymous: Yes (Y)"
  end

  return "Anonymous: Unknown("..value..")"
end

-- Dissect: Anonymous
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.anonymous, range, value, display)

  return offset + length, value
end

-- Appendage Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length = {}

-- Size: Appendage Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.size = 2

-- Display: Appendage Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.display = function(value)
  return "Appendage Length: "..value
end

-- Dissect: Appendage Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.appendage_length, range, value, display)

  return offset + length, value
end

-- Basket Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade = {}

-- Size: Basket Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.size = 1

-- Display: Basket Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.display = function(value)
  if value == "N" then
    return "Basket Trade: No (N)"
  end
  if value == "Y" then
    return "Basket Trade: Yes (Y)"
  end

  return "Basket Trade: Unknown("..value..")"
end

-- Dissect: Basket Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.basket_trade, range, value, display)

  return offset + length, value
end

-- Broker Lei
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei = {}

-- Size: Broker Lei
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.size = 20

-- Display: Broker Lei
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.display = function(value)
  return "Broker Lei: "..value
end

-- Dissect: Broker Lei
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.broker_lei, range, value, display)

  return offset + length, value
end

-- Broker Pref
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref = {}

-- Size: Broker Pref
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref.size = 1

-- Display: Broker Pref
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref.display = function(value)
  if value == "N" then
    return "Broker Pref: No (N)"
  end
  if value == "Y" then
    return "Broker Pref: Yes (Y)"
  end

  return "Broker Pref: Unknown("..value..")"
end

-- Dissect: Broker Pref
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.broker_pref, range, value, display)

  return offset + length, value
end

-- Bypass
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass = {}

-- Size: Bypass
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.size = 1

-- Display: Bypass
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.display = function(value)
  if value == "N" then
    return "Bypass: No (N)"
  end
  if value == "Y" then
    return "Bypass: Yes (Y)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.bypass, range, value, display)

  return offset + length, value
end

-- Cancel Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field = {}

-- Size: Cancel Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.size = 1

-- Display: Cancel Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.display = function(value)
  if value == 37 then
    return "Cancel Order Request Optional Field: UserRefIdx (37)"
  end

  return "Cancel Order Request Optional Field: Unknown("..value..")"
end

-- Dissect: Cancel Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_order_request_optional_field, range, value, display)

  return offset + length, value
end

-- Cancel Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason = {}

-- Size: Cancel Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.size = 4

-- Display: Cancel Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.display = function(value)
  if value == "0" then
    return "Cancel Reason: Default Value (0)"
  end
  if value == "#ADM" then
    return "Cancel Reason: Admin Cancel (#ADM)"
  end
  if value == "#IOC" then
    return "Cancel Reason: Cancelled Ioc (#IOC)"
  end
  if value == "#STP" then
    return "Cancel Reason: Cancelled Stp (#STP)"
  end
  if value == "#TME" then
    return "Cancel Reason: Cancelled Tme (#TME)"
  end
  if value == "#DNR" then
    return "Cancel Reason: Cancelled To Prevent Lockcross (#DNR)"
  end
  if value == "#MKT" then
    return "Cancel Reason: Market Closed Mkt (#MKT)"
  end
  if value == "#DST" then
    return "Cancel Reason: Destination Matcher Closed (#DST)"
  end
  if value == "#PGF" then
    return "Cancel Reason: Pending Gef (#PGF)"
  end
  if value == "#GEF" then
    return "Cancel Reason: Gef (#GEF)"
  end
  if value == "OTHR" then
    return "Cancel Reason: Cancelled Othr (OTHR)"
  end
  if value == "#COD" then
    return "Cancel Reason: Cancelled On Disconnect (#COD)"
  end
  if value == "USER" then
    return "Cancel Reason: Cancelled User (USER)"
  end
  if value == "TLTC" then
    return "Cancel Reason: Too Late To Cancel (TLTC)"
  end
  if value == "RISK" then
    return "Cancel Reason: Risk (RISK)"
  end
  if value == "EMPT" then
    return "Cancel Reason: Cancelled Due To Market Place Threshold (EMPT)"
  end
  if value == "EREP" then
    return "Cancel Reason: Exceeded Reprice Threshold (EREP)"
  end
  if value == "rADM" then
    return "Cancel Reason: Sor Admin Action (rADM)"
  end
  if value == "rDNA" then
    return "Cancel Reason: Sor Dest Not Available (rDNA)"
  end
  if value == "rDQM" then
    return "Cancel Reason: Sor Dest Quantity Mismatch (rDQM)"
  end
  if value == "rDRJ" then
    return "Cancel Reason: Sor Dest Reject (rDRJ)"
  end
  if value == "rMPA" then
    return "Cancel Reason: Sor Max Post Attempts (rMPA)"
  end
  if value == "rOAD" then
    return "Cancel Reason: Sor Order Already Dead (rOAD)"
  end
  if value == "rOOS" then
    return "Cancel Reason: Sor Out Of Sync (rOOS)"
  end
  if value == "rTLR" then
    return "Cancel Reason: Sor Too Late To Replace (rTLR)"
  end
  if value == "ODDD" then
    return "Cancel Reason: No Oddlot Dealer (ODDD)"
  end
  if value == "OSTP" then
    return "Cancel Reason: Cancelled Ostp (OSTP)"
  end
  if value == "SYNO" then
    return "Cancel Reason: Symbol Not Open For Trading Syno (SYNO)"
  end
  if value == "LCMK" then
    return "Cancel Reason: Market Locked Or Crossed (LCMK)"
  end
  if value == "LMTP" then
    return "Cancel Reason: Invalid Order Price (LMTP)"
  end
  if value == "#MLO" then
    return "Cancel Reason: Melo Order No Longer Valid (#MLO)"
  end
  if value == "#BLS" then
    return "Cancel Reason: Cancelled Bls (#BLS)"
  end
  if value == "OLPQ" then
    return "Cancel Reason: Olp Order Qty Does Not Meet The Required Minimum (OLPQ)"
  end
  if value == "CNTG" then
    return "Cancel Reason: In Contingency Mode (CNTG)"
  end
  if value == "CDEX" then
    return "Cancel Reason: Cancelled Cdex (CDEX)"
  end
  if value == "FUDN" then
    return "Cancel Reason: Cancelled Fudn (FUDN)"
  end
  if value == "RSTD" then
    return "Cancel Reason: Order Restated (RSTD)"
  end
  if value == "#TIF" then
    return "Cancel Reason: Cancelled By Time Restriction (#TIF)"
  end
  if value == "MCLO" then
    return "Cancel Reason: Market Closed Mclo (MCLO)"
  end
  if value == "HLTS" then
    return "Cancel Reason: Symbol Not Open For Trading Hlts (HLTS)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reject Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field = {}

-- Size: Cancel Reject Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.size = 1

-- Display: Cancel Reject Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.display = function(value)
  if value == 37 then
    return "Cancel Reject Optional Field: UserRefIdx (37)"
  end

  return "Cancel Reject Optional Field: Unknown("..value..")"
end

-- Dissect: Cancel Reject Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reject_optional_field, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Conditional Order
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order = {}

-- Size: Conditional Order
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.size = 1

-- Display: Conditional Order
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.display = function(value)
  if value == "C" then
    return "Conditional Order: Conditional Order (C)"
  end
  if value == "X" then
    return "Conditional Order: Extended Firmup Time Conditional Order (X)"
  end

  return "Conditional Order: Unknown("..value..")"
end

-- Dissect: Conditional Order
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.conditional_order, range, value, display)

  return offset + length, value
end

-- Contra Broker
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.contra_broker = {}

-- Size: Contra Broker
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.contra_broker.size = 4

-- Display: Contra Broker
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.contra_broker.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Corrected Trade Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field = {}

-- Size: Corrected Trade Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.size = 1

-- Display: Corrected Trade Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.display = function(value)
  if value == 37 then
    return "Corrected Trade Optional Field: UserRefIdx (37)"
  end

  return "Corrected Trade Optional Field: Unknown("..value..")"
end

-- Dissect: Corrected Trade Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.corrected_trade_optional_field, range, value, display)

  return offset + length, value
end

-- Cum Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cum_rate = {}

-- Size: Cum Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cum_rate.size = 2

-- Display: Cum Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cum_rate.display = function(value)
  return "Cum Rate: "..value
end

-- Dissect: Cum Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cum_rate.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cum_rate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cum_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cum_rate, range, value, display)

  return offset + length, value
end

-- Customer Account
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account = {}

-- Size: Customer Account
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.size = 20

-- Display: Customer Account
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.display = function(value)
  return "Customer Account: "..value
end

-- Dissect: Customer Account
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.customer_account, range, value, display)

  return offset + length, value
end

-- Customer Lei
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei = {}

-- Size: Customer Lei
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.size = 52

-- Display: Customer Lei
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.display = function(value)
  return "Customer Lei: "..value
end

-- Dissect: Customer Lei
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.customer_lei, range, value, display)

  return offset + length, value
end

-- Cxd Connect
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect = {}

-- Size: Cxd Connect
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.size = 1

-- Display: Cxd Connect
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.display = function(value)
  if value == "N" then
    return "Cxd Connect: No (N)"
  end
  if value == "Y" then
    return "Cxd Connect: Yes (Y)"
  end

  return "Cxd Connect: Unknown("..value..")"
end

-- Dissect: Cxd Connect
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cxd_connect, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text = {}

-- Size: Debug Text
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.size = 1

-- Display: Debug Text
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect: Debug Text
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.debug_text, range, value, display)

  return offset + length, value
end

-- Decrement Shares
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.decrement_shares = {}

-- Size: Decrement Shares
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.decrement_shares.size = 4

-- Display: Decrement Shares
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.decrement_shares.display = function(value)
  return "Decrement Shares: "..value
end

-- Dissect: Decrement Shares
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.decrement_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.decrement_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.decrement_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.decrement_shares, range, value, display)

  return offset + length, value
end

-- Display Range
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range = {}

-- Size: Display Range
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.size = 4

-- Display: Display Range
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.display = function(value)
  return "Display Range: "..value
end

-- Dissect: Display Range
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.display_range, range, value, display)

  return offset + length, value
end

-- Enter Order Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field = {}

-- Size: Enter Order Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.size = 1

-- Display: Enter Order Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.display = function(value)
  if value == 37 then
    return "Enter Order Optional Field: UserRefIdx (37)"
  end
  if value == 1 then
    return "Enter Order Optional Field: Account (1)"
  end
  if value == 2 then
    return "Enter Order Optional Field: PegType (2)"
  end
  if value == 3 then
    return "Enter Order Optional Field: MinQtyType (3)"
  end
  if value == 4 then
    return "Enter Order Optional Field: MinQty (4)"
  end
  if value == 5 then
    return "Enter Order Optional Field: MaxFloor (5)"
  end
  if value == 6 then
    return "Enter Order Optional Field: ExpireTime (6)"
  end
  if value == 7 then
    return "Enter Order Optional Field: PegOffset (7)"
  end
  if value == 8 then
    return "Enter Order Optional Field: TargetStrategy (8)"
  end
  if value == 9 then
    return "Enter Order Optional Field: OrderOrigination (9)"
  end
  if value == 10 then
    return "Enter Order Optional Field: RoutingArrangementIndicator (10)"
  end
  if value == 11 then
    return "Enter Order Optional Field: BasketTrade (11)"
  end
  if value == 12 then
    return "Enter Order Optional Field: ProgramTrade (12)"
  end
  if value == 14 then
    return "Enter Order Optional Field: Jitney (14)"
  end
  if value == 15 then
    return "Enter Order Optional Field: GEFEligible (15)"
  end
  if value == 16 then
    return "Enter Order Optional Field: Anonymous (16)"
  end
  if value == 17 then
    return "Enter Order Optional Field: UMIRRegulationID (17)"
  end
  if value == 18 then
    return "Enter Order Optional Field: Bypass (18)"
  end
  if value == 19 then
    return "Enter Order Optional Field: TSXNCIB (19)"
  end
  if value == 20 then
    return "Enter Order Optional Field: NoTradeFeat (20)"
  end
  if value == 21 then
    return "Enter Order Optional Field: NoTradeKey (21)"
  end
  if value == 22 then
    return "Enter Order Optional Field: ShortMarkingExempt (22)"
  end
  if value == 23 then
    return "Enter Order Optional Field: POComment (23)"
  end
  if value == 24 then
    return "Enter Order Optional Field: DisplayRange (24)"
  end
  if value == 25 then
    return "Enter Order Optional Field: CustomerAccount (25)"
  end
  if value == 26 then
    return "Enter Order Optional Field: AlgorithmID (26)"
  end
  if value == 27 then
    return "Enter Order Optional Field: CustomerLEI (27)"
  end
  if value == 28 then
    return "Enter Order Optional Field: BrokerLEI (28)"
  end
  if value == 29 then
    return "Enter Order Optional Field: ConditionalOrder (29)"
  end
  if value == 30 then
    return "Enter Order Optional Field: AllowConditional (30)"
  end
  if value == 31 then
    return "Enter Order Optional Field: FirmUpID (31)"
  end
  if value == 32 then
    return "Enter Order Optional Field: CXDConnect (32)"
  end
  if value == 33 then
    return "Enter Order Optional Field: PureStreamConnect (33)"
  end
  if value == 34 then
    return "Enter Order Optional Field: MinRate (34)"
  end
  if value == 35 then
    return "Enter Order Optional Field: MaxRate (35)"
  end
  if value == 39 then
    return "Enter Order Optional Field: RoutingStrategy (39)"
  end
  if value == 43 then
    return "Enter Order Optional Field: HandlInst (43)"
  end

  return "Enter Order Optional Field: Unknown("..value..")"
end

-- Dissect: Enter Order Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.enter_order_optional_field, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code = {}

-- Size: Event Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.size = 1

-- Display: Event Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.display = function(value)
  if value == "S" then
    return "Event Code: Start Of Day (S)"
  end
  if value == "E" then
    return "Event Code: End Of Day (E)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- Ex Destination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination = {}

-- Size: Ex Destination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination.size = 1

-- Display: Ex Destination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination.display = function(value)
  if value == "C" then
    return "Ex Destination: Cxc (C)"
  end
  if value == "2" then
    return "Ex Destination: Cx 2 (2)"
  end
  if value == "D" then
    return "Ex Destination: Cxd (D)"
  end
  if value == "S" then
    return "Ex Destination: Smart Order Router (S)"
  end

  return "Ex Destination: Unknown("..value..")"
end

-- Dissect: Ex Destination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.ex_destination, range, value, display)

  return offset + length, value
end

-- Exec Broker
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.exec_broker = {}

-- Size: Exec Broker
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.exec_broker.size = 1

-- Display: Exec Broker
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.exec_broker.display = function(value)
  if value == " " then
    return "Exec Broker: Unspecified (<whitespace>)"
  end
  if value == "A" then
    return "Exec Broker: Chix (A)"
  end
  if value == "B" then
    return "Exec Broker: Cx 2 (B)"
  end
  if value == "C" then
    return "Exec Broker: Cxd (C)"
  end
  if value == "D" then
    return "Exec Broker: Tsx (D)"
  end
  if value == "E" then
    return "Exec Broker: Pure (E)"
  end
  if value == "F" then
    return "Exec Broker: Alph (F)"
  end
  if value == "G" then
    return "Exec Broker: Match (G)"
  end
  if value == "H" then
    return "Exec Broker: Omga (H)"
  end
  if value == "I" then
    return "Exec Broker: Lynx (I)"
  end
  if value == "J" then
    return "Exec Broker: Aeqn (J)"
  end
  if value == "K" then
    return "Exec Broker: Aeql (K)"
  end
  if value == "L" then
    return "Exec Broker: Cse 2 (L)"
  end
  if value == "M" then
    return "Exec Broker: Alpx (M)"
  end
  if value == "N" then
    return "Exec Broker: Alpd (N)"
  end
  if value == "O" then
    return "Exec Broker: Icx (O)"
  end

  return "Exec Broker: Unknown("..value..")"
end

-- Dissect: Exec Broker
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.exec_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.exec_broker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.exec_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.exec_broker, range, value, display)

  return offset + length, value
end

-- Execute Match
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match = {}

-- Size: Execute Match
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match.size = 1

-- Display: Execute Match
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match.display = function(value)
  if value == "N" then
    return "Execute Match: No (N)"
  end
  if value == "Y" then
    return "Execute Match: Yes (Y)"
  end

  return "Execute Match: Unknown("..value..")"
end

-- Dissect: Execute Match
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.execute_match, range, value, display)

  return offset + length, value
end

-- Expire Time
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time = {}

-- Size: Expire Time
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.size = 4

-- Display: Expire Time
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.display = function(value)
  return "Expire Time: "..value
end

-- Dissect: Expire Time
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Firm Up Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id = {}

-- Size: Firm Up Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.size = 8

-- Display: Firm Up Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.display = function(value)
  return "Firm Up Id: "..value
end

-- Dissect: Firm Up Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.firm_up_id, range, value, display)

  return offset + length, value
end

-- Gef Eligible
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible = {}

-- Size: Gef Eligible
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.size = 1

-- Display: Gef Eligible
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.display = function(value)
  if value == "N" then
    return "Gef Eligible: No (N)"
  end
  if value == "Y" then
    return "Gef Eligible: Yes (Y)"
  end

  return "Gef Eligible: Unknown("..value..")"
end

-- Dissect: Gef Eligible
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.gef_eligible, range, value, display)

  return offset + length, value
end

-- Handl Inst
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst = {}

-- Size: Handl Inst
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.size = 1

-- Display: Handl Inst
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.display = function(value)
  if value == "f" then
    return "Handl Inst: Dao (f)"
  end
  if value == "1" then
    return "Handl Inst: Opr Reprice (1)"
  end
  if value == "5" then
    return "Handl Inst: Opr Cancel (5)"
  end

  return "Handl Inst: Unknown("..value..")"
end

-- Dissect: Handl Inst
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.handl_inst, range, value, display)

  return offset + length, value
end

-- Jitney
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.jitney = {}

-- Size: Jitney
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.jitney.size = 3

-- Display: Jitney
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.jitney.display = function(value)
  return "Jitney: "..value
end

-- Dissect: Jitney
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.jitney.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.jitney.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.jitney.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.jitney, range, value, display)

  return offset + length, value
end

-- Liquidity Flag
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag = {}

-- Size: Liquidity Flag
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag.size = 1

-- Display: Liquidity Flag
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag.display = function(value)
  if value == "A" then
    return "Liquidity Flag: Order Added Liquidity (A)"
  end
  if value == "R" then
    return "Liquidity Flag: Order Removed Liquidity (R)"
  end
  if value == "a" then
    return "Liquidity Flag: Order Added Hidden Liquidity (a)"
  end
  if value == "r" then
    return "Liquidity Flag: Order Removed Hidden Liquidity (r)"
  end
  if value == "d" then
    return "Liquidity Flag: Order Added Hidden Liquidity Atthetouch (d)"
  end
  if value == "D" then
    return "Liquidity Flag: Order Removed Hidden Liquidity Atthetouch (D)"
  end
  if value == "g" then
    return "Liquidity Flag: Order Added Gef Liquidity (g)"
  end
  if value == "G" then
    return "Liquidity Flag: Order Removed Gef Liquidity (G)"
  end
  if value == "C" then
    return "Liquidity Flag: Market On Close (C)"
  end
  if value == "S" then
    return "Liquidity Flag: Displayed Liquidityadding Order Improves The Nbbo (S)"
  end
  if value == "O" then
    return "Liquidity Flag: Opening Closing Auction (O)"
  end
  if value == "E" then
    return "Liquidity Flag: Last Sale Trading Session (E)"
  end
  if value == "L" then
    return "Liquidity Flag: Melo (L)"
  end
  if value == "P" then
    return "Liquidity Flag: Cxd Pure Stream Ratebased Execution (P)"
  end
  if value == "M" then
    return "Liquidity Flag: Cxd Pure Stream Ls Midpoint Block Removed Liquidity (M)"
  end
  if value == "F" then
    return "Liquidity Flag: Xft (F)"
  end

  return "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.match_number = {}

-- Size: Match Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.match_number.size = 8

-- Display: Match Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.match_number, range, value, display)

  return offset + length, value
end

-- Max Floor
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor = {}

-- Size: Max Floor
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.size = 4

-- Display: Max Floor
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Max Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate = {}

-- Size: Max Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.size = 2

-- Display: Max Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.display = function(value)
  return "Max Rate: "..value
end

-- Dissect: Max Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.max_rate, range, value, display)

  return offset + length, value
end

-- Min Qty
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty = {}

-- Size: Min Qty
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.size = 4

-- Display: Min Qty
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Min Qty Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type = {}

-- Size: Min Qty Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.size = 1

-- Display: Min Qty Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.display = function(value)
  if value == "N" then
    return "Min Qty Type: Maq (N)"
  end
  if value == "m" then
    return "Min Qty Type: Maq At Touch (m)"
  end
  if value == "t" then
    return "Min Qty Type: Mq At Touch (t)"
  end
  if value == "z" then
    return "Min Qty Type: Minimum Quantity (z)"
  end

  return "Min Qty Type: Unknown("..value..")"
end

-- Dissect: Min Qty Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.min_qty_type, range, value, display)

  return offset + length, value
end

-- Min Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate = {}

-- Size: Min Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.size = 2

-- Display: Min Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.display = function(value)
  return "Min Rate: "..value
end

-- Dissect: Min Rate
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.min_rate, range, value, display)

  return offset + length, value
end

-- Nbbo Setter
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter = {}

-- Size: Nbbo Setter
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.size = 1

-- Display: Nbbo Setter
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.display = function(value)
  if value == "Y" then
    return "Nbbo Setter: Nbbo Setter (Y)"
  end

  return "Nbbo Setter: Unknown("..value..")"
end

-- Dissect: Nbbo Setter
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.nbbo_setter, range, value, display)

  return offset + length, value
end

-- Next User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.next_user_ref_num = {}

-- Size: Next User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.next_user_ref_num.size = 4

-- Display: Next User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.next_user_ref_num.display = function(value)
  return "Next User Ref Num: "..value
end

-- Dissect: Next User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.next_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.next_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.next_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.next_user_ref_num, range, value, display)

  return offset + length, value
end

-- No Trade Feat
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat = {}

-- Size: No Trade Feat
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.size = 1

-- Display: No Trade Feat
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.display = function(value)
  if value == "N" then
    return "No Trade Feat: Cancel Newest (N)"
  end
  if value == "O" then
    return "No Trade Feat: Cancel Oldest (O)"
  end
  if value == "D" then
    return "No Trade Feat: Decrement And Cancel (D)"
  end
  if value == "E" then
    return "No Trade Feat: Execute Trade (E)"
  end

  return "No Trade Feat: Unknown("..value..")"
end

-- Dissect: No Trade Feat
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.no_trade_feat, range, value, display)

  return offset + length, value
end

-- No Trade Key
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_key = {}

-- Size: No Trade Key
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_key.size = 6

-- Display: No Trade Key
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_key.display = function(value)
  return "No Trade Key: "..value
end

-- Dissect: No Trade Key
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_key.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.no_trade_key, range, value, display)

  return offset + length, value
end

-- Optional Field Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length = {}

-- Size: Optional Field Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.size = 1

-- Display: Optional Field Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.display = function(value)
  return "Optional Field Length: "..value
end

-- Dissect: Optional Field Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.optional_field_length, range, value, display)

  return offset + length, value
end

-- Order Accepted Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field = {}

-- Size: Order Accepted Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.size = 1

-- Display: Order Accepted Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.display = function(value)
  if value == 37 then
    return "Order Accepted Optional Field: UserRefIdx (37)"
  end
  if value == 1 then
    return "Order Accepted Optional Field: Account (1)"
  end
  if value == 2 then
    return "Order Accepted Optional Field: PegType (2)"
  end
  if value == 3 then
    return "Order Accepted Optional Field: MinQtyType (3)"
  end
  if value == 4 then
    return "Order Accepted Optional Field: MinQty (4)"
  end
  if value == 5 then
    return "Order Accepted Optional Field: MaxFloor (5)"
  end
  if value == 6 then
    return "Order Accepted Optional Field: ExpireTime (6)"
  end
  if value == 7 then
    return "Order Accepted Optional Field: PegOffset (7)"
  end
  if value == 8 then
    return "Order Accepted Optional Field: TargetStrategy (8)"
  end
  if value == 9 then
    return "Order Accepted Optional Field: OrderOrigination (9)"
  end
  if value == 10 then
    return "Order Accepted Optional Field: RoutingArrangementIndicator (10)"
  end
  if value == 11 then
    return "Order Accepted Optional Field: BasketTrade (11)"
  end
  if value == 12 then
    return "Order Accepted Optional Field: ProgramTrade (12)"
  end
  if value == 14 then
    return "Order Accepted Optional Field: Jitney (14)"
  end
  if value == 15 then
    return "Order Accepted Optional Field: GEFEligible (15)"
  end
  if value == 16 then
    return "Order Accepted Optional Field: Anonymous (16)"
  end
  if value == 17 then
    return "Order Accepted Optional Field: UMIRRegulationID (17)"
  end
  if value == 18 then
    return "Order Accepted Optional Field: Bypass (18)"
  end
  if value == 19 then
    return "Order Accepted Optional Field: TSXNCIB (19)"
  end
  if value == 20 then
    return "Order Accepted Optional Field: NoTradeFeat (20)"
  end
  if value == 21 then
    return "Order Accepted Optional Field: NoTradeKey (21)"
  end
  if value == 22 then
    return "Order Accepted Optional Field: ShortMarkingExempt (22)"
  end
  if value == 23 then
    return "Order Accepted Optional Field: POComment (23)"
  end
  if value == 24 then
    return "Order Accepted Optional Field: DisplayRange (24)"
  end
  if value == 25 then
    return "Order Accepted Optional Field: CustomerAccount (25)"
  end
  if value == 26 then
    return "Order Accepted Optional Field: AlgorithmID (26)"
  end
  if value == 27 then
    return "Order Accepted Optional Field: CustomerLEI (27)"
  end
  if value == 28 then
    return "Order Accepted Optional Field: BrokerLEI (28)"
  end
  if value == 29 then
    return "Order Accepted Optional Field: ConditionalOrder (29)"
  end
  if value == 30 then
    return "Order Accepted Optional Field: AllowConditional (30)"
  end
  if value == 31 then
    return "Order Accepted Optional Field: FirmUpID (31)"
  end
  if value == 32 then
    return "Order Accepted Optional Field: CXDConnect (32)"
  end
  if value == 33 then
    return "Order Accepted Optional Field: PureStreamConnect (33)"
  end
  if value == 34 then
    return "Order Accepted Optional Field: MinRate (34)"
  end
  if value == 35 then
    return "Order Accepted Optional Field: MaxRate (35)"
  end
  if value == 39 then
    return "Order Accepted Optional Field: RoutingStrategy (39)"
  end
  if value == 43 then
    return "Order Accepted Optional Field: HandlInst (43)"
  end
  if value == 44 then
    return "Order Accepted Optional Field: RepriceReason (44)"
  end
  if value == 45 then
    return "Order Accepted Optional Field: NBBOSetter (45)"
  end

  return "Order Accepted Optional Field: Unknown("..value..")"
end

-- Dissect: Order Accepted Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_accepted_optional_field, range, value, display)

  return offset + length, value
end

-- Order Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field = {}

-- Size: Order Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.size = 1

-- Display: Order Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.display = function(value)
  if value == 37 then
    return "Order Canceled Optional Field: UserRefIdx (37)"
  end

  return "Order Canceled Optional Field: Unknown("..value..")"
end

-- Dissect: Order Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_canceled_optional_field, range, value, display)

  return offset + length, value
end

-- Order Executed Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field = {}

-- Size: Order Executed Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.size = 1

-- Display: Order Executed Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.display = function(value)
  if value == 37 then
    return "Order Executed Optional Field: UserRefIdx (37)"
  end
  if value == 38 then
    return "Order Executed Optional Field: ExecuteMatch (38)"
  end
  if value == 40 then
    return "Order Executed Optional Field: SecondaryOrderID (40)"
  end
  if value == 42 then
    return "Order Executed Optional Field: BrokerPref (42)"
  end
  if value == 13 then
    return "Order Executed Optional Field: PrincipalTrade (13)"
  end
  if value == 41 then
    return "Order Executed Optional Field: WashTrade (41)"
  end
  if value == 36 then
    return "Order Executed Optional Field: CumRate (36)"
  end

  return "Order Executed Optional Field: Unknown("..value..")"
end

-- Dissect: Order Executed Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_executed_optional_field, range, value, display)

  return offset + length, value
end

-- Order Origination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination = {}

-- Size: Order Origination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.size = 1

-- Display: Order Origination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.display = function(value)
  if value == "5" then
    return "Order Origination: Direct Access Customer (5)"
  end
  if value == "6" then
    return "Order Origination: Foreign Dealer Equivalent (6)"
  end
  if value == "7" then
    return "Order Origination: Executiononly Service (7)"
  end

  return "Order Origination: Unknown("..value..")"
end

-- Dissect: Order Origination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_origination, range, value, display)

  return offset + length, value
end

-- Order Qty
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty = {}

-- Size: Order Qty
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.size = 4

-- Display: Order Qty
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Replaced Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field = {}

-- Size: Order Replaced Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.size = 1

-- Display: Order Replaced Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.display = function(value)
  if value == 37 then
    return "Order Replaced Optional Field: UserRefIdx (37)"
  end
  if value == 3 then
    return "Order Replaced Optional Field: MinQtyType (3)"
  end
  if value == 2 then
    return "Order Replaced Optional Field: PegType (2)"
  end
  if value == 4 then
    return "Order Replaced Optional Field: MinQty (4)"
  end
  if value == 5 then
    return "Order Replaced Optional Field: MaxFloor (5)"
  end
  if value == 6 then
    return "Order Replaced Optional Field: ExpireTime (6)"
  end
  if value == 7 then
    return "Order Replaced Optional Field: PegOffset (7)"
  end
  if value == 8 then
    return "Order Replaced Optional Field: TargetStrategy (8)"
  end
  if value == 9 then
    return "Order Replaced Optional Field: OrderOrigination (9)"
  end
  if value == 10 then
    return "Order Replaced Optional Field: RoutingArrangementIndicator (10)"
  end
  if value == 17 then
    return "Order Replaced Optional Field: UMIRRegulationID (17)"
  end
  if value == 16 then
    return "Order Replaced Optional Field: Anonymous (16)"
  end
  if value == 24 then
    return "Order Replaced Optional Field: DisplayRange (24)"
  end
  if value == 25 then
    return "Order Replaced Optional Field: CustomerAccount (25)"
  end
  if value == 26 then
    return "Order Replaced Optional Field: AlgorithmID (26)"
  end
  if value == 27 then
    return "Order Replaced Optional Field: CustomerLEI (27)"
  end
  if value == 28 then
    return "Order Replaced Optional Field: BrokerLEI (28)"
  end
  if value == 30 then
    return "Order Replaced Optional Field: AllowConditional (30)"
  end
  if value == 32 then
    return "Order Replaced Optional Field: CXDConnect (32)"
  end
  if value == 33 then
    return "Order Replaced Optional Field: PureStreamConnect (33)"
  end
  if value == 34 then
    return "Order Replaced Optional Field: MinRate (34)"
  end
  if value == 35 then
    return "Order Replaced Optional Field: MaxRate (35)"
  end
  if value == 43 then
    return "Order Replaced Optional Field: HandlInst (43)"
  end
  if value == 44 then
    return "Order Replaced Optional Field: RepriceReason (44)"
  end
  if value == 45 then
    return "Order Replaced Optional Field: NBBOSetter (45)"
  end

  return "Order Replaced Optional Field: Unknown("..value..")"
end

-- Dissect: Order Replaced Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_replaced_optional_field, range, value, display)

  return offset + length, value
end

-- Order Restated Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field = {}

-- Size: Order Restated Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.size = 1

-- Display: Order Restated Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.display = function(value)
  if value == 37 then
    return "Order Restated Optional Field: UserRefIdx (37)"
  end
  if value == 31 then
    return "Order Restated Optional Field: FirmUpID (31)"
  end

  return "Order Restated Optional Field: Unknown("..value..")"
end

-- Dissect: Order Restated Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_restated_optional_field, range, value, display)

  return offset + length, value
end

-- Order State
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state = {}

-- Size: Order State
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.size = 1

-- Display: Order State
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.display = function(value)
  if value == "L" then
    return "Order State: Order Live (L)"
  end
  if value == "D" then
    return "Order State: Order Dead (D)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_state, range, value, display)

  return offset + length, value
end

-- Orig User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.orig_user_ref_num = {}

-- Size: Orig User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.orig_user_ref_num.size = 4

-- Display: Orig User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.orig_user_ref_num.display = function(value)
  return "Orig User Ref Num: "..value
end

-- Dissect: Orig User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.orig_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.orig_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.orig_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.orig_user_ref_num, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.packet_length = {}

-- Size: Packet Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.packet_length.size = 2

-- Display: Packet Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.password = {}

-- Size: Password
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.password.size = 10

-- Display: Password
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Offset
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset = {}

-- Size: Peg Offset
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.size = 8

-- Display: Peg Offset
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.display = function(value)
  return "Peg Offset: "..value
end

-- Translate: Peg Offset
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Peg Offset
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.translate(raw)
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Peg Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type = {}

-- Size: Peg Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.size = 1

-- Display: Peg Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.display = function(value)
  if value == "M" then
    return "Peg Type: Midpoint Peg (M)"
  end
  if value == "R" then
    return "Peg Type: Primary Peg (R)"
  end
  if value == "x" then
    return "Peg Type: Minimum Price Improvement (x)"
  end
  if value == "S" then
    return "Peg Type: Seek Price Improvement (S)"
  end
  if value == "L" then
    return "Peg Type: Melo (L)"
  end
  if value == "o" then
    return "Peg Type: Odd Lot Liquidity Providing (o)"
  end

  return "Peg Type: Unknown("..value..")"
end

-- Dissect: Peg Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.peg_type, range, value, display)

  return offset + length, value
end

-- Po Comment
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.po_comment = {}

-- Size: Po Comment
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.po_comment.size = 32

-- Display: Po Comment
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.po_comment.display = function(value)
  return "Po Comment: "..value
end

-- Dissect: Po Comment
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.po_comment.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.po_comment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.po_comment.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.po_comment, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price = {}

-- Size: Price
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.size = 8

-- Display: Price
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.translate(raw)
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.price, range, value, display)

  return offset + length, value
end

-- Principal Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade = {}

-- Size: Principal Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade.size = 1

-- Display: Principal Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade.display = function(value)
  if value == "N" then
    return "Principal Trade: No (N)"
  end
  if value == "Y" then
    return "Principal Trade: Yes (Y)"
  end

  return "Principal Trade: Unknown("..value..")"
end

-- Dissect: Principal Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.principal_trade, range, value, display)

  return offset + length, value
end

-- Program Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade = {}

-- Size: Program Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.size = 1

-- Display: Program Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.display = function(value)
  if value == "N" then
    return "Program Trade: No (N)"
  end
  if value == "Y" then
    return "Program Trade: Yes (Y)"
  end

  return "Program Trade: Unknown("..value..")"
end

-- Dissect: Program Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.program_trade, range, value, display)

  return offset + length, value
end

-- Pure Stream Connect
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect = {}

-- Size: Pure Stream Connect
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.size = 1

-- Display: Pure Stream Connect
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.display = function(value)
  if value == "N" then
    return "Pure Stream Connect: No (N)"
  end
  if value == "Y" then
    return "Pure Stream Connect: Yes (Y)"
  end

  return "Pure Stream Connect: Unknown("..value..")"
end

-- Dissect: Pure Stream Connect
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.pure_stream_connect, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity = {}

-- Size: Quantity
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity.size = 4

-- Display: Quantity
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Prevented From Trading
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity_prevented_from_trading = {}

-- Size: Quantity Prevented From Trading
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity_prevented_from_trading.size = 4

-- Display: Quantity Prevented From Trading
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity_prevented_from_trading.display = function(value)
  return "Quantity Prevented From Trading: "..value
end

-- Dissect: Quantity Prevented From Trading
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity_prevented_from_trading.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity_prevented_from_trading.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity_prevented_from_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.quantity_prevented_from_trading, range, value, display)

  return offset + length, value
end

-- Reject Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason = {}

-- Size: Reject Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason.size = 4

-- Display: Reject Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason.display = function(value)
  if value == "none" then
    return "Reject Reason: Rejected None (none)"
  end
  if value == "SYMB" then
    return "Reject Reason: Unknown Symbol (SYMB)"
  end
  if value == "SYMD" then
    return "Reject Reason: Symbol Not Allowed To Trade On Destination (SYMD)"
  end
  if value == "HLTD" then
    return "Reject Reason: Symbol Halted On Destination (HLTD)"
  end
  if value == "TLTC" then
    return "Reject Reason: Too Late To Cancel (TLTC)"
  end
  if value == "TLTR" then
    return "Reject Reason: Too Late To Replace (TLTR)"
  end
  if value == "ADMC" then
    return "Reject Reason: Admin Canceled (ADMC)"
  end
  if value == "ADRJ" then
    return "Reject Reason: Admin Rejected (ADRJ)"
  end
  if value == "HLTS" then
    return "Reject Reason: Symbol Halted (HLTS)"
  end
  if value == "VMIN" then
    return "Reject Reason: Visible Min Qty (VMIN)"
  end
  if value == "BIOC" then
    return "Reject Reason: Nonioc Bypass (BIOC)"
  end
  if value == "PDUP" then
    return "Reject Reason: Possdupe Set (PDUP)"
  end
  if value == "MRTE" then
    return "Reject Reason: Missing Or Invalid Exdestination Specified (MRTE)"
  end
  if value == "USRB" then
    return "Reject Reason: Missingunknown Tag Umiruserid (USRB)"
  end
  if value == "CRED" then
    return "Reject Reason: Terminal Has No Credit (CRED)"
  end
  if value == "SMEB" then
    return "Reject Reason: Short Marker Exempt Not Supported For Value (SMEB)"
  end
  if value == "LMTP" then
    return "Reject Reason: Invalid Order Price (LMTP)"
  end
  if value == "MCLO" then
    return "Reject Reason: Market Not Open (MCLO)"
  end
  if value == "ODDB" then
    return "Reject Reason: Invalid Ordqty Must Be A Multiple Of Standard Trading Unit (ODDB)"
  end
  if value == "ODDD" then
    return "Reject Reason: Invalid Ordqty Must Be A Multiple Of Standard Trading Unit No Oddlot Dealer (ODDD)"
  end
  if value == "ODDI" then
    return "Reject Reason: Invalid Ordqty Must Be A Multiple Of Standard Trading Unit Tif Not Ioc Or Day (ODDI)"
  end
  if value == "ODDP" then
    return "Reject Reason: Invalid Ordqty Must Be A Multiple Of Standard Trading Unit No Prim Peg (ODDP)"
  end
  if value == "ODDM" then
    return "Reject Reason: Invalid Ordqty Must Be A Multiple Of Standard Trading Unit Minqty Specified (ODDM)"
  end
  if value == "ODDR" then
    return "Reject Reason: Invalid Ordqty Cannot Replace Oddlot To Roundmixed Lot Or Vice Versa (ODDR)"
  end
  if value == "OSTP" then
    return "Reject Reason: Rejected Ostp (OSTP)"
  end
  if value == "NORD" then
    return "Reject Reason: Order Not Found (NORD)"
  end
  if value == "PENR" then
    return "Reject Reason: Pending Replace (PENR)"
  end
  if value == "PENC" then
    return "Reject Reason: Order Pending Cancel (PENC)"
  end
  if value == "SYMM" then
    return "Reject Reason: Symbol Mismatch (SYMM)"
  end
  if value == "USRM" then
    return "Reject Reason: Umir User Id Mismatch (USRM)"
  end
  if value == "SIDM" then
    return "Reject Reason: Side Mismatch (SIDM)"
  end
  if value == "DESM" then
    return "Reject Reason: Destination Mismatch (DESM)"
  end
  if value == "ISOM" then
    return "Reject Reason: Cannot Convert To Iso Order (ISOM)"
  end
  if value == "INVT" then
    return "Reject Reason: Invalid Tag (INVT)"
  end
  if value == "GTDE" then
    return "Reject Reason: Expiry Required For Good Till Dategtd Order (GTDE)"
  end
  if value == "EMPT" then
    return "Reject Reason: Order Exceeded Mktplace Threshold (EMPT)"
  end
  if value == "BDRK" then
    return "Reject Reason: Bypass Orders Not Valid On Dark Pool (BDRK)"
  end
  if value == "DCDT" then
    return "Reject Reason: User Not Permissioned On Destination (DCDT)"
  end
  if value == "MPIB" then
    return "Reject Reason: Mpi Orders Only For Cxd (MPIB)"
  end
  if value == "ACSO" then
    return "Reject Reason: At Close Orders Only For Sor Orders (ACSO)"
  end
  if value == "INVM" then
    return "Reject Reason: Displayed Quantity Must Be Of Standard Trading Unitstu (INVM)"
  end
  if value == "INVD" then
    return "Reject Reason: Display Range Must Be Of Standard Trading Unitstu (INVD)"
  end
  if value == "MINB" then
    return "Reject Reason: Minqty Must Be Of Standard Trading Unitstu (MINB)"
  end
  if value == "OFFB" then
    return "Reject Reason: Invalid Pegoffset For Peg Type (OFFB)"
  end
  if value == "STRM" then
    return "Reject Reason: Rejected Strm (STRM)"
  end
  if value == "CAPD" then
    return "Reject Reason: Order Failed Caplimit No Default Limit Found (CAPD)"
  end
  if value == "CAPS" then
    return "Reject Reason: Order Exceed Share Limits (CAPS)"
  end
  if value == "CAPN" then
    return "Reject Reason: Order Exceed Notional Limits (CAPN)"
  end
  if value == "CLOP" then
    return "Reject Reason: Pegged Orders Unavailable After Hours (CLOP)"
  end
  if value == "MIST" then
    return "Reject Reason: Missing Required Tags (MIST)"
  end
  if value == "QTYB" then
    return "Reject Reason: Orderqty Must Be Greater Than 0 (QTYB)"
  end
  if value == "NMKT" then
    return "Reject Reason: No Market (NMKT)"
  end
  if value == "LCMK" then
    return "Reject Reason: Market Locked Or Crossed (LCMK)"
  end
  if value == "CUMQ" then
    return "Reject Reason: New Order Quantity Less Than Cumqty (CUMQ)"
  end
  if value == "OTHR" then
    return "Reject Reason: Rejected Othr (OTHR)"
  end
  if value == "RIOC" then
    return "Reject Reason: No Replace On Ioc Order (RIOC)"
  end
  if value == "GWRJ" then
    return "Reject Reason: Gateway Reject (GWRJ)"
  end
  if value == "DNMQ" then
    return "Reject Reason: Cxd Not Accepting Min Qty Orders (DNMQ)"
  end
  if value == "dSDN" then
    return "Reject Reason: Destination System Down (dSDN)"
  end
  if value == "dNAO" then
    return "Reject Reason: Destination Not Accepting Orders (dNAO)"
  end
  if value == "dNPO" then
    return "Reject Reason: Destination Does Not Support Post Only (dNPO)"
  end
  if value == "dSTP" then
    return "Reject Reason: Destination Does Not Support Stp Feature Specified (dSTP)"
  end
  if value == "dPEG" then
    return "Reject Reason: Destination Does Not Support Peg Type (dPEG)"
  end
  if value == "dFOK" then
    return "Reject Reason: Destination Does Not Support Fok (dFOK)"
  end
  if value == "dHID" then
    return "Reject Reason: Destination Does Not Support Hidden Orders (dHID)"
  end
  if value == "dMQY" then
    return "Reject Reason: Destination Does Not Support Minqty (dMQY)"
  end
  if value == "dAON" then
    return "Reject Reason: Destination Does Not Support Aon (dAON)"
  end
  if value == "dCLO" then
    return "Reject Reason: Destination Does Not Support Closing Orders (dCLO)"
  end
  if value == "dIOC" then
    return "Reject Reason: Destination Does Not Support Ioc Time In Force (dIOC)"
  end
  if value == "dBYP" then
    return "Reject Reason: Destination Does Not Support Bypass Flag (dBYP)"
  end
  if value == "dRUO" then
    return "Reject Reason: Destination Replace For Unack Order (dRUO)"
  end
  if value == "dTYP" then
    return "Reject Reason: Destination Does Not Support Order Type (dTYP)"
  end
  if value == "dMET" then
    return "Reject Reason: Destination Does Not Support Maq At The Touch Orders (dMET)"
  end
  if value == "dMQT" then
    return "Reject Reason: Destination Does Not Support Mq At The Touch Orders (dMQT)"
  end
  if value == "dSPI" then
    return "Reject Reason: Destination Does Not Support Seek Price Improvement (dSPI)"
  end
  if value == "dOLP" then
    return "Reject Reason: Destination Does Not Support Odd Lot Book Orders (dOLP)"
  end
  if value == "sTIF" then
    return "Reject Reason: Invalid Tif For Spi Order Tif Must Be Ioc (sTIF)"
  end
  if value == "aTIF" then
    return "Reject Reason: Invalid Tif For Maq At The Touch Tif Must Be Ioc (aTIF)"
  end
  if value == "qTIF" then
    return "Reject Reason: Invalid Tif For Mq At The Touch Tif Must Be Ioc (qTIF)"
  end
  if value == "AONQ" then
    return "Reject Reason: Aon Not Allowed For Maq At The Touch Or Mq At The Touch (AONQ)"
  end
  if value == "PEGQ" then
    return "Reject Reason: Peg Not Alllowed For Maq At The Touch Or Mq At The Touch (PEGQ)"
  end
  if value == "MQYB" then
    return "Reject Reason: Invalid Minqty Must Be A Multiple Of Standard Trading Unit For Maq At The Touch Or Mq At The Touch (MQYB)"
  end
  if value == "SPIP" then
    return "Reject Reason: Pegging Not Allowed With Seekpriceimprovement (SPIP)"
  end
  if value == "SPII" then
    return "Reject Reason: Cso Not Allowed With Seekpriceimprovement (SPII)"
  end
  if value == "SPIM" then
    return "Reject Reason: Minpriceimprovement Not Allowed With Seekpriceimprovement (SPIM)"
  end
  if value == "NSTP" then
    return "Reject Reason: Stop Order Not Supported (NSTP)"
  end
  if value == "CRTE" then
    return "Reject Reason: Chix Route Market Not Found (CRTE)"
  end
  if value == "BOPG" then
    return "Reject Reason: Chix Route Opg Orders Not Valid After Stock Open (BOPG)"
  end
  if value == "NGTC" then
    return "Reject Reason: Chix Route Gtc Orders Not Supported (NGTC)"
  end
  if value == "CMCL" then
    return "Reject Reason: Chix Route Mkt Order Not Supported After Close (CMCL)"
  end
  if value == "rXBO" then
    return "Reject Reason: Sor Crossed Best Bid Ask (rXBO)"
  end
  if value == "rIQT" then
    return "Reject Reason: Sor Insufficient Quantity (rIQT)"
  end
  if value == "rIBO" then
    return "Reject Reason: Sor Invalid Best Bid Ask (rIBO)"
  end
  if value == "rIBB" then
    return "Reject Reason: Rejected R Ibb (rIBB)"
  end
  if value == "rIBA" then
    return "Reject Reason: Sor Invalid Best Ask (rIBA)"
  end
  if value == "rPNR" then
    return "Reject Reason: Sor Protected Venue Not Routable (rPNR)"
  end
  if value == "rUKS" then
    return "Reject Reason: Unknown Strategy For Router (rUKS)"
  end
  if value == "AONI" then
    return "Reject Reason: Aon Cannot Be Combined With Ioc Or Fok (AONI)"
  end
  if value == "GEFD" then
    return "Reject Reason: Invalid Dest For Member Gef Vol Change (GEFD)"
  end
  if value == "GEFS" then
    return "Reject Reason: Invalid Side For Member Gef Vol Change (GEFS)"
  end
  if value == "GEFU" then
    return "Reject Reason: Invalid Umir User For Member Gef Vol Change (GEFU)"
  end
  if value == "GEFQ" then
    return "Reject Reason: Invalid Volume For Member Gef Vol Change (GEFQ)"
  end
  if value == "MLNA" then
    return "Reject Reason: Not Accepting Melo Orders (MLNA)"
  end
  if value == "MLTI" then
    return "Reject Reason: Invalid Tif For Melo Order (MLTI)"
  end
  if value == "MLBY" then
    return "Reject Reason: Bypass Not Allowed For Melo Orders (MLBY)"
  end
  if value == "MLRE" then
    return "Reject Reason: Cannot Change Melo To Nonmelo Or Vice Versa (MLRE)"
  end
  if value == "MLDA" then
    return "Reject Reason: Dao Not Allowed For Melo Orders (MLDA)"
  end
  if value == "MLOP" then
    return "Reject Reason: Opr Cancel Not Allowed For Melo Orders (MLOP)"
  end
  if value == "MLOQ" then
    return "Reject Reason: Invalid Qty For Melo Order (MLOQ)"
  end
  if value == "IVSD" then
    return "Reject Reason: Invalid Side (IVSD)"
  end
  if value == "IVTF" then
    return "Reject Reason: Invalid Tif (IVTF)"
  end
  if value == "IVOT" then
    return "Reject Reason: Invalid Ordertype (IVOT)"
  end
  if value == "NOJT" then
    return "Reject Reason: Jitney Not Allowed (NOJT)"
  end
  if value == "OLPN" then
    return "Reject Reason: Destination Not Accepting Odd Lot Book Orders (OLPN)"
  end
  if value == "OLPQ" then
    return "Reject Reason: Olp Order Qty Does Not Meet The Required Minimum (OLPQ)"
  end
  if value == "OLPR" then
    return "Reject Reason: Cannot Change Olp To Nonolp Or Vice Versa (OLPR)"
  end
  if value == "OLPL" then
    return "Reject Reason: Olp Order Limit Exceeded (OLPL)"
  end
  if value == "PSNA" then
    return "Reject Reason: Destination Not Accepting Purestream Orders (PSNA)"
  end
  if value == "PSST" then
    return "Reject Reason: Invalid Target Strategy (PSST)"
  end
  if value == "PSRT" then
    return "Reject Reason: Invalid Minrate Or Maxrate (PSRT)"
  end
  if value == "PSQT" then
    return "Reject Reason: Qty Does Not Meet Boardlot Or Notional Requirement (PSQT)"
  end
  if value == "PSNV" then
    return "Reject Reason: Nominal Value Under Requirement (PSNV)"
  end
  if value == "PSTF" then
    return "Reject Reason: Invalid Tif For Purestream (PSTF)"
  end
  if value == "PSPG" then
    return "Reject Reason: Pegging Not Allowed For Purestream (PSPG)"
  end
  if value == "PSSP" then
    return "Reject Reason: Seek Price Improvement Not Allowed For Purestream (PSSP)"
  end
  if value == "PMQY" then
    return "Reject Reason: Minqtyallornone Not Allowed For The Specified Purestream Strategy (PMQY)"
  end
  if value == "PSRE" then
    return "Reject Reason: Cannot Change Purestream Order To Nonpurestream Order Or Vice Versa (PSRE)"
  end
  if value == "PSVI" then
    return "Reject Reason: Stream Requirement Violated For The Stock Purestream Orders Not Allowed For Rest Of Day (PSVI)"
  end
  if value == "PSML" then
    return "Reject Reason: Order Cannot Be Both Melo And Purestream (PSML)"
  end
  if value == "CDVI" then
    return "Reject Reason: Firmup Requirement Violated For The Stock Conditionals Not Allowed For Rest Of Day (CDVI)"
  end
  if value == "CDFU" then
    return "Reject Reason: Order Is Not Expecting A Firmup Response (CDFU)"
  end
  if value == "CDTP" then
    return "Reject Reason: Invalid Conditional Type (CDTP)"
  end
  if value == "CDOR" then
    return "Reject Reason: Underlying Order Does Not Qualify As A Conditional Order (CDOR)"
  end
  if value == "CDTF" then
    return "Reject Reason: Invalid Tif For Conditional Order (CDTF)"
  end
  if value == "CDRE" then
    return "Reject Reason: Cannot Change Conditional Order To Firm Order And Vice Versa (CDRE)"
  end
  if value == "CNTG" then
    return "Reject Reason: System In Contingency Mode Orders Are Not Being Accepted (CNTG)"
  end
  if value == "IVEX" then
    return "Reject Reason: Invalid Expiry Time (IVEX)"
  end

  return "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Rejected Order Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field = {}

-- Size: Rejected Order Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.size = 1

-- Display: Rejected Order Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.display = function(value)
  if value == 37 then
    return "Rejected Order Optional Field: UserRefIdx (37)"
  end

  return "Rejected Order Optional Field: Unknown("..value..")"
end

-- Dissect: Rejected Order Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.rejected_order_optional_field, range, value, display)

  return offset + length, value
end

-- Replace Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field = {}

-- Size: Replace Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.size = 1

-- Display: Replace Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.display = function(value)
  if value == 37 then
    return "Replace Order Request Optional Field: UserRefIdx (37)"
  end
  if value == 3 then
    return "Replace Order Request Optional Field: MinQtyType (3)"
  end
  if value == 2 then
    return "Replace Order Request Optional Field: PegType (2)"
  end
  if value == 4 then
    return "Replace Order Request Optional Field: MinQty (4)"
  end
  if value == 5 then
    return "Replace Order Request Optional Field: MaxFloor (5)"
  end
  if value == 6 then
    return "Replace Order Request Optional Field: ExpireTime (6)"
  end
  if value == 7 then
    return "Replace Order Request Optional Field: PegOffset (7)"
  end
  if value == 8 then
    return "Replace Order Request Optional Field: TargetStrategy (8)"
  end
  if value == 9 then
    return "Replace Order Request Optional Field: OrderOrigination (9)"
  end
  if value == 10 then
    return "Replace Order Request Optional Field: RoutingArrangementIndicator (10)"
  end
  if value == 17 then
    return "Replace Order Request Optional Field: UMIRRegulationID (17)"
  end
  if value == 16 then
    return "Replace Order Request Optional Field: Anonymous (16)"
  end
  if value == 24 then
    return "Replace Order Request Optional Field: DisplayRange (24)"
  end
  if value == 25 then
    return "Replace Order Request Optional Field: CustomerAccount (25)"
  end
  if value == 26 then
    return "Replace Order Request Optional Field: AlgorithmID (26)"
  end
  if value == 27 then
    return "Replace Order Request Optional Field: CustomerLEI (27)"
  end
  if value == 28 then
    return "Replace Order Request Optional Field: BrokerLEI (28)"
  end
  if value == 30 then
    return "Replace Order Request Optional Field: AllowConditional (30)"
  end
  if value == 32 then
    return "Replace Order Request Optional Field: CXDConnect (32)"
  end
  if value == 33 then
    return "Replace Order Request Optional Field: PureStreamConnect (33)"
  end
  if value == 34 then
    return "Replace Order Request Optional Field: MinRate (34)"
  end
  if value == 35 then
    return "Replace Order Request Optional Field: MaxRate (35)"
  end
  if value == 43 then
    return "Replace Order Request Optional Field: HandlInst (43)"
  end

  return "Replace Order Request Optional Field: Unknown("..value..")"
end

-- Dissect: Replace Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.replace_order_request_optional_field, range, value, display)

  return offset + length, value
end

-- Reprice Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason = {}

-- Size: Reprice Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.size = 1

-- Display: Reprice Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.display = function(value)
  if value == 1 then
    return "Reprice Reason: Repriced To Prevent Trade (1)"
  end
  if value == 2 then
    return "Reprice Reason: Repriced To Prevent Lock (2)"
  end
  if value == 3 then
    return "Reprice Reason: Repriced To Prevent Cross (3)"
  end
  if value == 4 then
    return "Reprice Reason: Repriced For Marketplace Thresholds (4)"
  end

  return "Reprice Reason: Unknown("..value..")"
end

-- Dissect: Reprice Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.reprice_reason, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_session = {}

-- Size: Requested Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_session.size = 10

-- Display: Requested Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Restate Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason = {}

-- Size: Restate Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason.size = 1

-- Display: Restate Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason.display = function(value)
  if value == "O" then
    return "Restate Reason: Stream On (O)"
  end
  if value == "X" then
    return "Restate Reason: Stream Off (X)"
  end
  if value == "R" then
    return "Restate Reason: Conditional Order Firmup Request (R)"
  end

  return "Restate Reason: Unknown("..value..")"
end

-- Dissect: Restate Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.restate_reason, range, value, display)

  return offset + length, value
end

-- Routing Arrangement Indicator
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator = {}

-- Size: Routing Arrangement Indicator
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.size = 1

-- Display: Routing Arrangement Indicator
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.display = function(value)
  if value == "0" then
    return "Routing Arrangement Indicator: No Routing Arrangement In Place (0)"
  end
  if value == "1" then
    return "Routing Arrangement Indicator: Routing Arrangement In Place (1)"
  end

  return "Routing Arrangement Indicator: Unknown("..value..")"
end

-- Dissect: Routing Arrangement Indicator
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.routing_arrangement_indicator, range, value, display)

  return offset + length, value
end

-- Routing Strategy
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_strategy = {}

-- Size: Routing Strategy
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_strategy.size = 15

-- Display: Routing Strategy
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_strategy.display = function(value)
  return "Routing Strategy: "..value
end

-- Dissect: Routing Strategy
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_strategy.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_strategy.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.routing_strategy, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.secondary_order_id = {}

-- Size: Secondary Order Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.secondary_order_id.size = 8

-- Display: Secondary Order Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Sequenced Message Type: Order Accepted Message (A)"
  end
  if value == "U" then
    return "Sequenced Message Type: Order Replaced Message (U)"
  end
  if value == "C" then
    return "Sequenced Message Type: Order Canceled Message (C)"
  end
  if value == "D" then
    return "Sequenced Message Type: Stp Canceled Message (D)"
  end
  if value == "E" then
    return "Sequenced Message Type: Order Executed Message (E)"
  end
  if value == "B" then
    return "Sequenced Message Type: Corrected Trade Message (B)"
  end
  if value == "J" then
    return "Sequenced Message Type: Rejected Order Message (J)"
  end
  if value == "I" then
    return "Sequenced Message Type: Cancel Reject Message (I)"
  end
  if value == "R" then
    return "Sequenced Message Type: Order Restated Message (R)"
  end
  if value == "Q" then
    return "Sequenced Message Type: Account Query Response Message (Q)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Short Marking Exempt
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt = {}

-- Size: Short Marking Exempt
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.size = 1

-- Display: Short Marking Exempt
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.display = function(value)
  if value == "0" then
    return "Short Marking Exempt: Sme (0)"
  end

  return "Short Marking Exempt: Unknown("..value..")"
end

-- Dissect: Short Marking Exempt
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.short_marking_exempt, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side = {}

-- Size: Side
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.size = 1

-- Display: Side
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.display = function(value)
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.side, range, value, display)

  return offset + length, value
end

-- Stp Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field = {}

-- Size: Stp Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.size = 1

-- Display: Stp Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.display = function(value)
  if value == 37 then
    return "Stp Canceled Optional Field: UserRefIdx (37)"
  end

  return "Stp Canceled Optional Field: Unknown("..value..")"
end

-- Dissect: Stp Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.stp_canceled_optional_field, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.symbol = {}

-- Size: Symbol
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.symbol.size = 10

-- Display: Symbol
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Target Strategy
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy = {}

-- Size: Target Strategy
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.size = 2

-- Display: Target Strategy
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.display = function(value)
  if value == 1000 then
    return "Target Strategy: Liquidity Rate 515% (1000)"
  end
  if value == 1001 then
    return "Target Strategy: Liquidity Rate 530% (1001)"
  end
  if value == 1002 then
    return "Target Strategy: Mach Two 10200% (1002)"
  end
  if value == 1003 then
    return "Target Strategy: Custom Liquidity Rate (1003)"
  end

  return "Target Strategy: Unknown("..value..")"
end

-- Dissect: Target Strategy
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.target_strategy, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force = {}

-- Size: Time In Force
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.size = 1

-- Display: Time In Force
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.display = function(value)
  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "3" then
    return "Time In Force: Immediate Or Cancel (3)"
  end
  if value == "6" then
    return "Time In Force: Good Till Date (6)"
  end
  if value == "8" then
    return "Time In Force: Stream Or Kill (8)"
  end
  if value == "P" then
    return "Time In Force: Post Only Order (P)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp = {}

-- Size: Timestamp
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.size = 8

-- Display: Timestamp
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tsxncib
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib = {}

-- Size: Tsxncib
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.size = 1

-- Display: Tsxncib
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.display = function(value)
  if value == "N" then
    return "Tsxncib: No (N)"
  end
  if value == "Y" then
    return "Tsxncib: Yes (Y)"
  end

  return "Tsxncib: Unknown("..value..")"
end

-- Dissect: Tsxncib
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.tsxncib, range, value, display)

  return offset + length, value
end

-- Umir Account Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type = {}

-- Size: Umir Account Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type.size = 2

-- Display: Umir Account Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type.display = function(value)
  if value == "CL" then
    return "Umir Account Type: Client (CL)"
  end
  if value == "NC" then
    return "Umir Account Type: Non Client (NC)"
  end
  if value == "ST" then
    return "Umir Account Type: Specialist (ST)"
  end
  if value == "IN" then
    return "Umir Account Type: Inventory (IN)"
  end
  if value == "OF" then
    return "Umir Account Type: Options Firm Account (OF)"
  end
  if value == "OT" then
    return "Umir Account Type: Options Market Maker (OT)"
  end
  if value == "BU" then
    return "Umir Account Type: Bundled (BU)"
  end
  if value == "MC" then
    return "Umir Account Type: Multiple Clients (MC)"
  end

  return "Umir Account Type: Unknown("..value..")"
end

-- Dissect: Umir Account Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.umir_account_type, range, value, display)

  return offset + length, value
end

-- Umir Regulation Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id = {}

-- Size: Umir Regulation Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.size = 2

-- Display: Umir Regulation Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.display = function(value)
  if value == "IA" then
    return "Umir Regulation Id: Insider Account (IA)"
  end
  if value == "SS" then
    return "Umir Regulation Id: Significant Shareholder (SS)"
  end

  return "Umir Regulation Id: Unknown("..value..")"
end

-- Dissect: Umir Regulation Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.umir_regulation_id, range, value, display)

  return offset + length, value
end

-- Umir User Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_user_id = {}

-- Size: Umir User Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_user_id.size = 8

-- Display: Umir User Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_user_id.display = function(value)
  return "Umir User Id: "..value
end

-- Dissect: Umir User Id
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_user_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_user_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.umir_user_id, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message_type.display = function(value)
  if value == "O" then
    return "Unsequenced Message Type: Enter Order Message (O)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Replace Order Request Message (U)"
  end
  if value == "X" then
    return "Unsequenced Message Type: Cancel Order Request Message (X)"
  end
  if value == "Q" then
    return "Unsequenced Message Type: Account Query Request Message (Q)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- User Ref Idx
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx = {}

-- Size: User Ref Idx
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.size = 1

-- Display: User Ref Idx
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.display = function(value)
  return "User Ref Idx: "..value
end

-- Dissect: User Ref Idx
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.user_ref_idx, range, value, display)

  return offset + length, value
end

-- User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num = {}

-- Size: User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.size = 4

-- Display: User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.display = function(value)
  return "User Ref Num: "..value
end

-- Dissect: User Ref Num
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.user_ref_num, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.username = {}

-- Size: Username
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.username.size = 6

-- Display: Username
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.username, range, value, display)

  return offset + length, value
end

-- Wash Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade = {}

-- Size: Wash Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade.size = 1

-- Display: Wash Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade.display = function(value)
  if value == "N" then
    return "Wash Trade: No (N)"
  end
  if value == "Y" then
    return "Wash Trade: Yes (Y)"
  end

  return "Wash Trade: Unknown("..value..")"
end

-- Dissect: Wash Trade
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.wash_trade, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4
-----------------------------------------------------------------------

-- End Of Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.end_of_session = {}

-- Display: End Of Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Account Query Response Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_value = {}

-- Dissect: Account Query Response Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_value.dissect = function(buffer, offset, packet, parent, account_query_response_optional_field)
  -- Dissect User Ref Idx
  if account_query_response_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Account Query Response Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_appendage = {}

-- Display: Account Query Response Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Response Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_appendage.fields = function(buffer, offset, packet, parent, size_of_account_query_response_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Account Query Response Optional Field: 1 Byte Signed Fixed Width Integer Enum with 1 values
  index, account_query_response_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.dissect(buffer, index, packet, parent)

  -- Account Query Response Optional Value: Runtime Type with 1 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_value.dissect(buffer, index, packet, parent, account_query_response_optional_field)

  return index
end

-- Dissect: Account Query Response Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_appendage.dissect = function(buffer, offset, packet, parent, size_of_account_query_response_appendage)
  local index = offset + size_of_account_query_response_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_response_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_appendage.fields(buffer, offset, packet, parent, size_of_account_query_response_appendage)
    parent:set_len(size_of_account_query_response_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_appendage.fields(buffer, offset, packet, parent, size_of_account_query_response_appendage)

    return index
  end
end

-- Account Query Response Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_message = {}

-- Size: Account Query Response Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Account Query Response Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Response Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Next User Ref Num: UserRefNum
  index, next_user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.next_user_ref_num.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Account Query Response Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Account Query Response Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Account Query Response Appendage
    local size_of_account_query_response_appendage = optional_field_length + 1

    -- Account Query Response Appendage: Struct of 3 fields
    index, account_query_response_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_appendage.dissect(buffer, index, packet, parent, size_of_account_query_response_appendage)
  end

  return index
end

-- Dissect: Account Query Response Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_response_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Restated Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_value = {}

-- Dissect: Order Restated Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_value.dissect = function(buffer, offset, packet, parent, order_restated_optional_field)
  -- Dissect User Ref Idx
  if order_restated_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Firm Up Id
  if order_restated_optional_field == 31 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Restated Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_appendage = {}

-- Display: Order Restated Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_appendage.fields = function(buffer, offset, packet, parent, size_of_order_restated_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Restated Optional Field: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, order_restated_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.dissect(buffer, index, packet, parent)

  -- Order Restated Optional Value: Runtime Type with 2 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_value.dissect(buffer, index, packet, parent, order_restated_optional_field)

  return index
end

-- Dissect: Order Restated Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_restated_appendage)
  local index = offset + size_of_order_restated_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_restated_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_appendage.fields(buffer, offset, packet, parent, size_of_order_restated_appendage)
    parent:set_len(size_of_order_restated_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_appendage.fields(buffer, offset, packet, parent, size_of_order_restated_appendage)

    return index
  end
end

-- Order Restated Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_message = {}

-- Size: Order Restated Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Restated Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Restate Reason: Alpha
  index, restate_reason = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Order Restated Appendage
  local end_of_payload = appendage_length + index

  -- Order Restated Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Restated Appendage
    local size_of_order_restated_appendage = optional_field_length + 1

    -- Order Restated Appendage: Struct of 3 fields
    index, order_restated_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_appendage.dissect(buffer, index, packet, parent, size_of_order_restated_appendage)
  end

  return index
end

-- Dissect: Order Restated Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_restated_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reject Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_value = {}

-- Dissect: Cancel Reject Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_value.dissect = function(buffer, offset, packet, parent, cancel_reject_optional_field)
  -- Dissect User Ref Idx
  if cancel_reject_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Cancel Reject Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_appendage = {}

-- Display: Cancel Reject Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reject Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_appendage.fields = function(buffer, offset, packet, parent, size_of_cancel_reject_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Cancel Reject Optional Field: 1 Byte Signed Fixed Width Integer Enum with 1 values
  index, cancel_reject_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.dissect(buffer, index, packet, parent)

  -- Cancel Reject Optional Value: Runtime Type with 1 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_value.dissect(buffer, index, packet, parent, cancel_reject_optional_field)

  return index
end

-- Dissect: Cancel Reject Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_appendage.dissect = function(buffer, offset, packet, parent, size_of_cancel_reject_appendage)
  local index = offset + size_of_cancel_reject_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reject_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_appendage.fields(buffer, offset, packet, parent, size_of_cancel_reject_appendage)
    parent:set_len(size_of_cancel_reject_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_appendage.fields(buffer, offset, packet, parent, size_of_cancel_reject_appendage)

    return index
  end
end

-- Cancel Reject Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_message = {}

-- Size: Cancel Reject Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Cancel Reject Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reject Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Reject Reason: Alpha
  index, reject_reason = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Cancel Reject Appendage
  local end_of_payload = appendage_length + index

  -- Cancel Reject Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Cancel Reject Appendage
    local size_of_cancel_reject_appendage = optional_field_length + 1

    -- Cancel Reject Appendage: Struct of 3 fields
    index, cancel_reject_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_appendage.dissect(buffer, index, packet, parent, size_of_cancel_reject_appendage)
  end

  return index
end

-- Dissect: Cancel Reject Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reject_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejected Order Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_value = {}

-- Dissect: Rejected Order Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_value.dissect = function(buffer, offset, packet, parent, rejected_order_optional_field)
  -- Dissect User Ref Idx
  if rejected_order_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Rejected Order Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_appendage = {}

-- Display: Rejected Order Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Order Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_appendage.fields = function(buffer, offset, packet, parent, size_of_rejected_order_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Rejected Order Optional Field: 1 Byte Signed Fixed Width Integer Enum with 1 values
  index, rejected_order_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.dissect(buffer, index, packet, parent)

  -- Rejected Order Optional Value: Runtime Type with 1 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_value.dissect(buffer, index, packet, parent, rejected_order_optional_field)

  return index
end

-- Dissect: Rejected Order Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_appendage.dissect = function(buffer, offset, packet, parent, size_of_rejected_order_appendage)
  local index = offset + size_of_rejected_order_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.rejected_order_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_appendage.fields(buffer, offset, packet, parent, size_of_rejected_order_appendage)
    parent:set_len(size_of_rejected_order_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_appendage.fields(buffer, offset, packet, parent, size_of_rejected_order_appendage)

    return index
  end
end

-- Rejected Order Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_message = {}

-- Size: Rejected Order Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Rejected Order Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Order Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Reject Reason: Alpha
  index, reject_reason = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Rejected Order Appendage
  local end_of_payload = appendage_length + index

  -- Rejected Order Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Rejected Order Appendage
    local size_of_rejected_order_appendage = optional_field_length + 1

    -- Rejected Order Appendage: Struct of 3 fields
    index, rejected_order_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_appendage.dissect(buffer, index, packet, parent, size_of_rejected_order_appendage)
  end

  return index
end

-- Dissect: Rejected Order Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.rejected_order_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Trade Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_value = {}

-- Dissect: Corrected Trade Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_value.dissect = function(buffer, offset, packet, parent, corrected_trade_optional_field)
  -- Dissect User Ref Idx
  if corrected_trade_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Corrected Trade Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_appendage = {}

-- Display: Corrected Trade Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_appendage.fields = function(buffer, offset, packet, parent, size_of_corrected_trade_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Corrected Trade Optional Field: 1 Byte Signed Fixed Width Integer Enum with 1 values
  index, corrected_trade_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.dissect(buffer, index, packet, parent)

  -- Corrected Trade Optional Value: Runtime Type with 1 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_value.dissect(buffer, index, packet, parent, corrected_trade_optional_field)

  return index
end

-- Dissect: Corrected Trade Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_appendage.dissect = function(buffer, offset, packet, parent, size_of_corrected_trade_appendage)
  local index = offset + size_of_corrected_trade_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.corrected_trade_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_appendage.fields(buffer, offset, packet, parent, size_of_corrected_trade_appendage)
    parent:set_len(size_of_corrected_trade_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_appendage.fields(buffer, offset, packet, parent, size_of_corrected_trade_appendage)

    return index
  end
end

-- Corrected Trade Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_message = {}

-- Size: Corrected Trade Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Corrected Trade Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.match_number.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Corrected Trade Appendage
  local end_of_payload = appendage_length + index

  -- Corrected Trade Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Corrected Trade Appendage
    local size_of_corrected_trade_appendage = optional_field_length + 1

    -- Corrected Trade Appendage: Struct of 3 fields
    index, corrected_trade_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_appendage.dissect(buffer, index, packet, parent, size_of_corrected_trade_appendage)
  end

  return index
end

-- Dissect: Corrected Trade Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.corrected_trade_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_value = {}

-- Dissect: Order Executed Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_value.dissect = function(buffer, offset, packet, parent, order_executed_optional_field)
  -- Dissect User Ref Idx
  if order_executed_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execute Match
  if order_executed_optional_field == 38 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Secondary Order Id
  if order_executed_optional_field == 40 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.secondary_order_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broker Pref
  if order_executed_optional_field == 42 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Principal Trade
  if order_executed_optional_field == 13 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Wash Trade
  if order_executed_optional_field == 41 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cum Rate
  if order_executed_optional_field == 36 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cum_rate.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Executed Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_appendage = {}

-- Display: Order Executed Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_appendage.fields = function(buffer, offset, packet, parent, size_of_order_executed_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Executed Optional Field: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, order_executed_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.dissect(buffer, index, packet, parent)

  -- Order Executed Optional Value: Runtime Type with 7 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_value.dissect(buffer, index, packet, parent, order_executed_optional_field)

  return index
end

-- Dissect: Order Executed Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_executed_appendage)
  local index = offset + size_of_order_executed_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_executed_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_appendage.fields(buffer, offset, packet, parent, size_of_order_executed_appendage)
    parent:set_len(size_of_order_executed_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_appendage.fields(buffer, offset, packet, parent, size_of_order_executed_appendage)

    return index
  end
end

-- Order Executed Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Executed Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.match_number.dissect(buffer, index, packet, parent)

  -- Exec Broker: Alpha
  index, exec_broker = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.exec_broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Numeric
  index, contra_broker = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.contra_broker.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Order Executed Appendage
  local end_of_payload = appendage_length + index

  -- Order Executed Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Executed Appendage
    local size_of_order_executed_appendage = optional_field_length + 1

    -- Order Executed Appendage: Struct of 3 fields
    index, order_executed_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_appendage.dissect(buffer, index, packet, parent, size_of_order_executed_appendage)
  end

  return index
end

-- Dissect: Order Executed Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Stp Canceled Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_value = {}

-- Dissect: Stp Canceled Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_value.dissect = function(buffer, offset, packet, parent, stp_canceled_optional_field)
  -- Dissect User Ref Idx
  if stp_canceled_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Stp Canceled Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_appendage = {}

-- Display: Stp Canceled Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stp Canceled Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_appendage.fields = function(buffer, offset, packet, parent, size_of_stp_canceled_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Stp Canceled Optional Field: 1 Byte Signed Fixed Width Integer Enum with 1 values
  index, stp_canceled_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.dissect(buffer, index, packet, parent)

  -- Stp Canceled Optional Value: Runtime Type with 1 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_value.dissect(buffer, index, packet, parent, stp_canceled_optional_field)

  return index
end

-- Dissect: Stp Canceled Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_appendage.dissect = function(buffer, offset, packet, parent, size_of_stp_canceled_appendage)
  local index = offset + size_of_stp_canceled_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.stp_canceled_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_appendage.fields(buffer, offset, packet, parent, size_of_stp_canceled_appendage)
    parent:set_len(size_of_stp_canceled_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_appendage.fields(buffer, offset, packet, parent, size_of_stp_canceled_appendage)

    return index
  end
end

-- Stp Canceled Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_message = {}

-- Size: Stp Canceled Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Stp Canceled Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stp Canceled Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Decrement Shares: Numeric
  index, decrement_shares = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.decrement_shares.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alpha
  index, cancel_reason = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.dissect(buffer, index, packet, parent)

  -- Quantity Prevented From Trading: Numeric
  index, quantity_prevented_from_trading = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.quantity_prevented_from_trading.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Stp Canceled Appendage
  local end_of_payload = appendage_length + index

  -- Stp Canceled Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Stp Canceled Appendage
    local size_of_stp_canceled_appendage = optional_field_length + 1

    -- Stp Canceled Appendage: Struct of 3 fields
    index, stp_canceled_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_appendage.dissect(buffer, index, packet, parent, size_of_stp_canceled_appendage)
  end

  return index
end

-- Dissect: Stp Canceled Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.stp_canceled_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Canceled Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_value = {}

-- Dissect: Order Canceled Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_value.dissect = function(buffer, offset, packet, parent, order_canceled_optional_field)
  -- Dissect User Ref Idx
  if order_canceled_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Canceled Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_appendage = {}

-- Display: Order Canceled Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_appendage.fields = function(buffer, offset, packet, parent, size_of_order_canceled_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Canceled Optional Field: 1 Byte Signed Fixed Width Integer Enum with 1 values
  index, order_canceled_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.dissect(buffer, index, packet, parent)

  -- Order Canceled Optional Value: Runtime Type with 1 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_value.dissect(buffer, index, packet, parent, order_canceled_optional_field)

  return index
end

-- Dissect: Order Canceled Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_canceled_appendage)
  local index = offset + size_of_order_canceled_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_canceled_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_appendage.fields(buffer, offset, packet, parent, size_of_order_canceled_appendage)
    parent:set_len(size_of_order_canceled_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_appendage.fields(buffer, offset, packet, parent, size_of_order_canceled_appendage)

    return index
  end
end

-- Order Canceled Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_message = {}

-- Size: Order Canceled Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Canceled Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Qty: Numeric
  index, order_qty = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alpha
  index, cancel_reason = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Order Canceled Appendage
  local end_of_payload = appendage_length + index

  -- Order Canceled Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Canceled Appendage
    local size_of_order_canceled_appendage = optional_field_length + 1

    -- Order Canceled Appendage: Struct of 3 fields
    index, order_canceled_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_appendage.dissect(buffer, index, packet, parent, size_of_order_canceled_appendage)
  end

  return index
end

-- Dissect: Order Canceled Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_canceled_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_value = {}

-- Dissect: Order Replaced Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_value.dissect = function(buffer, offset, packet, parent, order_replaced_optional_field)
  -- Dissect User Ref Idx
  if order_replaced_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty Type
  if order_replaced_optional_field == 3 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Type
  if order_replaced_optional_field == 2 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty
  if order_replaced_optional_field == 4 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if order_replaced_optional_field == 5 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expire Time
  if order_replaced_optional_field == 6 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Offset
  if order_replaced_optional_field == 7 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Target Strategy
  if order_replaced_optional_field == 8 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Origination
  if order_replaced_optional_field == 9 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Routing Arrangement Indicator
  if order_replaced_optional_field == 10 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Umir Regulation Id
  if order_replaced_optional_field == 17 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Anonymous
  if order_replaced_optional_field == 16 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Display Range
  if order_replaced_optional_field == 24 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Account
  if order_replaced_optional_field == 25 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Algorithm Id
  if order_replaced_optional_field == 26 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Lei
  if order_replaced_optional_field == 27 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broker Lei
  if order_replaced_optional_field == 28 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allow Conditional
  if order_replaced_optional_field == 30 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cxd Connect
  if order_replaced_optional_field == 32 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pure Stream Connect
  if order_replaced_optional_field == 33 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Rate
  if order_replaced_optional_field == 34 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Rate
  if order_replaced_optional_field == 35 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Handl Inst
  if order_replaced_optional_field == 43 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reprice Reason
  if order_replaced_optional_field == 44 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Nbbo Setter
  if order_replaced_optional_field == 45 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Replaced Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_appendage = {}

-- Display: Order Replaced Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_appendage.fields = function(buffer, offset, packet, parent, size_of_order_replaced_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Replaced Optional Field: 1 Byte Signed Fixed Width Integer Enum with 25 values
  index, order_replaced_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.dissect(buffer, index, packet, parent)

  -- Order Replaced Optional Value: Runtime Type with 25 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_value.dissect(buffer, index, packet, parent, order_replaced_optional_field)

  return index
end

-- Dissect: Order Replaced Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_replaced_appendage)
  local index = offset + size_of_order_replaced_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_replaced_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_appendage.fields(buffer, offset, packet, parent, size_of_order_replaced_appendage)
    parent:set_len(size_of_order_replaced_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_appendage.fields(buffer, offset, packet, parent, size_of_order_replaced_appendage)

    return index
  end
end

-- Order Replaced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_message = {}

-- Size: Order Replaced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Replaced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Orig User Ref Num: UserRefNum
  index, orig_user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Qty: Numeric
  index, order_qty = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_reference_number.dissect(buffer, index, packet, parent)

  -- Order State: Alpha
  index, order_state = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Order Replaced Appendage
  local end_of_payload = appendage_length + index

  -- Order Replaced Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Replaced Appendage
    local size_of_order_replaced_appendage = optional_field_length + 1

    -- Order Replaced Appendage: Struct of 3 fields
    index, order_replaced_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_appendage.dissect(buffer, index, packet, parent, size_of_order_replaced_appendage)
  end

  return index
end

-- Dissect: Order Replaced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_replaced_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Accepted Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_value = {}

-- Dissect: Order Accepted Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_value.dissect = function(buffer, offset, packet, parent, order_accepted_optional_field)
  -- Dissect User Ref Idx
  if order_accepted_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Account
  if order_accepted_optional_field == 1 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Type
  if order_accepted_optional_field == 2 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty Type
  if order_accepted_optional_field == 3 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty
  if order_accepted_optional_field == 4 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if order_accepted_optional_field == 5 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expire Time
  if order_accepted_optional_field == 6 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Offset
  if order_accepted_optional_field == 7 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Target Strategy
  if order_accepted_optional_field == 8 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Origination
  if order_accepted_optional_field == 9 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Routing Arrangement Indicator
  if order_accepted_optional_field == 10 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Basket Trade
  if order_accepted_optional_field == 11 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Program Trade
  if order_accepted_optional_field == 12 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Jitney
  if order_accepted_optional_field == 14 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.jitney.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gef Eligible
  if order_accepted_optional_field == 15 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Anonymous
  if order_accepted_optional_field == 16 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Umir Regulation Id
  if order_accepted_optional_field == 17 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bypass
  if order_accepted_optional_field == 18 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tsxncib
  if order_accepted_optional_field == 19 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.dissect(buffer, offset, packet, parent)
  end
  -- Dissect No Trade Feat
  if order_accepted_optional_field == 20 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect No Trade Key
  if order_accepted_optional_field == 21 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_key.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Marking Exempt
  if order_accepted_optional_field == 22 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Po Comment
  if order_accepted_optional_field == 23 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.po_comment.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Display Range
  if order_accepted_optional_field == 24 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Account
  if order_accepted_optional_field == 25 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Algorithm Id
  if order_accepted_optional_field == 26 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Lei
  if order_accepted_optional_field == 27 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broker Lei
  if order_accepted_optional_field == 28 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Conditional Order
  if order_accepted_optional_field == 29 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allow Conditional
  if order_accepted_optional_field == 30 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Firm Up Id
  if order_accepted_optional_field == 31 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cxd Connect
  if order_accepted_optional_field == 32 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pure Stream Connect
  if order_accepted_optional_field == 33 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Rate
  if order_accepted_optional_field == 34 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Rate
  if order_accepted_optional_field == 35 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Routing Strategy
  if order_accepted_optional_field == 39 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_strategy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Handl Inst
  if order_accepted_optional_field == 43 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reprice Reason
  if order_accepted_optional_field == 44 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Nbbo Setter
  if order_accepted_optional_field == 45 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Accepted Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_appendage = {}

-- Display: Order Accepted Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_appendage.fields = function(buffer, offset, packet, parent, size_of_order_accepted_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Accepted Optional Field: 1 Byte Signed Fixed Width Integer Enum with 39 values
  index, order_accepted_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.dissect(buffer, index, packet, parent)

  -- Order Accepted Optional Value: Runtime Type with 39 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_value.dissect(buffer, index, packet, parent, order_accepted_optional_field)

  return index
end

-- Dissect: Order Accepted Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_accepted_appendage)
  local index = offset + size_of_order_accepted_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_accepted_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_appendage.fields(buffer, offset, packet, parent, size_of_order_accepted_appendage)
    parent:set_len(size_of_order_accepted_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_appendage.fields(buffer, offset, packet, parent, size_of_order_accepted_appendage)

    return index
  end
end

-- Order Accepted Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_message = {}

-- Size: Order Accepted Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Accepted Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Qty: Numeric
  index, order_qty = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.dissect(buffer, index, packet, parent)

  -- Ex Destination: Alpha
  index, ex_destination = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination.dissect(buffer, index, packet, parent)

  -- Umir Account Type: Alpha
  index, umir_account_type = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type.dissect(buffer, index, packet, parent)

  -- Umir User Id: Alpha
  index, umir_user_id = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_user_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_reference_number.dissect(buffer, index, packet, parent)

  -- Order State: Alpha
  index, order_state = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Order Accepted Appendage
  local end_of_payload = appendage_length + index

  -- Order Accepted Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Accepted Appendage
    local size_of_order_accepted_appendage = optional_field_length + 1

    -- Order Accepted Appendage: Struct of 3 fields
    index, order_accepted_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_appendage.dissect(buffer, index, packet, parent, size_of_order_accepted_appendage)
  end

  return index
end

-- Dissect: Order Accepted Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_accepted_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.system_event_message = {}

-- Size: System Event Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.system_event_message.size =
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.size + 
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.size

-- Display: System Event Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Accepted Message
  if sequenced_message_type == "A" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == "U" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Message
  if sequenced_message_type == "C" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stp Canceled Message
  if sequenced_message_type == "D" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corrected Trade Message
  if sequenced_message_type == "B" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rejected Order Message
  if sequenced_message_type == "J" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Reject Message
  if sequenced_message_type == "I" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if sequenced_message_type == "R" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Account Query Response Message
  if sequenced_message_type == "Q" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.current)
      end
      local value = flow.sequence.next
      if value ~= nil then
        if memo == nil then
          memo = {}
          flow.sequence.frames[packet.number] = memo
        end
        memo[#memo + 1] = value
        flow.sequence.next = value + 1
        if show.sequences then
          local sequence = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stream_frame ~= packet.number or nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stream_occurrence >= #memo then
          nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stream_frame = packet.number
          nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stream_occurrence = 0
        end
        nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stream_occurrence = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stream_occurrence + 1
        local value = memo[nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 11 values
  index, sequenced_message_type = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 11 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_rejected_packet.size =
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_accepted_packet.size =
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_session.size + 
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet = {}

-- Size: Debug Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.size =
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.size

-- Display: Debug Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Debug Text: 1 Byte Ascii String
  index, debug_text = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_payload = {}

-- Dissect: Server Payload
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header.size =
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.packet_length.size + 
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end

-- Logout Request
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.logout_request = {}

-- Display: Logout Request
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Account Query Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_value = {}

-- Dissect: Account Query Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_value.dissect = function(buffer, offset, packet, parent, account_query_request_optional_field)
  -- Dissect User Ref Idx
  if account_query_request_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Account Query Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_appendage = {}

-- Display: Account Query Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_appendage.fields = function(buffer, offset, packet, parent, size_of_account_query_request_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Account Query Request Optional Field: 1 Byte Signed Fixed Width Integer Enum with 1 values
  index, account_query_request_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.dissect(buffer, index, packet, parent)

  -- Account Query Request Optional Value: Runtime Type with 1 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_value.dissect(buffer, index, packet, parent, account_query_request_optional_field)

  return index
end

-- Dissect: Account Query Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_appendage.dissect = function(buffer, offset, packet, parent, size_of_account_query_request_appendage)
  local index = offset + size_of_account_query_request_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_request_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_appendage.fields(buffer, offset, packet, parent, size_of_account_query_request_appendage)
    parent:set_len(size_of_account_query_request_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_appendage.fields(buffer, offset, packet, parent, size_of_account_query_request_appendage)

    return index
  end
end

-- Account Query Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_message = {}

-- Size: Account Query Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Account Query Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Account Query Request Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Account Query Request Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Account Query Request Appendage
    local size_of_account_query_request_appendage = optional_field_length + 1

    -- Account Query Request Appendage: Struct of 3 fields
    index, account_query_request_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_appendage.dissect(buffer, index, packet, parent, size_of_account_query_request_appendage)
  end

  return index
end

-- Dissect: Account Query Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_request_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_value = {}

-- Dissect: Cancel Order Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_value.dissect = function(buffer, offset, packet, parent, cancel_order_request_optional_field)
  -- Dissect User Ref Idx
  if cancel_order_request_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Cancel Order Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_appendage = {}

-- Display: Cancel Order Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_appendage.fields = function(buffer, offset, packet, parent, size_of_cancel_order_request_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Cancel Order Request Optional Field: 1 Byte Signed Fixed Width Integer Enum with 1 values
  index, cancel_order_request_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.dissect(buffer, index, packet, parent)

  -- Cancel Order Request Optional Value: Runtime Type with 1 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_value.dissect(buffer, index, packet, parent, cancel_order_request_optional_field)

  return index
end

-- Dissect: Cancel Order Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_appendage.dissect = function(buffer, offset, packet, parent, size_of_cancel_order_request_appendage)
  local index = offset + size_of_cancel_order_request_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_order_request_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_appendage.fields(buffer, offset, packet, parent, size_of_cancel_order_request_appendage)
    parent:set_len(size_of_cancel_order_request_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_appendage.fields(buffer, offset, packet, parent, size_of_cancel_order_request_appendage)

    return index
  end
end

-- Cancel Order Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_message = {}

-- Size: Cancel Order Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Cancel Order Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Qty: Numeric
  index, order_qty = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Cancel Order Request Appendage
  local end_of_payload = appendage_length + index

  -- Cancel Order Request Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Cancel Order Request Appendage
    local size_of_cancel_order_request_appendage = optional_field_length + 1

    -- Cancel Order Request Appendage: Struct of 3 fields
    index, cancel_order_request_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_appendage.dissect(buffer, index, packet, parent, size_of_cancel_order_request_appendage)
  end

  return index
end

-- Dissect: Cancel Order Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_order_request_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_value = {}

-- Dissect: Replace Order Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_value.dissect = function(buffer, offset, packet, parent, replace_order_request_optional_field)
  -- Dissect User Ref Idx
  if replace_order_request_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty Type
  if replace_order_request_optional_field == 3 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Type
  if replace_order_request_optional_field == 2 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty
  if replace_order_request_optional_field == 4 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if replace_order_request_optional_field == 5 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expire Time
  if replace_order_request_optional_field == 6 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Offset
  if replace_order_request_optional_field == 7 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Target Strategy
  if replace_order_request_optional_field == 8 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Origination
  if replace_order_request_optional_field == 9 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Routing Arrangement Indicator
  if replace_order_request_optional_field == 10 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Umir Regulation Id
  if replace_order_request_optional_field == 17 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Anonymous
  if replace_order_request_optional_field == 16 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Display Range
  if replace_order_request_optional_field == 24 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Account
  if replace_order_request_optional_field == 25 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Algorithm Id
  if replace_order_request_optional_field == 26 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Lei
  if replace_order_request_optional_field == 27 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broker Lei
  if replace_order_request_optional_field == 28 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allow Conditional
  if replace_order_request_optional_field == 30 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cxd Connect
  if replace_order_request_optional_field == 32 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pure Stream Connect
  if replace_order_request_optional_field == 33 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Rate
  if replace_order_request_optional_field == 34 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Rate
  if replace_order_request_optional_field == 35 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Handl Inst
  if replace_order_request_optional_field == 43 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Replace Order Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_appendage = {}

-- Display: Replace Order Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_appendage.fields = function(buffer, offset, packet, parent, size_of_replace_order_request_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Replace Order Request Optional Field: 1 Byte Signed Fixed Width Integer Enum with 23 values
  index, replace_order_request_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.dissect(buffer, index, packet, parent)

  -- Replace Order Request Optional Value: Runtime Type with 23 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_value.dissect(buffer, index, packet, parent, replace_order_request_optional_field)

  return index
end

-- Dissect: Replace Order Request Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_appendage.dissect = function(buffer, offset, packet, parent, size_of_replace_order_request_appendage)
  local index = offset + size_of_replace_order_request_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.replace_order_request_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_appendage.fields(buffer, offset, packet, parent, size_of_replace_order_request_appendage)
    parent:set_len(size_of_replace_order_request_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_appendage.fields(buffer, offset, packet, parent, size_of_replace_order_request_appendage)

    return index
  end
end

-- Replace Order Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_message = {}

-- Size: Replace Order Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Replace Order Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig User Ref Num: UserRefNum
  index, orig_user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Qty: Numeric
  index, order_qty = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Replace Order Request Appendage
  local end_of_payload = appendage_length + index

  -- Replace Order Request Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Replace Order Request Appendage
    local size_of_replace_order_request_appendage = optional_field_length + 1

    -- Replace Order Request Appendage: Struct of 3 fields
    index, replace_order_request_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_appendage.dissect(buffer, index, packet, parent, size_of_replace_order_request_appendage)
  end

  return index
end

-- Dissect: Replace Order Request Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.replace_order_request_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_value = {}

-- Dissect: Enter Order Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_value.dissect = function(buffer, offset, packet, parent, enter_order_optional_field)
  -- Dissect User Ref Idx
  if enter_order_optional_field == 37 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Account
  if enter_order_optional_field == 1 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Type
  if enter_order_optional_field == 2 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty Type
  if enter_order_optional_field == 3 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty
  if enter_order_optional_field == 4 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if enter_order_optional_field == 5 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expire Time
  if enter_order_optional_field == 6 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Offset
  if enter_order_optional_field == 7 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Target Strategy
  if enter_order_optional_field == 8 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Origination
  if enter_order_optional_field == 9 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Routing Arrangement Indicator
  if enter_order_optional_field == 10 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Basket Trade
  if enter_order_optional_field == 11 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Program Trade
  if enter_order_optional_field == 12 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Jitney
  if enter_order_optional_field == 14 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.jitney.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gef Eligible
  if enter_order_optional_field == 15 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Anonymous
  if enter_order_optional_field == 16 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Umir Regulation Id
  if enter_order_optional_field == 17 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bypass
  if enter_order_optional_field == 18 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tsxncib
  if enter_order_optional_field == 19 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.dissect(buffer, offset, packet, parent)
  end
  -- Dissect No Trade Feat
  if enter_order_optional_field == 20 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect No Trade Key
  if enter_order_optional_field == 21 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_key.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Marking Exempt
  if enter_order_optional_field == 22 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Po Comment
  if enter_order_optional_field == 23 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.po_comment.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Display Range
  if enter_order_optional_field == 24 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Account
  if enter_order_optional_field == 25 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Algorithm Id
  if enter_order_optional_field == 26 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Lei
  if enter_order_optional_field == 27 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broker Lei
  if enter_order_optional_field == 28 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Conditional Order
  if enter_order_optional_field == 29 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allow Conditional
  if enter_order_optional_field == 30 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Firm Up Id
  if enter_order_optional_field == 31 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cxd Connect
  if enter_order_optional_field == 32 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pure Stream Connect
  if enter_order_optional_field == 33 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Rate
  if enter_order_optional_field == 34 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Rate
  if enter_order_optional_field == 35 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Routing Strategy
  if enter_order_optional_field == 39 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_strategy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Handl Inst
  if enter_order_optional_field == 43 then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Enter Order Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_appendage = {}

-- Display: Enter Order Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_appendage.fields = function(buffer, offset, packet, parent, size_of_enter_order_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Enter Order Optional Field: 1 Byte Signed Fixed Width Integer Enum with 37 values
  index, enter_order_optional_field = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.dissect(buffer, index, packet, parent)

  -- Enter Order Optional Value: Runtime Type with 37 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_value.dissect(buffer, index, packet, parent, enter_order_optional_field)

  return index
end

-- Dissect: Enter Order Appendage
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_appendage.dissect = function(buffer, offset, packet, parent, size_of_enter_order_appendage)
  local index = offset + size_of_enter_order_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.enter_order_appendage, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_appendage.fields(buffer, offset, packet, parent, size_of_enter_order_appendage)
    parent:set_len(size_of_enter_order_appendage)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_appendage.fields(buffer, offset, packet, parent, size_of_enter_order_appendage)

    return index
  end
end

-- Enter Order Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_message = {}

-- Size: Enter Order Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Enter Order Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Qty: Numeric
  index, order_qty = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.dissect(buffer, index, packet, parent)

  -- Ex Destination: Alpha
  index, ex_destination = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination.dissect(buffer, index, packet, parent)

  -- Umir Account Type: Alpha
  index, umir_account_type = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type.dissect(buffer, index, packet, parent)

  -- Umir User Id: Alpha
  index, umir_user_id = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_user_id.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Enter Order Appendage
  local end_of_payload = appendage_length + index

  -- Enter Order Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Enter Order Appendage
    local size_of_enter_order_appendage = optional_field_length + 1

    -- Enter Order Appendage: Struct of 3 fields
    index, enter_order_appendage = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_appendage.dissect(buffer, index, packet, parent, size_of_enter_order_appendage)
  end

  return index
end

-- Dissect: Enter Order Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.enter_order_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message = {}

-- Dissect: Unsequenced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Request Message
  if unsequenced_message_type == "U" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Request Message
  if unsequenced_message_type == "X" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Account Query Request Message
  if unsequenced_message_type == "Q" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 4 values
  index, unsequenced_message_type = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 4 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_request_packet.size =
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.username.size + 
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.password.size + 
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_session.size + 
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_payload = {}

-- Dissect: Client Payload
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header.size =
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.packet_length.size + 
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.init()
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.accepted_sequence_number.current = nil
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.current = nil
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conversation.flows = {}
end

-- Connection roles for Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4: Client is the initiator, Server is the acceptor
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.role = function(packet)
  if omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.acceptor_port

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

  if omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.prefs.swap_sides then
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4
function omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4, buffer(), omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.description, "("..buffer:len().." Bytes)")

  local role = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.role(packet)

  if role == "initiator" then
    return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local client_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if client_packet_type == "+" then
    return true
  end

  -- Login Request Packet
  if client_packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if client_packet_type == "U" then
    if buffer:len() < 4 then
      return false
    end

    local unsequenced_message_type = buffer(3, 1):string()

    -- Enter Order Message
    if unsequenced_message_type == "O" then
      return true
    end

    -- Replace Order Request Message
    if unsequenced_message_type == "U" then
      return true
    end

    -- Cancel Order Request Message
    if unsequenced_message_type == "X" then
      return true
    end

    -- Account Query Request Message
    if unsequenced_message_type == "Q" then
      return true
    end

    return false
  end

  -- Client Heartbeat
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request
  if client_packet_type == "O" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local server_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if server_packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if server_packet_type == "S" then
    if buffer:len() < 4 then
      return false
    end

    local sequenced_message_type = buffer(3, 1):string()

    -- System Event Message
    if sequenced_message_type == "S" then
      return true
    end

    -- Order Accepted Message
    if sequenced_message_type == "A" then
      return true
    end

    -- Order Replaced Message
    if sequenced_message_type == "U" then
      return true
    end

    -- Order Canceled Message
    if sequenced_message_type == "C" then
      return true
    end

    -- Stp Canceled Message
    if sequenced_message_type == "D" then
      return true
    end

    -- Order Executed Message
    if sequenced_message_type == "E" then
      return true
    end

    -- Corrected Trade Message
    if sequenced_message_type == "B" then
      return true
    end

    -- Rejected Order Message
    if sequenced_message_type == "J" then
      return true
    end

    -- Cancel Reject Message
    if sequenced_message_type == "I" then
      return true
    end

    -- Order Restated Message
    if sequenced_message_type == "R" then
      return true
    end

    -- Account Query Response Message
    if sequenced_message_type == "Q" then
      return true
    end

    return false
  end

  -- Server Heartbeat
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session
  if server_packet_type == "Z" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 (Tcp)
local function omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4
  omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 (Tcp)
local function omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4
  omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.role(packet)
  local initiator = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4:register_heuristic("tcp", omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4_tcp_heuristic)

-- Register Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 5.0.1.4
--   Date: Wednesday, September 2, 2026
--   Specification: nasdaq-canada-ouch.pdf
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
