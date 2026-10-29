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
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account = ProtoField.new("Account", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.account", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_request_appendage = ProtoField.new("Account Query Request Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryrequestappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_request_optional_field = ProtoField.new("Account Query Request Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryrequestoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_response_appendage = ProtoField.new("Account Query Response Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryresponseappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_response_optional_field = ProtoField.new("Account Query Response Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryresponseoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.algorithm_id = ProtoField.new("Algorithm Id", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.algorithmid", ftypes.STRING, nil, nil, nil, "Unique identifier for the end-client (orders automatically generated on a predetermined basis)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.allow_conditional = ProtoField.new("Allow Conditional", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.allowconditional", ftypes.STRING, nil, nil, nil, "N = No; Y = Yes. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.anonymous = ProtoField.new("Anonymous", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.anonymous", ftypes.STRING, nil, nil, nil, "N = No; Y = Yes. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.appendage_length = ProtoField.new("Appendage Length", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.appendagelength", ftypes.UINT16, nil, nil, nil, "The length of the remaining Optional Appendage Field. Required. If no optional appendage, length=0")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.basket_trade = ProtoField.new("Basket Trade", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.baskettrade", ftypes.STRING, nil, nil, nil, "N = No; Y = Yes. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.broker_lei = ProtoField.new("Broker Lei", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.brokerlei", ftypes.STRING, nil, nil, nil, "Non-PO IIROC Dealer Member (Correspondent Broker)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.broker_pref = ProtoField.new("Broker Pref", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.brokerpref", ftypes.STRING, nil, nil, nil, "Y = Yes; N = No. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.bypass = ProtoField.new("Bypass", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.bypass", ftypes.STRING, nil, nil, nil, "Order marker that indicates the order should only trade with displayed quantity. N = No; Y = Yes. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_order_request_appendage = ProtoField.new("Cancel Order Request Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelorderrequestappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_order_request_optional_field = ProtoField.new("Cancel Order Request Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelorderrequestoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reason = ProtoField.new("Cancel Reason", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelreason", ftypes.STRING, nil, nil, nil, "Reasons the order was reduced or canceled. See Appendix C for the available reasons (printed as Reason)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reject_appendage = ProtoField.new("Cancel Reject Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelrejectappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reject_optional_field = ProtoField.new("Cancel Reject Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelrejectoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.conditional_order = ProtoField.new("Conditional Order", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.conditionalorder", ftypes.STRING, nil, nil, nil, "C = Conditional Order (CXD only); X = eXtended Firm-up Time (XFT) conditional order (CXD only)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.contra_broker = ProtoField.new("Contra Broker", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.contrabroker", ftypes.UINT32, nil, nil, nil, "TSX Broker Number on the opposite side of the trade. Will be set to 0 if the contra order is anonymous")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.corrected_trade_appendage = ProtoField.new("Corrected Trade Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.correctedtradeappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.corrected_trade_optional_field = ProtoField.new("Corrected Trade Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.correctedtradeoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cum_rate = ProtoField.new("Cum Rate", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cumrate", ftypes.UINT16, nil, nil, nil, "The current cumulative streaming rate the order is achieving. Includes multiple streams, if applicable.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.customer_account = ProtoField.new("Customer Account", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.customeraccount", ftypes.STRING, nil, nil, nil, "Account number for clients not eligible to obtain an LEI")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.customer_lei = ProtoField.new("Customer Lei", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.customerlei", ftypes.STRING, nil, nil, nil, "LEI for clients eligible to obtain an LEI including LEI of the foreign dealer equivalent (Encryption Required)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cxd_connect = ProtoField.new("Cxd Connect", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cxdconnect", ftypes.STRING, nil, nil, nil, "Y = Yes; N = No. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.decrement_shares = ProtoField.new("Decrement Shares", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.decrementshares", ftypes.UINT32, nil, nil, nil, "Total quantity of the order cancelled due to STP")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.display_range = ProtoField.new("Display Range", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.displayrange", ftypes.UINT32, nil, nil, nil, "Quantity assigned to max floor orders indicating the range in which the displayed quantity will randomly increase or decrease.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.enter_order_appendage = ProtoField.new("Enter Order Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.enterorderappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.enter_order_optional_field = ProtoField.new("Enter Order Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.enterorderoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.event_code = ProtoField.new("Event Code", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.eventcode", ftypes.STRING, nil, nil, nil, "S = Start of Day; E = End of Day")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.ex_destination = ProtoField.new("Ex Destination", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.exdestination", ftypes.STRING, nil, nil, nil, "Indicates how the order should be routed: C = CXC; 2 = CX2; D = CXD; S = Smart Order Router (requires RoutingStrategy)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.exec_broker = ProtoField.new("Exec Broker", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.execbroker", ftypes.STRING, nil, nil, nil, "See Appendix F")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.execute_match = ProtoField.new("Execute Match", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.executematch", ftypes.STRING, nil, nil, nil, "Y = Yes; N = No. Indicates that the trade was matched and suppressed due to no self-trade. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.expire_time = ProtoField.new("Expire Time", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.expiretime", ftypes.UINT32, nil, nil, nil, "Seconds to live. Must be less than 86400 (number of seconds in a day). Default 0 (zero), no expire time")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.firm_up_id = ProtoField.new("Firm Up Id", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.firmupid", ftypes.UINT64, nil, nil, nil, "Unique firm up ID for a Conditional match")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.gef_eligible = ProtoField.new("Gef Eligible", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.gefeligible", ftypes.STRING, nil, nil, nil, "N = No; Y = Yes. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.handl_inst = ProtoField.new("Handl Inst", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.handlinst", ftypes.STRING, nil, nil, nil, "f = DAO; 1 = OPR Reprice; 5 = OPR Cancel. Default 1")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.jitney = ProtoField.new("Jitney", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.jitney", ftypes.STRING, nil, nil, nil, "To mark an order as being executed on behalf of another broker: TSX Broker Number, 3 digit numbers")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.liquidityflag", ftypes.STRING, nil, nil, nil, "Liquidity flag the order received. See Appendix E")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.match_number = ProtoField.new("Match Number", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.matchnumber", ftypes.UINT64, nil, nil, nil, "Assigned by the exchange to identify the trade. Both the buy and sell executions participating in the trade will have the same match number")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.max_floor = ProtoField.new("Max Floor", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.maxfloor", ftypes.UINT32, nil, nil, nil, "Represents the portion of the order to be displayed (0=Hidden). Default Max Floor=OrderQty")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.max_rate = ProtoField.new("Max Rate", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.maxrate", ftypes.UINT16, nil, nil, nil, "Required maximum rate for CXD PureStream Custom Reference Rate Range orders. Specified in percent as integer. Should be between 1% and 500%.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.min_qty = ProtoField.new("Min Qty", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.minqty", ftypes.UINT32, nil, nil, nil, "Works in conjunction with MinQtyType. Order will be rejected if Bypass=Y is combined with MinQty. Requires MaxFloor=0 (Hidden). Default 0 (zero), no minimum quantity")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.min_qty_type = ProtoField.new("Min Qty Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.minqtytype", ftypes.STRING, nil, nil, nil, "N = MAQ; m = MAQ at touch (CXD only); t = MQ at touch (CXD only); z = Minimum Quantity (MQ). Default N")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.min_rate = ProtoField.new("Min Rate", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.minrate", ftypes.UINT16, nil, nil, nil, "Minimum rate for CXD PureStream Customer Reference Rate Range. Specified in percent as integer. Default 1 (1%)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.nbbo_setter = ProtoField.new("Nbbo Setter", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.nbbosetter", ftypes.STRING, nil, nil, nil, "Y = Order is NBBO Setter")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.next_user_ref_num = ProtoField.new("Next User Ref Num", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.nextuserrefnum", ftypes.UINT32, nil, nil, nil, "The next available UserRefNum")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.no_trade_feat = ProtoField.new("No Trade Feat", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.notradefeat", ftypes.STRING, nil, nil, nil, "Defines the behavior of self-trade prevention when using NoTradeKey. If option E is selected, resulting trades are suppressed on public market data, and ExecuteMatch appendage will be returned to entry firm. Default N (Cancel Newest)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.no_trade_key = ProtoField.new("No Trade Key", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.notradekey", ftypes.STRING, nil, nil, nil, "Participant-generated key prevents the order from trading against orders with the same key value")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.optional_field_length = ProtoField.new("Optional Field Length", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.optionalfieldlength", ftypes.UINT8, nil, nil, nil, "Appendage Length Type")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_accepted_appendage = ProtoField.new("Order Accepted Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderacceptedappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_accepted_optional_field = ProtoField.new("Order Accepted Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderacceptedoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_canceled_appendage = ProtoField.new("Order Canceled Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.ordercanceledappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_canceled_optional_field = ProtoField.new("Order Canceled Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.ordercanceledoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_executed_appendage = ProtoField.new("Order Executed Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderexecutedappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_executed_optional_field = ProtoField.new("Order Executed Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderexecutedoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_origination = ProtoField.new("Order Origination", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderorigination", ftypes.STRING, nil, nil, nil, "Broker/Dealer needs to report, as specified by the customer")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_qty = ProtoField.new("Order Qty", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderqty", ftypes.UINT32, nil, nil, nil, "Total number of shares")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderreferencenumber", ftypes.UINT64, nil, nil, nil, "The day-unique Order Reference Number assigned by Nasdaq Canada to this order")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_replaced_appendage = ProtoField.new("Order Replaced Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderreplacedappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_replaced_optional_field = ProtoField.new("Order Replaced Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderreplacedoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_restated_appendage = ProtoField.new("Order Restated Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderrestatedappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_restated_optional_field = ProtoField.new("Order Restated Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderrestatedoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_state = ProtoField.new("Order State", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderstate", ftypes.STRING, nil, nil, nil, "L = Order Live; D = Order Dead")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.orig_user_ref_num = ProtoField.new("Orig User Ref Num", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.origuserrefnum", ftypes.UINT32, nil, nil, nil, "This must be filled out with the Order UserRefNum sent on the Enter Order Message or last Replace Order Message")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.password = ProtoField.new("Password", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.peg_offset = ProtoField.new("Peg Offset", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.pegoffset", ftypes.DOUBLE, nil, nil, nil, "Offset amount for the pegged value. Default 0 (zero), no peg offset")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.peg_type = ProtoField.new("Peg Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.pegtype", ftypes.STRING, nil, nil, nil, "M = Midpoint Peg; R = Primary Peg; x = Minimum Price Improvement; S = Seek Price Improvement; L = M-ELO (CXC Only); o = Odd Lot Liquidity Providing (OLP) (CXD Only)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.po_comment = ProtoField.new("Po Comment", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.pocomment", ftypes.STRING, nil, nil, nil, "A free-form pass-through field for use by the participants")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.price = ProtoField.new("Price", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.price", ftypes.DOUBLE, nil, nil, nil, "Maximum 999,999. A price of 0 will be treated as a market order. Implied 8 decimal places")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.principal_trade = ProtoField.new("Principal Trade", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.principaltrade", ftypes.STRING, nil, nil, nil, "N = No; Y = Yes. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.program_trade = ProtoField.new("Program Trade", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.programtrade", ftypes.STRING, nil, nil, nil, "N = No; Y = Yes. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.pure_stream_connect = ProtoField.new("Pure Stream Connect", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.purestreamconnect", ftypes.STRING, nil, nil, nil, "Y = Yes; N = No. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.quantity = ProtoField.new("Quantity", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.quantity", ftypes.UINT32, nil, nil, nil, "The incremental number of shares just executed")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.quantitypreventedfromtrading", ftypes.UINT32, nil, nil, nil, "Shares that would have executed if the trade would have occurred. Depending on the STP type and the sizes of orders in question, the value for this field could differ from that in the Decrement Shares field.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.reject_reason = ProtoField.new("Reject Reason", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.rejectreason", ftypes.STRING, nil, nil, nil, "The reason the order was rejected. See Appendix D (printed as Reason)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.rejected_order_appendage = ProtoField.new("Rejected Order Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.rejectedorderappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.rejected_order_optional_field = ProtoField.new("Rejected Order Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.rejectedorderoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.replace_order_request_appendage = ProtoField.new("Replace Order Request Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.replaceorderrequestappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.replace_order_request_optional_field = ProtoField.new("Replace Order Request Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.replaceorderrequestoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.reprice_reason = ProtoField.new("Reprice Reason", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.repricereason", ftypes.UINT8, nil, nil, nil, "Populated with a reason code if the order is repriced")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.restate_reason = ProtoField.new("Restate Reason", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.restatereason", ftypes.STRING, nil, nil, nil, "The reason for this order being restated (printed as Reason)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.routing_arrangement_indicator = ProtoField.new("Routing Arrangement Indicator", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.routingarrangementindicator", ftypes.STRING, nil, nil, nil, "0 = No routing arrangement in place; 1 = Routing arrangement in place")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.routing_strategy = ProtoField.new("Routing Strategy", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.routingstrategy", ftypes.STRING, nil, nil, nil, "Routing Strategy provided by Nasdaq Canada")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.secondaryorderid", ftypes.UINT64, nil, nil, nil, "When present, Nasdaq Canada order number as reported in the market data feed.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.short_marking_exempt = ProtoField.new("Short Marking Exempt", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.shortmarkingexempt", ftypes.STRING, nil, nil, nil, "0 = SME")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.side = ProtoField.new("Side", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.side", ftypes.STRING, nil, nil, nil, "1 = Buy; 2 = Sell; 5 = Sell Short")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.stp_canceled_appendage = ProtoField.new("Stp Canceled Appendage", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.stpcanceledappendage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.stp_canceled_optional_field = ProtoField.new("Stp Canceled Optional Field", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.stpcanceledoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.symbol = ProtoField.new("Symbol", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.symbol", ftypes.STRING, nil, nil, nil, "Local/exchange symbol only")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.target_strategy = ProtoField.new("Target Strategy", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.targetstrategy", ftypes.UINT16, nil, nil, nil, "1000 = Liquidity Rate 5-15%; 1001 = Liquidity Rate 5-30%; 1002 = Mach Two 10 - 200%; 1003 = Custom Liquidity Rate")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.timeinforce", ftypes.STRING, nil, nil, nil, "0 = Day; 3 = Immediate or Cancel; 6 = Good Till Date (GTD), must be used with ExpireTime; 8 = Stream Or Kill (SOK), CXD PureStream only; P = Post-Only Order")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.timestamp", ftypes.UINT64, nil, nil, nil, "Expressed as nanoseconds since midnight")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.tsxncib = ProtoField.new("Tsxncib", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.tsxncib", ftypes.STRING, nil, nil, nil, "Identifies Normal-Course Issuer Bid (NCIB) orders. N = No; Y = Yes. Default N (No)")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.umir_account_type = ProtoField.new("Umir Account Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.umiraccounttype", ftypes.STRING, nil, nil, nil, "Required for Canadian regulatory reporting")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.umir_regulation_id = ProtoField.new("Umir Regulation Id", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.umirregulationid", ftypes.STRING, nil, nil, nil, "IA = Insider Account; SS = Significant Shareholder")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.umir_user_id = ProtoField.new("Umir User Id", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.umiruserid", ftypes.STRING, nil, nil, nil, "Required for Canadian regulatory reporting, and represents the trading system's user ID for the trader")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.user_ref_idx = ProtoField.new("User Ref Idx", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.userrefidx", ftypes.UINT8, nil, nil, nil, "User Reference Index - identifies the channel within the given port")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.user_ref_num = ProtoField.new("User Ref Num", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.userrefnum", ftypes.UINT32, nil, nil, nil, "As described above in Data Types. UserRefNum must be day-unique and strictly increasing for each OUCH account")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.username = ProtoField.new("Username", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.username", ftypes.STRING, nil, nil, nil, "Session username")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.wash_trade = ProtoField.new("Wash Trade", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.washtrade", ftypes.STRING, nil, nil, nil, "Y = Yes; N = No. Default N (No)")

-- Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Framing
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_packet = ProtoField.new("Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_packet = ProtoField.new("Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Nasdaq NasdaqCanada OrderEntry 5.0.1.4 Application Messages
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_request_message = ProtoField.new("Account Query Request Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryrequestmessage", ftypes.STRING, nil, nil, nil, "The Account Query Request message can be used when recovering state to request the next available UserRefNum that can be used for identifying new transactions.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_response_message = ProtoField.new("Account Query Response Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.accountqueryresponsemessage", ftypes.STRING, nil, nil, nil, "The Account Query Response message is sent in response to an Account Query Request to indicate the next available UserRefNum that can be used to identify new transactions. It only carries the Appendage Length and Optional Appendage fields if the Appendage Length was specified on the inbound message.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_order_request_message = ProtoField.new("Cancel Order Request Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelorderrequestmessage", ftypes.STRING, nil, nil, nil, "The Cancel Order Message is used to request that an order be canceled or reduced. You must specify the new intended order size, the maximum number of shares that can be executed in total after the cancel is applied.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reject_message = ProtoField.new("Cancel Reject Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.cancelrejectmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.corrected_trade_message = ProtoField.new("Corrected Trade Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.correctedtrademessage", ftypes.STRING, nil, nil, nil, "A Corrected Trade Message informs you that an execution has been corrected. The corrected trade details are provided in the message. You will always get an Executed Order Message prior to getting a Corrected Trade Message for a given execution. If no Optional Appendage fields are present, the Appendage Length will be set to 0.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.enterordermessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderacceptedmessage", ftypes.STRING, nil, nil, nil, "This message acknowledges the receipt and acceptance of a valid Enter Order Message. The data fields from the Enter Order Message are echoed back in this message. When the Order State is Order Dead (D) the order was accepted and automatically canceled and no additional messages will be received for it.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.ordercanceledmessage", ftypes.STRING, nil, nil, nil, "A Canceled Message informs you that an order has been reduced or canceled. This could be acknowledging a Cancel Order Message, or it could be the result of the order timing out or being canceled automatically.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "An Executed Order Message informs you that all or part of an order has been executed.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderreplacedmessage", ftypes.STRING, nil, nil, nil, "This message acknowledges the receipt and acceptance of a valid Replace Order Message. The data fields from the Replace Order Message are echoed back in this message. The OrderQty indicates how many shares were left exposed when the replacement completed.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_restated_message = ProtoField.new("Order Restated Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.orderrestatedmessage", ftypes.STRING, nil, nil, nil, "The Order Restated Message is sent to indicate that the system has modified an order as part of its order management.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.rejectedordermessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.replace_order_request_message = ProtoField.new("Replace Order Request Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.replaceorderrequestmessage", ftypes.STRING, nil, nil, nil, "The Replace Order Message allows you to alter most of the attributes of an order in a single message. This is more efficient than canceling an existing order and immediately succeeding it with a new order.")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.stp_canceled_message = ProtoField.new("Stp Canceled Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.stpcanceledmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.systemeventmessage", ftypes.STRING, nil, nil, nil, "System Event Messages signal events that affect the entire Nasdaq Canada system.")

-- Nasdaq NasdaqCanada OrderEntry 5.0.1.4 Session Messages
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.endofsession", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server signals end of session; client may now disconnect. Carries no payload")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Generated Fields
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.sequenceddatapacketsequencenumber", ftypes.UINT64)

-- Nasdaq NasdaqCanada OrderEntry Ouch 5.0.1.4 Expert Info
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.experts = {}
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.experts.not_a_number = ProtoExpert.new("nasdaq.nasdaqcanada.orderentry.ouch.v5.0.1.4.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.experts = { nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.experts.not_a_number }

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

-- trim leading spaces
trim_left_spaces = function(str)
  local start = 1

  while start <= str:len() and str:byte(start) == 0x20 do
    start = start + 1
  end

  return str:sub(start)
end

-- ascii digits as an unsigned 64 bit value, nil when the run is no number
ascii_to_uint64 = function(str)
  local digits = str:match("^%s*(%d+)%s*$")

  if digits == nil then
    return nil
  end

  local value = UInt64.new(digits)

  -- UInt64.new stops at its maximum rather than failing, so an overrun would
  -- read as that maximum. Nineteen digits always fit, so only a longer run is
  -- read back and compared against the digits it came from
  if #digits > 19 then
    local significant = digits:match("^0*(%d+)$")

    if tostring(value) ~= significant then
      return nil
    end
  end

  return value
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
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
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
  local value = trim_left_spaces(range:string())
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.labels = {
  [37] = "Account Query Request Optional Field: UserRefIdx (37)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.labels[value] or "Account Query Request Optional Field: Unknown("..value..")"
end

-- Dissect: Account Query Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.account_query_request_optional_field, range, value, display)

  return offset + length, value
end

-- Account Query Response Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field = {}

-- Size: Account Query Response Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.size = 1

-- Display: Account Query Response Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.labels = {
  [37] = "Account Query Response Optional Field: UserRefIdx (37)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.labels[value] or "Account Query Response Optional Field: Unknown("..value..")"
end

-- Dissect: Account Query Response Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.labels = {
  ["N"] = "Allow Conditional: No (N)",
  ["Y"] = "Allow Conditional: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.labels[value] or "Allow Conditional: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.labels = {
  ["N"] = "Anonymous: No (N)",
  ["Y"] = "Anonymous: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.labels[value] or "Anonymous: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.labels = {
  ["N"] = "Basket Trade: No (N)",
  ["Y"] = "Basket Trade: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.labels[value] or "Basket Trade: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref.labels = {
  ["N"] = "Broker Pref: No (N)",
  ["Y"] = "Broker Pref: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref.labels[value] or "Broker Pref: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.labels = {
  ["N"] = "Bypass: No (N)",
  ["Y"] = "Bypass: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.labels[value] or "Bypass: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.labels = {
  [37] = "Cancel Order Request Optional Field: UserRefIdx (37)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.labels[value] or "Cancel Order Request Optional Field: Unknown("..value..")"
end

-- Dissect: Cancel Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_order_request_optional_field, range, value, display)

  return offset + length, value
end

-- Cancel Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason = {}

-- Size: Cancel Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.size = 4

-- Display: Cancel Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.labels = {
  ["0"] = "Cancel Reason: Default Value (0)",
  ["#ADM"] = "Cancel Reason: Admin Cancel (#ADM)",
  ["#IOC"] = "Cancel Reason: Cancelled Ioc (#IOC)",
  ["#STP"] = "Cancel Reason: Cancelled Stp (#STP)",
  ["#TME"] = "Cancel Reason: Cancelled Tme (#TME)",
  ["#DNR"] = "Cancel Reason: Cancelled To Prevent Lockcross (#DNR)",
  ["#MKT"] = "Cancel Reason: Market Closed Mkt (#MKT)",
  ["#DST"] = "Cancel Reason: Destination Matcher Closed (#DST)",
  ["#PGF"] = "Cancel Reason: Pending Gef (#PGF)",
  ["#GEF"] = "Cancel Reason: Gef (#GEF)",
  ["OTHR"] = "Cancel Reason: Cancelled Othr (OTHR)",
  ["#COD"] = "Cancel Reason: Cancelled On Disconnect (#COD)",
  ["USER"] = "Cancel Reason: Cancelled User (USER)",
  ["TLTC"] = "Cancel Reason: Too Late To Cancel (TLTC)",
  ["RISK"] = "Cancel Reason: Risk (RISK)",
  ["EMPT"] = "Cancel Reason: Cancelled Due To Market Place Threshold (EMPT)",
  ["EREP"] = "Cancel Reason: Exceeded Reprice Threshold (EREP)",
  ["rADM"] = "Cancel Reason: Sor Admin Action (rADM)",
  ["rDNA"] = "Cancel Reason: Sor Dest Not Available (rDNA)",
  ["rDQM"] = "Cancel Reason: Sor Dest Quantity Mismatch (rDQM)",
  ["rDRJ"] = "Cancel Reason: Sor Dest Reject (rDRJ)",
  ["rMPA"] = "Cancel Reason: Sor Max Post Attempts (rMPA)",
  ["rOAD"] = "Cancel Reason: Sor Order Already Dead (rOAD)",
  ["rOOS"] = "Cancel Reason: Sor Out Of Sync (rOOS)",
  ["rTLR"] = "Cancel Reason: Sor Too Late To Replace (rTLR)",
  ["ODDD"] = "Cancel Reason: No Oddlot Dealer (ODDD)",
  ["OSTP"] = "Cancel Reason: Cancelled Ostp (OSTP)",
  ["SYNO"] = "Cancel Reason: Symbol Not Open For Trading Syno (SYNO)",
  ["LCMK"] = "Cancel Reason: Market Locked Or Crossed (LCMK)",
  ["LMTP"] = "Cancel Reason: Invalid Order Price (LMTP)",
  ["#MLO"] = "Cancel Reason: M Elo Order No Longer Valid (#MLO)",
  ["#BLS"] = "Cancel Reason: Cancelled Bls (#BLS)",
  ["OLPQ"] = "Cancel Reason: Olp Order Qty Does Not Meet The Required Minimum (OLPQ)",
  ["CNTG"] = "Cancel Reason: In Contingency Mode (CNTG)",
  ["CDEX"] = "Cancel Reason: Cancelled Cdex (CDEX)",
  ["FUDN"] = "Cancel Reason: Cancelled Fudn (FUDN)",
  ["RSTD"] = "Cancel Reason: Order Restated (RSTD)",
  ["#TIF"] = "Cancel Reason: Cancelled By Time Restriction (#TIF)",
  ["MCLO"] = "Cancel Reason: Market Closed Mclo (MCLO)",
  ["HLTS"] = "Cancel Reason: Symbol Not Open For Trading Hlts (HLTS)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reason.labels[value] or "Cancel Reason: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.labels = {
  [37] = "Cancel Reject Optional Field: UserRefIdx (37)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.labels[value] or "Cancel Reject Optional Field: Unknown("..value..")"
end

-- Dissect: Cancel Reject Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.cancel_reject_optional_field, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.labels = {
  ["C"] = "Conditional Order: Conditional Order (C)",
  ["X"] = "Conditional Order: Extended Firm Up Time Conditional Order (X)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.labels[value] or "Conditional Order: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.labels = {
  [37] = "Corrected Trade Optional Field: UserRefIdx (37)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.labels[value] or "Corrected Trade Optional Field: Unknown("..value..")"
end

-- Dissect: Corrected Trade Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.labels = {
  ["N"] = "Cxd Connect: No (N)",
  ["Y"] = "Cxd Connect: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.labels[value] or "Cxd Connect: Unknown("..value..")"
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

-- Display: Debug Text
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.debug_text, range, value, display)

  return offset + size, value
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.labels = {
  [37] = "Enter Order Optional Field: UserRefIdx (37)",
  [1] = "Enter Order Optional Field: Account (1)",
  [2] = "Enter Order Optional Field: PegType (2)",
  [3] = "Enter Order Optional Field: MinQtyType (3)",
  [4] = "Enter Order Optional Field: MinQty (4)",
  [5] = "Enter Order Optional Field: MaxFloor (5)",
  [6] = "Enter Order Optional Field: ExpireTime (6)",
  [7] = "Enter Order Optional Field: PegOffset (7)",
  [8] = "Enter Order Optional Field: TargetStrategy (8)",
  [9] = "Enter Order Optional Field: OrderOrigination (9)",
  [10] = "Enter Order Optional Field: RoutingArrangementIndicator (10)",
  [11] = "Enter Order Optional Field: BasketTrade (11)",
  [12] = "Enter Order Optional Field: ProgramTrade (12)",
  [14] = "Enter Order Optional Field: Jitney (14)",
  [15] = "Enter Order Optional Field: GEFEligible (15)",
  [16] = "Enter Order Optional Field: Anonymous (16)",
  [17] = "Enter Order Optional Field: UMIRRegulationID (17)",
  [18] = "Enter Order Optional Field: Bypass (18)",
  [19] = "Enter Order Optional Field: TSXNCIB (19)",
  [20] = "Enter Order Optional Field: NoTradeFeat (20)",
  [21] = "Enter Order Optional Field: NoTradeKey (21)",
  [22] = "Enter Order Optional Field: ShortMarkingExempt (22)",
  [23] = "Enter Order Optional Field: POComment (23)",
  [24] = "Enter Order Optional Field: DisplayRange (24)",
  [25] = "Enter Order Optional Field: CustomerAccount (25)",
  [26] = "Enter Order Optional Field: AlgorithmID (26)",
  [27] = "Enter Order Optional Field: CustomerLEI (27)",
  [28] = "Enter Order Optional Field: BrokerLEI (28)",
  [29] = "Enter Order Optional Field: ConditionalOrder (29)",
  [30] = "Enter Order Optional Field: AllowConditional (30)",
  [31] = "Enter Order Optional Field: FirmUpID (31)",
  [32] = "Enter Order Optional Field: CXDConnect (32)",
  [33] = "Enter Order Optional Field: PureStreamConnect (33)",
  [34] = "Enter Order Optional Field: MinRate (34)",
  [35] = "Enter Order Optional Field: MaxRate (35)",
  [39] = "Enter Order Optional Field: RoutingStrategy (39)",
  [43] = "Enter Order Optional Field: HandlInst (43)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.labels[value] or "Enter Order Optional Field: Unknown("..value..")"
end

-- Dissect: Enter Order Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.enter_order_optional_field, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code = {}

-- Size: Event Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.size = 1

-- Display: Event Code
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.labels = {
  ["S"] = "Event Code: Start Of Day (S)",
  ["E"] = "Event Code: End Of Day (E)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.event_code.labels[value] or "Event Code: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination.labels = {
  ["C"] = "Ex Destination: Cxc (C)",
  ["2"] = "Ex Destination: Cx 2 (2)",
  ["D"] = "Ex Destination: Cxd (D)",
  ["S"] = "Ex Destination: Smart Order Router (S)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.ex_destination.labels[value] or "Ex Destination: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match.labels = {
  ["N"] = "Execute Match: No (N)",
  ["Y"] = "Execute Match: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match.labels[value] or "Execute Match: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.labels = {
  ["N"] = "Gef Eligible: No (N)",
  ["Y"] = "Gef Eligible: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.labels[value] or "Gef Eligible: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.labels = {
  ["f"] = "Handl Inst: Dao (f)",
  ["1"] = "Handl Inst: Opr Reprice (1)",
  ["5"] = "Handl Inst: Opr Cancel (5)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.labels[value] or "Handl Inst: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag.labels = {
  ["A"] = "Liquidity Flag: Order Added Liquidity (A)",
  ["R"] = "Liquidity Flag: Order Removed Liquidity (R)",
  ["a"] = "Liquidity Flag: Order Added Hidden Liquidity (a)",
  ["r"] = "Liquidity Flag: Order Removed Hidden Liquidity (r)",
  ["d"] = "Liquidity Flag: Order Added Hidden Liquidity At The Touch (d)",
  ["D"] = "Liquidity Flag: Order Removed Hidden Liquidity At The Touch (D)",
  ["g"] = "Liquidity Flag: Order Added Gef Liquidity (g)",
  ["G"] = "Liquidity Flag: Order Removed Gef Liquidity (G)",
  ["C"] = "Liquidity Flag: Market On Close (C)",
  ["S"] = "Liquidity Flag: Displayed Liquidity Adding Order Improves The Nbbo (S)",
  ["O"] = "Liquidity Flag: Opening Closing Auction (O)",
  ["E"] = "Liquidity Flag: Last Sale Trading Session (E)",
  ["L"] = "Liquidity Flag: M Elo (L)",
  ["P"] = "Liquidity Flag: Cxd Pure Stream Rate Based Execution (P)",
  ["M"] = "Liquidity Flag: Cxd Pure Stream Ls Midpoint Block Removed Liquidity (M)",
  ["F"] = "Liquidity Flag: Xft (F)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.liquidity_flag.labels[value] or "Liquidity Flag: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.labels = {
  ["N"] = "Min Qty Type: Maq (N)",
  ["m"] = "Min Qty Type: Maq At Touch (m)",
  ["t"] = "Min Qty Type: Mq At Touch (t)",
  ["z"] = "Min Qty Type: Minimum Quantity (z)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.labels[value] or "Min Qty Type: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.labels = {
  ["Y"] = "Nbbo Setter: Nbbo Setter (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.labels[value] or "Nbbo Setter: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.labels = {
  ["N"] = "No Trade Feat: Cancel Newest (N)",
  ["O"] = "No Trade Feat: Cancel Oldest (O)",
  ["D"] = "No Trade Feat: Decrement And Cancel (D)",
  ["E"] = "No Trade Feat: Execute Trade (E)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.labels[value] or "No Trade Feat: Unknown("..value..")"
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
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.optional_field_length, range, value, display)

  return offset + length, value
end

-- Order Accepted Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field = {}

-- Size: Order Accepted Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.size = 1

-- Display: Order Accepted Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.labels = {
  [37] = "Order Accepted Optional Field: UserRefIdx (37)",
  [1] = "Order Accepted Optional Field: Account (1)",
  [2] = "Order Accepted Optional Field: PegType (2)",
  [3] = "Order Accepted Optional Field: MinQtyType (3)",
  [4] = "Order Accepted Optional Field: MinQty (4)",
  [5] = "Order Accepted Optional Field: MaxFloor (5)",
  [6] = "Order Accepted Optional Field: ExpireTime (6)",
  [7] = "Order Accepted Optional Field: PegOffset (7)",
  [8] = "Order Accepted Optional Field: TargetStrategy (8)",
  [9] = "Order Accepted Optional Field: OrderOrigination (9)",
  [10] = "Order Accepted Optional Field: RoutingArrangementIndicator (10)",
  [11] = "Order Accepted Optional Field: BasketTrade (11)",
  [12] = "Order Accepted Optional Field: ProgramTrade (12)",
  [14] = "Order Accepted Optional Field: Jitney (14)",
  [15] = "Order Accepted Optional Field: GEFEligible (15)",
  [16] = "Order Accepted Optional Field: Anonymous (16)",
  [17] = "Order Accepted Optional Field: UMIRRegulationID (17)",
  [18] = "Order Accepted Optional Field: Bypass (18)",
  [19] = "Order Accepted Optional Field: TSXNCIB (19)",
  [20] = "Order Accepted Optional Field: NoTradeFeat (20)",
  [21] = "Order Accepted Optional Field: NoTradeKey (21)",
  [22] = "Order Accepted Optional Field: ShortMarkingExempt (22)",
  [23] = "Order Accepted Optional Field: POComment (23)",
  [24] = "Order Accepted Optional Field: DisplayRange (24)",
  [25] = "Order Accepted Optional Field: CustomerAccount (25)",
  [26] = "Order Accepted Optional Field: AlgorithmID (26)",
  [27] = "Order Accepted Optional Field: CustomerLEI (27)",
  [28] = "Order Accepted Optional Field: BrokerLEI (28)",
  [29] = "Order Accepted Optional Field: ConditionalOrder (29)",
  [30] = "Order Accepted Optional Field: AllowConditional (30)",
  [31] = "Order Accepted Optional Field: FirmUpID (31)",
  [32] = "Order Accepted Optional Field: CXDConnect (32)",
  [33] = "Order Accepted Optional Field: PureStreamConnect (33)",
  [34] = "Order Accepted Optional Field: MinRate (34)",
  [35] = "Order Accepted Optional Field: MaxRate (35)",
  [39] = "Order Accepted Optional Field: RoutingStrategy (39)",
  [43] = "Order Accepted Optional Field: HandlInst (43)",
  [44] = "Order Accepted Optional Field: RepriceReason (44)",
  [45] = "Order Accepted Optional Field: NBBOSetter (45)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.labels[value] or "Order Accepted Optional Field: Unknown("..value..")"
end

-- Dissect: Order Accepted Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_accepted_optional_field, range, value, display)

  return offset + length, value
end

-- Order Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field = {}

-- Size: Order Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.size = 1

-- Display: Order Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.labels = {
  [37] = "Order Canceled Optional Field: UserRefIdx (37)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.labels[value] or "Order Canceled Optional Field: Unknown("..value..")"
end

-- Dissect: Order Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_canceled_optional_field, range, value, display)

  return offset + length, value
end

-- Order Executed Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field = {}

-- Size: Order Executed Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.size = 1

-- Display: Order Executed Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.labels = {
  [37] = "Order Executed Optional Field: UserRefIdx (37)",
  [38] = "Order Executed Optional Field: ExecuteMatch (38)",
  [40] = "Order Executed Optional Field: SecondaryOrderID (40)",
  [42] = "Order Executed Optional Field: BrokerPref (42)",
  [13] = "Order Executed Optional Field: PrincipalTrade (13)",
  [41] = "Order Executed Optional Field: WashTrade (41)",
  [36] = "Order Executed Optional Field: CumRate (36)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.labels[value] or "Order Executed Optional Field: Unknown("..value..")"
end

-- Dissect: Order Executed Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_executed_optional_field, range, value, display)

  return offset + length, value
end

-- Order Origination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination = {}

-- Size: Order Origination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.size = 1

-- Display: Order Origination
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.labels = {
  ["5"] = "Order Origination: Direct Access Customer (5)",
  ["6"] = "Order Origination: Foreign Dealer Equivalent (6)",
  ["7"] = "Order Origination: Execution Only Service (7)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.labels[value] or "Order Origination: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.labels = {
  [37] = "Order Replaced Optional Field: UserRefIdx (37)",
  [3] = "Order Replaced Optional Field: MinQtyType (3)",
  [2] = "Order Replaced Optional Field: PegType (2)",
  [4] = "Order Replaced Optional Field: MinQty (4)",
  [5] = "Order Replaced Optional Field: MaxFloor (5)",
  [6] = "Order Replaced Optional Field: ExpireTime (6)",
  [7] = "Order Replaced Optional Field: PegOffset (7)",
  [8] = "Order Replaced Optional Field: TargetStrategy (8)",
  [9] = "Order Replaced Optional Field: OrderOrigination (9)",
  [10] = "Order Replaced Optional Field: RoutingArrangementIndicator (10)",
  [17] = "Order Replaced Optional Field: UMIRRegulationID (17)",
  [16] = "Order Replaced Optional Field: Anonymous (16)",
  [24] = "Order Replaced Optional Field: DisplayRange (24)",
  [25] = "Order Replaced Optional Field: CustomerAccount (25)",
  [26] = "Order Replaced Optional Field: AlgorithmID (26)",
  [27] = "Order Replaced Optional Field: CustomerLEI (27)",
  [28] = "Order Replaced Optional Field: BrokerLEI (28)",
  [30] = "Order Replaced Optional Field: AllowConditional (30)",
  [32] = "Order Replaced Optional Field: CXDConnect (32)",
  [33] = "Order Replaced Optional Field: PureStreamConnect (33)",
  [34] = "Order Replaced Optional Field: MinRate (34)",
  [35] = "Order Replaced Optional Field: MaxRate (35)",
  [43] = "Order Replaced Optional Field: HandlInst (43)",
  [44] = "Order Replaced Optional Field: RepriceReason (44)",
  [45] = "Order Replaced Optional Field: NBBOSetter (45)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.labels[value] or "Order Replaced Optional Field: Unknown("..value..")"
end

-- Dissect: Order Replaced Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_replaced_optional_field, range, value, display)

  return offset + length, value
end

-- Order Restated Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field = {}

-- Size: Order Restated Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.size = 1

-- Display: Order Restated Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.labels = {
  [37] = "Order Restated Optional Field: UserRefIdx (37)",
  [31] = "Order Restated Optional Field: FirmUpID (31)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.labels[value] or "Order Restated Optional Field: Unknown("..value..")"
end

-- Dissect: Order Restated Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.order_restated_optional_field, range, value, display)

  return offset + length, value
end

-- Order State
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state = {}

-- Size: Order State
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.size = 1

-- Display: Order State
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.labels = {
  ["L"] = "Order State: Order Live (L)",
  ["D"] = "Order State: Order Dead (D)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_state.labels[value] or "Order State: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.labels = {
  ["M"] = "Peg Type: Midpoint Peg (M)",
  ["R"] = "Peg Type: Primary Peg (R)",
  ["x"] = "Peg Type: Minimum Price Improvement (x)",
  ["S"] = "Peg Type: Seek Price Improvement (S)",
  ["L"] = "Peg Type: M Elo (L)",
  ["o"] = "Peg Type: Odd Lot Liquidity Providing (o)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.labels[value] or "Peg Type: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade.labels = {
  ["N"] = "Principal Trade: No (N)",
  ["Y"] = "Principal Trade: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade.labels[value] or "Principal Trade: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.labels = {
  ["N"] = "Program Trade: No (N)",
  ["Y"] = "Program Trade: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.labels[value] or "Program Trade: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.labels = {
  ["N"] = "Pure Stream Connect: No (N)",
  ["Y"] = "Pure Stream Connect: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.labels[value] or "Pure Stream Connect: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason.labels = {
  ["none"] = "Reject Reason: Rejected None (none)",
  ["SYMB"] = "Reject Reason: Unknown Symbol (SYMB)",
  ["SYMD"] = "Reject Reason: Symbol Not Allowed To Trade On Destination (SYMD)",
  ["HLTD"] = "Reject Reason: Symbol Halted On Destination (HLTD)",
  ["TLTC"] = "Reject Reason: Too Late To Cancel (TLTC)",
  ["TLTR"] = "Reject Reason: Too Late To Replace (TLTR)",
  ["ADMC"] = "Reject Reason: Admin Canceled (ADMC)",
  ["ADRJ"] = "Reject Reason: Admin Rejected (ADRJ)",
  ["HLTS"] = "Reject Reason: Symbol Halted (HLTS)",
  ["VMIN"] = "Reject Reason: Visible Min Qty (VMIN)",
  ["BIOC"] = "Reject Reason: Non Ioc Bypass (BIOC)",
  ["PDUP"] = "Reject Reason: Possdupe Set (PDUP)",
  ["MRTE"] = "Reject Reason: Missing Or Invalid Exdestination Specified (MRTE)",
  ["USRB"] = "Reject Reason: Missingunknown Tag Umiruserid (USRB)",
  ["CRED"] = "Reject Reason: Terminal Has No Credit (CRED)",
  ["SMEB"] = "Reject Reason: Short Marker Exempt Not Supported For Value (SMEB)",
  ["LMTP"] = "Reject Reason: Invalid Order Price (LMTP)",
  ["MCLO"] = "Reject Reason: Market Not Open (MCLO)",
  ["ODDB"] = "Reject Reason: Invalid Ord Qty Must Be A Multiple Of Standard Trading Unit (ODDB)",
  ["ODDD"] = "Reject Reason: Invalid Ord Qty Must Be A Multiple Of Standard Trading Unit No Oddlot Dealer (ODDD)",
  ["ODDI"] = "Reject Reason: Invalid Ord Qty Must Be A Multiple Of Standard Trading Unit Tif Not Ioc Or Day (ODDI)",
  ["ODDP"] = "Reject Reason: Invalid Ord Qty Must Be A Multiple Of Standard Trading Unit No Prim Peg (ODDP)",
  ["ODDM"] = "Reject Reason: Invalid Ord Qty Must Be A Multiple Of Standard Trading Unit Min Qty Specified (ODDM)",
  ["ODDR"] = "Reject Reason: Invalid Ord Qty Cannot Replace Oddlot To Round Mixed Lot Or Vice Versa (ODDR)",
  ["OSTP"] = "Reject Reason: Rejected Ostp (OSTP)",
  ["NORD"] = "Reject Reason: Order Not Found (NORD)",
  ["PENR"] = "Reject Reason: Pending Replace (PENR)",
  ["PENC"] = "Reject Reason: Order Pending Cancel (PENC)",
  ["SYMM"] = "Reject Reason: Symbol Mismatch (SYMM)",
  ["USRM"] = "Reject Reason: Umir User Id Mismatch (USRM)",
  ["SIDM"] = "Reject Reason: Side Mismatch (SIDM)",
  ["DESM"] = "Reject Reason: Destination Mismatch (DESM)",
  ["ISOM"] = "Reject Reason: Cannot Convert To Iso Order (ISOM)",
  ["INVT"] = "Reject Reason: Invalid Tag (INVT)",
  ["GTDE"] = "Reject Reason: Expiry Required For Good Till Dategtd Order (GTDE)",
  ["EMPT"] = "Reject Reason: Order Exceeded Mktplace Threshold (EMPT)",
  ["BDRK"] = "Reject Reason: Bypass Orders Not Valid On Dark Pool (BDRK)",
  ["DCDT"] = "Reject Reason: User Not Permissioned On Destination (DCDT)",
  ["MPIB"] = "Reject Reason: Mpi Orders Only For Cxd (MPIB)",
  ["ACSO"] = "Reject Reason: At Close Orders Only For Sor Orders (ACSO)",
  ["INVM"] = "Reject Reason: Displayed Quantity Must Be Of Standard Trading Unit Stu (INVM)",
  ["INVD"] = "Reject Reason: Display Range Must Be Of Standard Trading Unit Stu (INVD)",
  ["MINB"] = "Reject Reason: Min Qty Must Be Of Standard Trading Unit Stu (MINB)",
  ["OFFB"] = "Reject Reason: Invalid Pegoffset For Peg Type (OFFB)",
  ["STRM"] = "Reject Reason: Rejected Strm (STRM)",
  ["CAPD"] = "Reject Reason: Order Failed Caplimit No Default Limit Found (CAPD)",
  ["CAPS"] = "Reject Reason: Order Exceed Share Limits (CAPS)",
  ["CAPN"] = "Reject Reason: Order Exceed Notional Limits (CAPN)",
  ["CLOP"] = "Reject Reason: Pegged Orders Unavailable After Hours (CLOP)",
  ["MIST"] = "Reject Reason: Missing Required Tags (MIST)",
  ["QTYB"] = "Reject Reason: Orderqty Must Be Greater Than 0 (QTYB)",
  ["NMKT"] = "Reject Reason: No Market (NMKT)",
  ["LCMK"] = "Reject Reason: Market Locked Or Crossed (LCMK)",
  ["CUMQ"] = "Reject Reason: New Order Quantity Less Than Cumqty (CUMQ)",
  ["OTHR"] = "Reject Reason: Rejected Othr (OTHR)",
  ["RIOC"] = "Reject Reason: No Replace On Ioc Order (RIOC)",
  ["GWRJ"] = "Reject Reason: Gateway Reject (GWRJ)",
  ["DNMQ"] = "Reject Reason: Cxd Not Accepting Min Qty Orders (DNMQ)",
  ["dSDN"] = "Reject Reason: Destination System Down (dSDN)",
  ["dNAO"] = "Reject Reason: Destination Not Accepting Orders (dNAO)",
  ["dNPO"] = "Reject Reason: Destination Does Not Support Post Only (dNPO)",
  ["dSTP"] = "Reject Reason: Destination Does Not Support Stp Feature Specified (dSTP)",
  ["dPEG"] = "Reject Reason: Destination Does Not Support Peg Type (dPEG)",
  ["dFOK"] = "Reject Reason: Destination Does Not Support Fok (dFOK)",
  ["dHID"] = "Reject Reason: Destination Does Not Support Hidden Orders (dHID)",
  ["dMQY"] = "Reject Reason: Destination Does Not Support Min Qty (dMQY)",
  ["dAON"] = "Reject Reason: Destination Does Not Support Aon (dAON)",
  ["dCLO"] = "Reject Reason: Destination Does Not Support Closing Orders (dCLO)",
  ["dIOC"] = "Reject Reason: Destination Does Not Support Ioc Time In Force (dIOC)",
  ["dBYP"] = "Reject Reason: Destination Does Not Support Bypass Flag (dBYP)",
  ["dRUO"] = "Reject Reason: Destination Replace For Unack Order (dRUO)",
  ["dTYP"] = "Reject Reason: Destination Does Not Support Order Type (dTYP)",
  ["dMET"] = "Reject Reason: Destination Does Not Support Maq At The Touch Orders (dMET)",
  ["dMQT"] = "Reject Reason: Destination Does Not Support Mq At The Touch Orders (dMQT)",
  ["dSPI"] = "Reject Reason: Destination Does Not Support Seek Price Improvement (dSPI)",
  ["dOLP"] = "Reject Reason: Destination Does Not Support Odd Lot Book Orders (dOLP)",
  ["sTIF"] = "Reject Reason: Invalid Tif For Spi Order Tif Must Be Ioc (sTIF)",
  ["aTIF"] = "Reject Reason: Invalid Tif For Maq At The Touch Tif Must Be Ioc (aTIF)",
  ["qTIF"] = "Reject Reason: Invalid Tif For Mq At The Touch Tif Must Be Ioc (qTIF)",
  ["AONQ"] = "Reject Reason: Aon Not Allowed For Maq At The Touch Or Mq At The Touch (AONQ)",
  ["PEGQ"] = "Reject Reason: Peg Not Alllowed For Maq At The Touch Or Mq At The Touch (PEGQ)",
  ["MQYB"] = "Reject Reason: Invalid Min Qty Must Be A Multiple Of Standard Trading Unit For Maq At The Touch Or Mq At The Touch (MQYB)",
  ["SPIP"] = "Reject Reason: Pegging Not Allowed With Seekpriceimprovement (SPIP)",
  ["SPII"] = "Reject Reason: Cso Not Allowed With Seekpriceimprovement (SPII)",
  ["SPIM"] = "Reject Reason: Minpriceimprovement Not Allowed With Seekpriceimprovement (SPIM)",
  ["NSTP"] = "Reject Reason: Stop Order Not Supported (NSTP)",
  ["CRTE"] = "Reject Reason: Chix Route Market Not Found (CRTE)",
  ["BOPG"] = "Reject Reason: Chix Route Opg Orders Not Valid After Stock Open (BOPG)",
  ["NGTC"] = "Reject Reason: Chix Route Gtc Orders Not Supported (NGTC)",
  ["CMCL"] = "Reject Reason: Chix Route Mkt Order Not Supported After Close (CMCL)",
  ["rXBO"] = "Reject Reason: Sor Crossed Best Bid Ask (rXBO)",
  ["rIQT"] = "Reject Reason: Sor Insufficient Quantity (rIQT)",
  ["rIBO"] = "Reject Reason: Sor Invalid Best Bid Ask (rIBO)",
  ["rIBB"] = "Reject Reason: Rejected R Ibb (rIBB)",
  ["rIBA"] = "Reject Reason: Sor Invalid Best Ask (rIBA)",
  ["rPNR"] = "Reject Reason: Sor Protected Venue Not Routable (rPNR)",
  ["rUKS"] = "Reject Reason: Unknown Strategy For Router (rUKS)",
  ["AONI"] = "Reject Reason: Aon Cannot Be Combined With Ioc Or Fok (AONI)",
  ["GEFD"] = "Reject Reason: Invalid Dest For Member Gef Vol Change (GEFD)",
  ["GEFS"] = "Reject Reason: Invalid Side For Member Gef Vol Change (GEFS)",
  ["GEFU"] = "Reject Reason: Invalid Umir User For Member Gef Vol Change (GEFU)",
  ["GEFQ"] = "Reject Reason: Invalid Volume For Member Gef Vol Change (GEFQ)",
  ["MLNA"] = "Reject Reason: Not Accepting M Elo Orders (MLNA)",
  ["MLTI"] = "Reject Reason: Invalid Tif For M Elo Order (MLTI)",
  ["MLBY"] = "Reject Reason: Bypass Not Allowed For M Elo Orders (MLBY)",
  ["MLRE"] = "Reject Reason: Cannot Change M Elo To Non M Elo Or Vice Versa (MLRE)",
  ["MLDA"] = "Reject Reason: Dao Not Allowed For M Elo Orders (MLDA)",
  ["MLOP"] = "Reject Reason: Opr Cancel Not Allowed For M Elo Orders (MLOP)",
  ["MLOQ"] = "Reject Reason: Invalid Qty For M Elo Order (MLOQ)",
  ["IVSD"] = "Reject Reason: Invalid Side (IVSD)",
  ["IVTF"] = "Reject Reason: Invalid Tif (IVTF)",
  ["IVOT"] = "Reject Reason: Invalid Ordertype (IVOT)",
  ["NOJT"] = "Reject Reason: Jitney Not Allowed (NOJT)",
  ["OLPN"] = "Reject Reason: Destination Not Accepting Odd Lot Book Orders (OLPN)",
  ["OLPQ"] = "Reject Reason: Olp Order Qty Does Not Meet The Required Minimum (OLPQ)",
  ["OLPR"] = "Reject Reason: Cannot Change Olp To Non Olp Or Vice Versa (OLPR)",
  ["OLPL"] = "Reject Reason: Olp Order Limit Exceeded (OLPL)",
  ["PSNA"] = "Reject Reason: Destination Not Accepting Purestream Orders (PSNA)",
  ["PSST"] = "Reject Reason: Invalid Target Strategy (PSST)",
  ["PSRT"] = "Reject Reason: Invalid Minrate Or Maxrate (PSRT)",
  ["PSQT"] = "Reject Reason: Qty Does Not Meet Boardlot Or Notional Requirement (PSQT)",
  ["PSNV"] = "Reject Reason: Nominal Value Under Requirement (PSNV)",
  ["PSTF"] = "Reject Reason: Invalid Tif For Purestream (PSTF)",
  ["PSPG"] = "Reject Reason: Pegging Not Allowed For Purestream (PSPG)",
  ["PSSP"] = "Reject Reason: Seek Price Improvement Not Allowed For Purestream (PSSP)",
  ["PMQY"] = "Reject Reason: Min Qty All Or None Not Allowed For The Specified Purestream Strategy (PMQY)",
  ["PSRE"] = "Reject Reason: Cannot Change Purestream Order To Non Purestream Order Or Vice Versa (PSRE)",
  ["PSVI"] = "Reject Reason: Stream Requirement Violated For The Stock Purestream Orders Not Allowed For Rest Of Day (PSVI)",
  ["PSML"] = "Reject Reason: Order Cannot Be Both M Elo And Purestream (PSML)",
  ["CDVI"] = "Reject Reason: Firm Up Requirement Violated For The Stock Conditionals Not Allowed For Rest Of Day (CDVI)",
  ["CDFU"] = "Reject Reason: Order Is Not Expecting A Firm Up Response (CDFU)",
  ["CDTP"] = "Reject Reason: Invalid Conditional Type (CDTP)",
  ["CDOR"] = "Reject Reason: Underlying Order Does Not Qualify As A Conditional Order (CDOR)",
  ["CDTF"] = "Reject Reason: Invalid Tif For Conditional Order (CDTF)",
  ["CDRE"] = "Reject Reason: Cannot Change Conditional Order To Firm Order And Vice Versa (CDRE)",
  ["CNTG"] = "Reject Reason: System In Contingency Mode Orders Are Not Being Accepted (CNTG)",
  ["IVEX"] = "Reject Reason: Invalid Expiry Time (IVEX)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason.labels[value] or "Reject Reason: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.labels = {
  [37] = "Rejected Order Optional Field: UserRefIdx (37)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.labels[value] or "Rejected Order Optional Field: Unknown("..value..")"
end

-- Dissect: Rejected Order Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.rejected_order_optional_field, range, value, display)

  return offset + length, value
end

-- Replace Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field = {}

-- Size: Replace Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.size = 1

-- Display: Replace Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.labels = {
  [37] = "Replace Order Request Optional Field: UserRefIdx (37)",
  [3] = "Replace Order Request Optional Field: MinQtyType (3)",
  [2] = "Replace Order Request Optional Field: PegType (2)",
  [4] = "Replace Order Request Optional Field: MinQty (4)",
  [5] = "Replace Order Request Optional Field: MaxFloor (5)",
  [6] = "Replace Order Request Optional Field: ExpireTime (6)",
  [7] = "Replace Order Request Optional Field: PegOffset (7)",
  [8] = "Replace Order Request Optional Field: TargetStrategy (8)",
  [9] = "Replace Order Request Optional Field: OrderOrigination (9)",
  [10] = "Replace Order Request Optional Field: RoutingArrangementIndicator (10)",
  [17] = "Replace Order Request Optional Field: UMIRRegulationID (17)",
  [16] = "Replace Order Request Optional Field: Anonymous (16)",
  [24] = "Replace Order Request Optional Field: DisplayRange (24)",
  [25] = "Replace Order Request Optional Field: CustomerAccount (25)",
  [26] = "Replace Order Request Optional Field: AlgorithmID (26)",
  [27] = "Replace Order Request Optional Field: CustomerLEI (27)",
  [28] = "Replace Order Request Optional Field: BrokerLEI (28)",
  [30] = "Replace Order Request Optional Field: AllowConditional (30)",
  [32] = "Replace Order Request Optional Field: CXDConnect (32)",
  [33] = "Replace Order Request Optional Field: PureStreamConnect (33)",
  [34] = "Replace Order Request Optional Field: MinRate (34)",
  [35] = "Replace Order Request Optional Field: MaxRate (35)",
  [43] = "Replace Order Request Optional Field: HandlInst (43)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.labels[value] or "Replace Order Request Optional Field: Unknown("..value..")"
end

-- Dissect: Replace Order Request Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.replace_order_request_optional_field, range, value, display)

  return offset + length, value
end

-- Reprice Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason = {}

-- Size: Reprice Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.size = 1

-- Display: Reprice Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.labels = {
  [1] = "Reprice Reason: Repriced To Prevent Trade (1)",
  [2] = "Reprice Reason: Repriced To Prevent Lock (2)",
  [3] = "Reprice Reason: Repriced To Prevent Cross (3)",
  [4] = "Reprice Reason: Repriced For Marketplace Thresholds (4)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.labels[value] or "Reprice Reason: Unknown("..value..")"
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
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
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
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Restate Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason = {}

-- Size: Restate Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason.size = 1

-- Display: Restate Reason
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason.labels = {
  ["O"] = "Restate Reason: Stream On (O)",
  ["X"] = "Restate Reason: Stream Off (X)",
  ["R"] = "Restate Reason: Conditional Order Firm Up Request (R)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.restate_reason.labels[value] or "Restate Reason: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.labels = {
  ["0"] = "Routing Arrangement Indicator: No Routing Arrangement In Place (0)",
  ["1"] = "Routing Arrangement Indicator: Routing Arrangement In Place (1)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.labels[value] or "Routing Arrangement Indicator: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message_type.labels = {
  ["S"] = "Sequenced Message Type: System Event Message (S)",
  ["A"] = "Sequenced Message Type: Order Accepted Message (A)",
  ["U"] = "Sequenced Message Type: Order Replaced Message (U)",
  ["C"] = "Sequenced Message Type: Order Canceled Message (C)",
  ["D"] = "Sequenced Message Type: Stp Canceled Message (D)",
  ["E"] = "Sequenced Message Type: Order Executed Message (E)",
  ["B"] = "Sequenced Message Type: Corrected Trade Message (B)",
  ["J"] = "Sequenced Message Type: Rejected Order Message (J)",
  ["I"] = "Sequenced Message Type: Cancel Reject Message (I)",
  ["R"] = "Sequenced Message Type: Order Restated Message (R)",
  ["Q"] = "Sequenced Message Type: Account Query Response Message (Q)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message_type.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.labels = {
  ["0"] = "Short Marking Exempt: Sme (0)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.labels[value] or "Short Marking Exempt: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.labels = {
  ["1"] = "Side: Buy (1)",
  ["2"] = "Side: Sell (2)",
  ["5"] = "Side: Sell Short (5)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.side.labels[value] or "Side: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.labels = {
  [37] = "Stp Canceled Optional Field: UserRefIdx (37)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.labels[value] or "Stp Canceled Optional Field: Unknown("..value..")"
end

-- Dissect: Stp Canceled Optional Field
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.labels = {
  [1000] = "Target Strategy: Liquidity Rate 515% (1000)",
  [1001] = "Target Strategy: Liquidity Rate 530% (1001)",
  [1002] = "Target Strategy: Mach Two 10200% (1002)",
  [1003] = "Target Strategy: Custom Liquidity Rate (1003)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.labels[value] or "Target Strategy: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.labels = {
  ["0"] = "Time In Force: Day (0)",
  ["3"] = "Time In Force: Immediate Or Cancel (3)",
  ["6"] = "Time In Force: Good Till Date (6)",
  ["8"] = "Time In Force: Stream Or Kill (8)",
  ["P"] = "Time In Force: Post Only Order (P)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
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

  -- Full datetime mode (the day the frame that carried it settled on)
  if nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.labels = {
  ["N"] = "Tsxncib: No (N)",
  ["Y"] = "Tsxncib: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.labels[value] or "Tsxncib: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type.labels = {
  ["CL"] = "Umir Account Type: Client (CL)",
  ["NC"] = "Umir Account Type: Non Client (NC)",
  ["ST"] = "Umir Account Type: Specialist (ST)",
  ["IN"] = "Umir Account Type: Inventory (IN)",
  ["OF"] = "Umir Account Type: Options Firm Account (OF)",
  ["OT"] = "Umir Account Type: Options Market Maker (OT)",
  ["BU"] = "Umir Account Type: Bundled (BU)",
  ["MC"] = "Umir Account Type: Multiple Clients (MC)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_account_type.labels[value] or "Umir Account Type: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.labels = {
  ["IA"] = "Umir Regulation Id: Insider Account (IA)",
  ["SS"] = "Umir Regulation Id: Significant Shareholder (SS)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.labels[value] or "Umir Regulation Id: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message_type.labels = {
  ["O"] = "Unsequenced Message Type: Enter Order Message (O)",
  ["U"] = "Unsequenced Message Type: Replace Order Request Message (U)",
  ["X"] = "Unsequenced Message Type: Cancel Order Request Message (X)",
  ["Q"] = "Unsequenced Message Type: Account Query Request Message (Q)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message_type.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
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
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade.labels = {
  ["N"] = "Wash Trade: No (N)",
  ["Y"] = "Wash Trade: Yes (Y)",
}

nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade.display = function(value)
  return nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade.labels[value] or "Wash Trade: Unknown("..value..")"
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

-- Dispatch: Account Query Response Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
}

-- Dissect: Account Query Response Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_value.dissect = function(buffer, offset, packet, parent, account_query_response_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_optional_value.dispatch[account_query_response_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Account Query Response Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Order Restated Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
  [31] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.dissect,
}

-- Dissect: Order Restated Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_value.dissect = function(buffer, offset, packet, parent, order_restated_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_optional_value.dispatch[order_restated_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Restated Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Cancel Reject Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
}

-- Dissect: Cancel Reject Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_value.dissect = function(buffer, offset, packet, parent, cancel_reject_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_optional_value.dispatch[cancel_reject_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Cancel Reject Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Rejected Order Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
}

-- Dissect: Rejected Order Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_value.dissect = function(buffer, offset, packet, parent, rejected_order_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_optional_value.dispatch[rejected_order_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Rejected Order Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Corrected Trade Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
}

-- Dissect: Corrected Trade Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_value.dissect = function(buffer, offset, packet, parent, corrected_trade_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_optional_value.dispatch[corrected_trade_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Corrected Trade Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Order Executed Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
  [38] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.execute_match.dissect,
  [40] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.secondary_order_id.dissect,
  [42] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_pref.dissect,
  [13] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.principal_trade.dissect,
  [41] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.wash_trade.dissect,
  [36] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cum_rate.dissect,
}

-- Dissect: Order Executed Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_value.dissect = function(buffer, offset, packet, parent, order_executed_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_optional_value.dispatch[order_executed_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Executed Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Stp Canceled Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
}

-- Dissect: Stp Canceled Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_value.dissect = function(buffer, offset, packet, parent, stp_canceled_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_optional_value.dispatch[stp_canceled_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Stp Canceled Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Order Canceled Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
}

-- Dissect: Order Canceled Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_value.dissect = function(buffer, offset, packet, parent, order_canceled_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_optional_value.dispatch[order_canceled_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Canceled Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Order Replaced Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
  [3] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.dissect,
  [2] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.dissect,
  [4] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.dissect,
  [5] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.dissect,
  [6] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.dissect,
  [7] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.dissect,
  [8] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.dissect,
  [9] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.dissect,
  [10] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.dissect,
  [17] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.dissect,
  [16] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.dissect,
  [24] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.dissect,
  [25] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.dissect,
  [26] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.dissect,
  [27] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.dissect,
  [28] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.dissect,
  [30] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.dissect,
  [32] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.dissect,
  [33] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.dissect,
  [34] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.dissect,
  [35] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.dissect,
  [43] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.dissect,
  [44] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.dissect,
  [45] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.dissect,
}

-- Dissect: Order Replaced Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_value.dissect = function(buffer, offset, packet, parent, order_replaced_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_optional_value.dispatch[order_replaced_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Replaced Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 25 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Order Accepted Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
  [1] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account.dissect,
  [2] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.dissect,
  [3] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.dissect,
  [4] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.dissect,
  [5] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.dissect,
  [6] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.dissect,
  [7] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.dissect,
  [8] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.dissect,
  [9] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.dissect,
  [10] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.dissect,
  [11] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.dissect,
  [12] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.dissect,
  [14] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.jitney.dissect,
  [15] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.dissect,
  [16] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.dissect,
  [17] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.dissect,
  [18] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.dissect,
  [19] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.dissect,
  [20] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.dissect,
  [21] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_key.dissect,
  [22] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.dissect,
  [23] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.po_comment.dissect,
  [24] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.dissect,
  [25] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.dissect,
  [26] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.dissect,
  [27] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.dissect,
  [28] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.dissect,
  [29] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.dissect,
  [30] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.dissect,
  [31] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.dissect,
  [32] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.dissect,
  [33] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.dissect,
  [34] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.dissect,
  [35] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.dissect,
  [39] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_strategy.dissect,
  [43] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.dissect,
  [44] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.reprice_reason.dissect,
  [45] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.nbbo_setter.dissect,
}

-- Dissect: Order Accepted Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_value.dissect = function(buffer, offset, packet, parent, order_accepted_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_optional_value.dispatch[order_accepted_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Accepted Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 39 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Sequenced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message.dispatch = {
  ["S"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.system_event_message.dissect,
  ["A"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_accepted_message.dissect,
  ["U"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_replaced_message.dissect,
  ["C"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_canceled_message.dissect,
  ["D"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.stp_canceled_message.dissect,
  ["E"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_executed_message.dissect,
  ["B"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.corrected_trade_message.dissect,
  ["J"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.rejected_order_message.dissect,
  ["I"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_reject_message.dissect,
  ["R"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_restated_message.dissect,
  ["Q"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_response_message.dissect,
}

-- Dissect: Sequenced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

-- Calculate size of: Debug Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

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

-- Dispatch: Server Payload
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_payload.dispatch = {
  ["+"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.dissect,
  ["A"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_accepted_packet.dissect,
  ["J"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_rejected_packet.dissect,
  ["S"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.sequenced_data_packet.dissect,
  ["H"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_heartbeat.dissect,
  ["Z"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.end_of_session.dissect,
}

-- Dissect: Server Payload
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_soup_bin_tcp_packet):tvb()
      index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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

-- Dispatch: Account Query Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
}

-- Dissect: Account Query Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_value.dissect = function(buffer, offset, packet, parent, account_query_request_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_optional_value.dispatch[account_query_request_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Account Query Request Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
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

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Account Query Request Appendage
  local end_of_payload = appendage_length + index

  -- Account Query Request Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Cancel Order Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
}

-- Dissect: Cancel Order Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_value.dissect = function(buffer, offset, packet, parent, cancel_order_request_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_optional_value.dispatch[cancel_order_request_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Cancel Order Request Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Replace Order Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
  [3] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.dissect,
  [2] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.dissect,
  [4] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.dissect,
  [5] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.dissect,
  [6] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.dissect,
  [7] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.dissect,
  [8] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.dissect,
  [9] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.dissect,
  [10] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.dissect,
  [17] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.dissect,
  [16] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.dissect,
  [24] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.dissect,
  [25] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.dissect,
  [26] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.dissect,
  [27] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.dissect,
  [28] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.dissect,
  [30] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.dissect,
  [32] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.dissect,
  [33] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.dissect,
  [34] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.dissect,
  [35] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.dissect,
  [43] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.dissect,
}

-- Dissect: Replace Order Request Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_value.dissect = function(buffer, offset, packet, parent, replace_order_request_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_optional_value.dispatch[replace_order_request_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Replace Order Request Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 23 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Enter Order Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_value.dispatch = {
  [37] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.user_ref_idx.dissect,
  [1] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account.dissect,
  [2] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_type.dissect,
  [3] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty_type.dissect,
  [4] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_qty.dissect,
  [5] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_floor.dissect,
  [6] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.expire_time.dissect,
  [7] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.peg_offset.dissect,
  [8] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.target_strategy.dissect,
  [9] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.order_origination.dissect,
  [10] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_arrangement_indicator.dissect,
  [11] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.basket_trade.dissect,
  [12] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.program_trade.dissect,
  [14] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.jitney.dissect,
  [15] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.gef_eligible.dissect,
  [16] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.anonymous.dissect,
  [17] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.umir_regulation_id.dissect,
  [18] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.bypass.dissect,
  [19] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.tsxncib.dissect,
  [20] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_feat.dissect,
  [21] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.no_trade_key.dissect,
  [22] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.short_marking_exempt.dissect,
  [23] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.po_comment.dissect,
  [24] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.display_range.dissect,
  [25] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_account.dissect,
  [26] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.algorithm_id.dissect,
  [27] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.customer_lei.dissect,
  [28] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.broker_lei.dissect,
  [29] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.conditional_order.dissect,
  [30] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.allow_conditional.dissect,
  [31] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.firm_up_id.dissect,
  [32] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cxd_connect.dissect,
  [33] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.pure_stream_connect.dissect,
  [34] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.min_rate.dissect,
  [35] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.max_rate.dissect,
  [39] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.routing_strategy.dissect,
  [43] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.handl_inst.dissect,
}

-- Dissect: Enter Order Optional Value
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_value.dissect = function(buffer, offset, packet, parent, enter_order_optional_field)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_optional_value.dispatch[enter_order_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.optional_field_length.dissect(buffer, index, packet, parent)

  -- Enter Order Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 37 values
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
    local optional_field_length = buffer(index, 1):uint()

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

-- Dispatch: Unsequenced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message.dispatch = {
  ["O"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.enter_order_message.dissect,
  ["U"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.replace_order_request_message.dissect,
  ["X"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.cancel_order_request_message.dissect,
  ["Q"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.account_query_request_message.dissect,
}

-- Dissect: Unsequenced Message
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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

-- Dispatch: Client Payload
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_payload.dispatch = {
  ["+"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.debug_packet.dissect,
  ["L"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.login_request_packet.dissect,
  ["U"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.unsequenced_data_packet.dissect,
  ["R"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_heartbeat.dissect,
  ["O"] = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.logout_request.dissect,
}

-- Dissect: Client Payload
nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
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
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_soup_bin_tcp_packet):tvb()
      index = nasdaq_nasdaqcanada_orderentry_ouch_v5_0_1_4.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
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

  -- Sequenced Data Packet
  if server_packet_type == "S" then
    return true
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

  -- Verify the frame matches this tcp client packet message dispatch
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

  -- Verify the frame matches this tcp server packet message dispatch
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
