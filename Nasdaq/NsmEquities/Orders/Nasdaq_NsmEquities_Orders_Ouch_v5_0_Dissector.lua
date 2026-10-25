-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Orders Ouch 5.0 Protocol
local omi_nasdaq_nsmequities_orders_ouch_v5_0 = Proto("Omi.Nasdaq.NsmEquities.Orders.Ouch.v5.0", "Nasdaq NsmEquities Orders Ouch 5.0")

-- Protocol table
local nasdaq_nsmequities_orders_ouch_v5_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Orders Ouch 5.0 Fields
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nsmequities.orders.ouch.v5.0.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nsmequities.orders.ouch.v5.0.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_appendage = ProtoField.new("Account Query Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.accountqueryappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_optional_field = ProtoField.new("Account Query Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.accountqueryoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_response_appendage = ProtoField.new("Account Query Response Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.accountqueryresponseappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_response_optional_field = ProtoField.new("Account Query Response Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.accountqueryresponseoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_canceled_appendage = ProtoField.new("Aiq Canceled Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.aiqcanceledappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_canceled_optional_field = ProtoField.new("Aiq Canceled Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.aiqcanceledoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_group_id = ProtoField.new("Aiq Group Id", "nasdaq.nsmequities.orders.ouch.v5.0.aiqgroupid", ftypes.STRING, nil, nil, nil, "Specified to enable self match prevention at a more granular level within a given matching level")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_strategy = ProtoField.new("Aiq Strategy", "nasdaq.nsmequities.orders.ouch.v5.0.aiqstrategy", ftypes.STRING, nil, nil, nil, "AIQ strategy used on the cancelled order.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.appendage_length = ProtoField.new("Appendage Length", "nasdaq.nsmequities.orders.ouch.v5.0.appendagelength", ftypes.UINT16, nil, nil, nil, "The length of the remaining Optional Appendage field.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.bbo_weight_indicator = ProtoField.new("Bbo Weight Indicator", "nasdaq.nsmequities.orders.ouch.v5.0.bboweightindicator", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_appendage = ProtoField.new("Broken Trade Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.brokentradeappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_optional_field = ProtoField.new("Broken Trade Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.brokentradeoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "nasdaq.nsmequities.orders.ouch.v5.0.brokentradereason", ftypes.STRING, nil, nil, nil, "The reason the trade was broken.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_appendage = ProtoField.new("Cancel Order Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.cancelorderappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_optional_field = ProtoField.new("Cancel Order Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.cancelorderoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_reason = ProtoField.new("Cancel Order Reason", "nasdaq.nsmequities.orders.ouch.v5.0.cancelorderreason", ftypes.STRING, nil, nil, nil, "Reason the order was reduced or canceled.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_pending_appendage = ProtoField.new("Cancel Pending Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.cancelpendingappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_pending_optional_field = ProtoField.new("Cancel Pending Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.cancelpendingoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_reject_appendage = ProtoField.new("Cancel Reject Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.cancelrejectappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_reject_optional_field = ProtoField.new("Cancel Reject Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.cancelrejectoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.canceled_message_appendage = ProtoField.new("Canceled Message Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.canceledmessageappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.canceled_message_optional_field = ProtoField.new("Canceled Message Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.canceledmessageoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.capacity = ProtoField.new("Capacity", "nasdaq.nsmequities.orders.ouch.v5.0.capacity", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nsmequities.orders.ouch.v5.0.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.clordid = ProtoField.new("ClOrdId", "nasdaq.nsmequities.orders.ouch.v5.0.clordid", ftypes.STRING, nil, nil, nil, "Customer order identifier. ClOrdID will not be checked for day-uniqueness for each OUCH account.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.orders.ouch.v5.0.crosstype", ftypes.STRING, nil, nil, nil, "CrossType")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.customer_type = ProtoField.new("Customer Type", "nasdaq.nsmequities.orders.ouch.v5.0.customertype", ftypes.STRING, nil, nil, nil, "CustomerType")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.nsmequities.orders.ouch.v5.0.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.decrement_shares = ProtoField.new("Decrement Shares", "nasdaq.nsmequities.orders.ouch.v5.0.decrementshares", ftypes.UINT32, nil, nil, nil, "The number of shares just decremented from the order. This number is incremental, not cumulative.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_request_appendage = ProtoField.new("Disable Order Entry Request Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.disableorderentryrequestappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_request_optional_field = ProtoField.new("Disable Order Entry Request Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.disableorderentryrequestoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_response_appendage = ProtoField.new("Disable Order Entry Response Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.disableorderentryresponseappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_response_optional_field = ProtoField.new("Disable Order Entry Response Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.disableorderentryresponseoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_peg_offset = ProtoField.new("Discretion Peg Offset", "nasdaq.nsmequities.orders.ouch.v5.0.discretionpegoffset", ftypes.DOUBLE, nil, nil, nil, "Offset amount for the pegged value of the Discretionary Price.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_price = ProtoField.new("Discretion Price", "nasdaq.nsmequities.orders.ouch.v5.0.discretionprice", ftypes.DOUBLE, nil, nil, nil, "Discretion price for Discretionary Order.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_price_type = ProtoField.new("Discretion Price Type", "nasdaq.nsmequities.orders.ouch.v5.0.discretionpricetype", ftypes.STRING, nil, nil, nil, "DiscretionPriceType")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display = ProtoField.new("Display", "nasdaq.nsmequities.orders.ouch.v5.0.display", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display_price = ProtoField.new("Display Price", "nasdaq.nsmequities.orders.ouch.v5.0.displayprice", ftypes.DOUBLE, nil, nil, nil, "Used in the Order Restated Message only. Represents an update of an order's displayed price.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display_quantity = ProtoField.new("Display Quantity", "nasdaq.nsmequities.orders.ouch.v5.0.displayquantity", ftypes.UINT32, nil, nil, nil, "Used in the Order Restated Message only. Represents an update of an order's displayed quantity (i.e. an order with reserves).")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_request_appendage = ProtoField.new("Enable Order Entry Request Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.enableorderentryrequestappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_request_optional_field = ProtoField.new("Enable Order Entry Request Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.enableorderentryrequestoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_response_appendage = ProtoField.new("Enable Order Entry Response Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.enableorderentryresponseappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_response_optional_field = ProtoField.new("Enable Order Entry Response Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.enableorderentryresponseoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_appendage = ProtoField.new("Enter Order Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.enterorderappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_optional_field = ProtoField.new("Enter Order Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.enterorderoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.orders.ouch.v5.0.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.nsmequities.orders.ouch.v5.0.executionprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the trade would have occurred")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.expire_time = ProtoField.new("Expire Time", "nasdaq.nsmequities.orders.ouch.v5.0.expiretime", ftypes.UINT32, nil, nil, nil, "Seconds to live. Must be less than 86400 (number of seconds in a day)")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.firm = ProtoField.new("Firm", "nasdaq.nsmequities.orders.ouch.v5.0.firm", ftypes.STRING, nil, nil, nil, "This field should contain all caps. Firm identifier for the order entry firm. One logical OUCH account can potentially enter orders for multiple firms in a Service Bureau configuration.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.group_id = ProtoField.new("Group Id", "nasdaq.nsmequities.orders.ouch.v5.0.groupid", ftypes.UINT16, nil, nil, nil, "Customer Group ID – identifies specific entity")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.handle_inst = ProtoField.new("Handle Inst", "nasdaq.nsmequities.orders.ouch.v5.0.handleinst", ftypes.STRING, nil, nil, nil, "HandleInst")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.inter_market_sweep_eligibility = ProtoField.new("Inter Market Sweep Eligibility", "nasdaq.nsmequities.orders.ouch.v5.0.intermarketsweepeligibility", ftypes.STRING, nil, nil, nil, "InterMarket Sweep Eligibility")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.nsmequities.orders.ouch.v5.0.liquidityflag", ftypes.STRING, nil, nil, nil, "Liquidity flag the order would have received.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.locate_broker = ProtoField.new("Locate Broker", "nasdaq.nsmequities.orders.ouch.v5.0.locatebroker", ftypes.STRING, nil, nil, nil, "Broker code from which the locate has been acquired for short sale orders")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_request_appendage = ProtoField.new("Mass Cancel Request Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.masscancelrequestappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_request_optional_field = ProtoField.new("Mass Cancel Request Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.masscancelrequestoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_response_appendage = ProtoField.new("Mass Cancel Response Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.masscancelresponseappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_response_optional_field = ProtoField.new("Mass Cancel Response Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.masscancelresponseoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.orders.ouch.v5.0.matchnumber", ftypes.UINT64, nil, nil, nil, "Assigned by the exchange to identify the trade. Both the buy and the sell executions participating in the trade will share the same match number.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.max_floor = ProtoField.new("Max Floor", "nasdaq.nsmequities.orders.ouch.v5.0.maxfloor", ftypes.UINT32, nil, nil, nil, "Represents the portion of your order that you wish to have displayed.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.min_qty = ProtoField.new("Min Qty", "nasdaq.nsmequities.orders.ouch.v5.0.minqty", ftypes.UINT32, nil, nil, nil, "MinQty must be a round lot.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.modify_order_appendage = ProtoField.new("Modify Order Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.modifyorderappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.modify_order_optional_field = ProtoField.new("Modify Order Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.modifyorderoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.next_user_ref_num = ProtoField.new("Next User Ref Num", "nasdaq.nsmequities.orders.ouch.v5.0.nextuserrefnum", ftypes.UINT32, nil, nil, nil, "The next available UserRefNum")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.optional_field_length = ProtoField.new("Optional Field Length", "nasdaq.nsmequities.orders.ouch.v5.0.optionalfieldlength", ftypes.UINT8, nil, nil, nil, "Appendage Length Type")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_appendage = ProtoField.new("Order Accepted Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.orderacceptedappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_optional_field = ProtoField.new("Order Accepted Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.orderacceptedoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_cancel_reason = ProtoField.new("Order Cancel Reason", "nasdaq.nsmequities.orders.ouch.v5.0.ordercancelreason", ftypes.STRING, nil, nil, nil, "Reason the order was reduced or canceled. For an AIQ Cancel message, this value will always be “Q”.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_appendage = ProtoField.new("Order Executed Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.orderexecutedappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_optional_field = ProtoField.new("Order Executed Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.orderexecutedoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_modified_appendage = ProtoField.new("Order Modified Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.ordermodifiedappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_modified_optional_field = ProtoField.new("Order Modified Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.ordermodifiedoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_priority_update_appendage = ProtoField.new("Order Priority Update Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.orderpriorityupdateappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_priority_update_optional_field = ProtoField.new("Order Priority Update Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.orderpriorityupdateoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nsmequities.orders.ouch.v5.0.orderreferencenumber", ftypes.UINT64, nil, nil, nil, "The day-unique Order Reference Number assigned by NASDAQ to this order")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_appendage = ProtoField.new("Order Restated Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.orderrestatedappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_optional_field = ProtoField.new("Order Restated Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.orderrestatedoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_reason = ProtoField.new("Order Restated Reason", "nasdaq.nsmequities.orders.ouch.v5.0.orderrestatedreason", ftypes.STRING, nil, nil, nil, "The reason for this order being restated")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_state = ProtoField.new("Order State", "nasdaq.nsmequities.orders.ouch.v5.0.orderstate", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.orig_user_ref_num = ProtoField.new("Orig User Ref Num", "nasdaq.nsmequities.orders.ouch.v5.0.origuserrefnum", ftypes.UINT32, nil, nil, nil, "This must be filled out with the Order UserRefNum sent on the Enter Order Message or last Replace Order Message.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nsmequities.orders.ouch.v5.0.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.password = ProtoField.new("Password", "nasdaq.nsmequities.orders.ouch.v5.0.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.peg_offset = ProtoField.new("Peg Offset", "nasdaq.nsmequities.orders.ouch.v5.0.pegoffset", ftypes.DOUBLE, nil, nil, nil, "Offset amount for the pegged value.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.post_only = ProtoField.new("Post Only", "nasdaq.nsmequities.orders.ouch.v5.0.postonly", ftypes.STRING, nil, nil, nil, "PostOnly")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.orders.ouch.v5.0.price", ftypes.DOUBLE, nil, nil, nil, "The price of the order.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.price_type = ProtoField.new("Price Type", "nasdaq.nsmequities.orders.ouch.v5.0.pricetype", ftypes.STRING, nil, nil, nil, "PriceType")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.quantity = ProtoField.new("Quantity", "nasdaq.nsmequities.orders.ouch.v5.0.quantity", ftypes.UINT32, nil, nil, nil, "Total number of shares. Must be greater than zero and less than 1,000,000.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "nasdaq.nsmequities.orders.ouch.v5.0.quantitypreventedfromtrading", ftypes.UINT32, nil, nil, nil, "Shares that would have executed if the trade would have occurred. Depending on AIQ type and the sizes of orders in question the value for this field could either be the same or different than the Decrement Shares field. For “Decrement both” they are always the same. For “Cancel oldest” they will be different if the incoming order is smaller than the resting order.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.random_reserves = ProtoField.new("Random Reserves", "nasdaq.nsmequities.orders.ouch.v5.0.randomreserves", ftypes.UINT32, nil, nil, nil, "Shares to do random reserve with.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nsmequities.orders.ouch.v5.0.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_appendage = ProtoField.new("Rejected Order Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.rejectedorderappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_optional_field = ProtoField.new("Rejected Order Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.rejectedorderoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_reason = ProtoField.new("Rejected Order Reason", "nasdaq.nsmequities.orders.ouch.v5.0.rejectedorderreason", ftypes.UINT16, nil, nil, nil, "The reason the order was rejected.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_appendage = ProtoField.new("Replace Order Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.replaceorderappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_optional_field = ProtoField.new("Replace Order Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.replaceorderoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message_appendage = ProtoField.new("Replaced Message Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.replacedmessageappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message_optional_field = ProtoField.new("Replaced Message Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.replacedmessageoptionalfield", ftypes.UINT8, nil, nil, nil, "Appendage Id")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nsmequities.orders.ouch.v5.0.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nsmequities.orders.ouch.v5.0.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.route = ProtoField.new("Route", "nasdaq.nsmequities.orders.ouch.v5.0.route", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.secondary_ord_ref_num = ProtoField.new("Secondary Ord Ref Num", "nasdaq.nsmequities.orders.ouch.v5.0.secondaryordrefnum", ftypes.UINT64, nil, nil, nil, "An alternative order reference number used when publishing the order on the Nasdaq market data feeds (identifying, for example, the displayed portion of a reserve order)")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nsmequities.orders.ouch.v5.0.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nsmequities.orders.ouch.v5.0.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.shares_located = ProtoField.new("Shares Located", "nasdaq.nsmequities.orders.ouch.v5.0.shareslocated", ftypes.STRING, nil, nil, nil, "Shares located for short sale order")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.side = ProtoField.new("Side", "nasdaq.nsmequities.orders.ouch.v5.0.side", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.symbol = ProtoField.new("Symbol", "nasdaq.nsmequities.orders.ouch.v5.0.symbol", ftypes.STRING, nil, nil, nil, "Stock Symbol")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.nsmequities.orders.ouch.v5.0.timeinforce", ftypes.STRING, nil, nil, nil, "Corresponds to TimeInForce (59) in Nasdaq FIX")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.orders.ouch.v5.0.timestamp", ftypes.UINT64, nil, nil, nil, "Expressed as nanoseconds since midnight")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.trade_now = ProtoField.new("Trade Now", "nasdaq.nsmequities.orders.ouch.v5.0.tradenow", ftypes.STRING, nil, nil, nil, "TradeNow")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nsmequities.orders.ouch.v5.0.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.user_ref_idx = ProtoField.new("User Ref Idx", "nasdaq.nsmequities.orders.ouch.v5.0.userrefidx", ftypes.UINT8, nil, nil, nil, "User Reference Index – identifies the channel within the given port")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.user_ref_num = ProtoField.new("User Ref Num", "nasdaq.nsmequities.orders.ouch.v5.0.userrefnum", ftypes.UINT32, nil, nil, nil, "UserRefNum must be day-unique and strictly increasing for each OUCH account.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.username = ProtoField.new("Username", "nasdaq.nsmequities.orders.ouch.v5.0.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Nasdaq NsmEquities Orders Ouch 5.0 Framing
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.client_packet = ProtoField.new("Packet", "nasdaq.nsmequities.orders.ouch.v5.0.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.orders.ouch.v5.0.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nsmequities.orders.ouch.v5.0.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.server_packet = ProtoField.new("Packet", "nasdaq.nsmequities.orders.ouch.v5.0.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.orders.ouch.v5.0.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nsmequities.orders.ouch.v5.0.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Nasdaq NsmEquities Orders 5.0 Application Messages
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_message = ProtoField.new("Account Query Message", "nasdaq.nsmequities.orders.ouch.v5.0.accountquerymessage", ftypes.STRING, nil, nil, nil, "The Account Query Request message can be used when recovering state to request the next available UserRefNum that can be used for identifying new transactions.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_response_message = ProtoField.new("Account Query Response Message", "nasdaq.nsmequities.orders.ouch.v5.0.accountqueryresponsemessage", ftypes.STRING, nil, nil, nil, "The Account Query Response message in sent in response to an Account Query Request to indicate the next available UserRefNum that can be used to identify new transactions.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_canceled_message = ProtoField.new("Aiq Canceled Message", "nasdaq.nsmequities.orders.ouch.v5.0.aiqcanceledmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nsmequities.orders.ouch.v5.0.brokentrademessage", ftypes.STRING, nil, nil, nil, "A Broken Trade Message informs you that an execution has been broken. The trade is no longer good and will not clear. The reason for the break is given.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.nsmequities.orders.ouch.v5.0.cancelordermessage", ftypes.STRING, nil, nil, nil, "The Cancel Order Message is used to request that an order be canceled or reduced. In the Cancel Order Message, you must specify the new \"intended order size\" for the order. The \"intended order size\" is the maximum number of shares that can be executed in total after the cancel is applied.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_pending_message = ProtoField.new("Cancel Pending Message", "nasdaq.nsmequities.orders.ouch.v5.0.cancelpendingmessage", ftypes.STRING, nil, nil, nil, "A Cancel Pending Message is sent in response to a cancel request for a cross order during a pre-cross late period signifying that it cannot be canceled at this time, but any unexecuted portion of this order will automatically be canceled immediately after the cross completes.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_reject_message = ProtoField.new("Cancel Reject Message", "nasdaq.nsmequities.orders.ouch.v5.0.cancelrejectmessage", ftypes.STRING, nil, nil, nil, "A Cancel Reject Message is sent in response to a partial cancel request (with non-zero “intended order size”) for a cross order during a pre-cross late period signifying that it cannot be partially canceled at this time. No automatic cancel will be scheduled for this order. Clients could repeat their request for any unexecuted portion of the order after the cross completes.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.canceled_message = ProtoField.new("Canceled Message", "nasdaq.nsmequities.orders.ouch.v5.0.canceledmessage", ftypes.STRING, nil, nil, nil, "A Canceled Message informs you that an order has been reduced or canceled. This could be acknowledging a Cancel Order Message, or it could be the result of the order timing out or being canceled automatically.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_request_message = ProtoField.new("Disable Order Entry Request Message", "nasdaq.nsmequities.orders.ouch.v5.0.disableorderentryrequestmessage", ftypes.STRING, nil, nil, nil, "The Disable Order Entry Request allows firms the ability to block submissions of new orders on a particular account.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_response_message = ProtoField.new("Disable Order Entry Response Message", "nasdaq.nsmequities.orders.ouch.v5.0.disableorderentryresponsemessage", ftypes.STRING, nil, nil, nil, "This message acknowledges the receipt of the Disable Order Entry Request message. The data fields from the Disable Order Entry Request message are echoed back in this message.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_request_message = ProtoField.new("Enable Order Entry Request Message", "nasdaq.nsmequities.orders.ouch.v5.0.enableorderentryrequestmessage", ftypes.STRING, nil, nil, nil, "The Enable Order Entry Request allows firms the ability to unblock submission of new orders on a particular account.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_response_message = ProtoField.new("Enable Order Entry Response Message", "nasdaq.nsmequities.orders.ouch.v5.0.enableorderentryresponsemessage", ftypes.STRING, nil, nil, nil, "This message acknowledges the receipt of the Enable Order Entry Request message. The data fields from the Enable Order Entry Request message are echoed back in this message.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.nsmequities.orders.ouch.v5.0.enterordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "nasdaq.nsmequities.orders.ouch.v5.0.masscancelrequestmessage", ftypes.STRING, nil, nil, nil, "The Mass Cancel Request message allows firms to initiate the cancellation of one or more orders that are currently booked at the exchange if they match the criteria specified in the request. If no optional criteria are specified then all orders for the specified firm on the account will be cancelled. Optional criteria can be specified in the Appendage field.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_response_message = ProtoField.new("Mass Cancel Response Message", "nasdaq.nsmequities.orders.ouch.v5.0.masscancelresponsemessage", ftypes.STRING, nil, nil, nil, "This message acknowledges the receipt of a valid Mass Cancel Request message. The data fields from the Mass Cancel Request message are echoed back in this message.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.modify_order_message = ProtoField.new("Modify Order Message", "nasdaq.nsmequities.orders.ouch.v5.0.modifyordermessage", ftypes.STRING, nil, nil, nil, "The Modify Order Message is used to request modifications that will not affect order priority on the book. Since priority of the order does not change, allowed modifications are restricted. Increasing share amount is not allowed and requests to do so will be ignored.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "nasdaq.nsmequities.orders.ouch.v5.0.orderacceptedmessage", ftypes.STRING, nil, nil, nil, "This message acknowledges the receipt and acceptance of a valid Enter Order Message. The data fields from the Enter Order Message are echoed back in this message. Note that the accepted values may differ from the entered values for some fields.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nsmequities.orders.ouch.v5.0.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "An Executed Order Message informs you that all or part of an order has been executed.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_modified_message = ProtoField.new("Order Modified Message", "nasdaq.nsmequities.orders.ouch.v5.0.ordermodifiedmessage", ftypes.STRING, nil, nil, nil, "An Order Modified Message is sent in response to an order modify request.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_priority_update_message = ProtoField.new("Order Priority Update Message", "nasdaq.nsmequities.orders.ouch.v5.0.orderpriorityupdatemessage", ftypes.STRING, nil, nil, nil, "A Priority Update Message is sent whenever priority of the order has been changed by the system.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_message = ProtoField.new("Order Restated Message", "nasdaq.nsmequities.orders.ouch.v5.0.orderrestatedmessage", ftypes.STRING, nil, nil, nil, "The Order Restated Message is sent to indicate that the system has modified an order as part of its order management.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "nasdaq.nsmequities.orders.ouch.v5.0.rejectedordermessage", ftypes.STRING, nil, nil, nil, "A Rejected Message may be sent in response to an Enter Order Message or Replace Order Message if the order or replace cannot be accepted at this time. The reason for the rejection is given.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_message = ProtoField.new("Replace Order Message", "nasdaq.nsmequities.orders.ouch.v5.0.replaceordermessage", ftypes.STRING, nil, nil, nil, "The Replace Order Message allows you to cancel and replace an existing order in a single message. This is more efficient than canceling an existing order and immediately succeeding it with a new order. Replacing an order always gives it a new timestamp for its time priority on the book. If you wish you simply partially cancel an order and retain its time priority, send a Cancel Order Message instead.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message = ProtoField.new("Replaced Message", "nasdaq.nsmequities.orders.ouch.v5.0.replacedmessage", ftypes.STRING, nil, nil, nil, "This message acknowledges the receipt and acceptance of a valid Replace Order Message. The data fields from the Replace Order Message are echoed back in this message. Note that the accepted values may differ from the entered values for some fields. You will receive one and only one of these two for each replacement.")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.orders.ouch.v5.0.systemeventmessage", ftypes.STRING, nil, nil, nil, "System Event Messages signal events that affect the entire NASDAQ system.")

-- Nasdaq NsmEquities Orders 5.0 Session Messages
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.nsmequities.orders.ouch.v5.0.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nsmequities.orders.ouch.v5.0.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nsmequities.orders.ouch.v5.0.endofsession", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server signals end of session; client may now disconnect. Carries no payload")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nsmequities.orders.ouch.v5.0.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nsmequities.orders.ouch.v5.0.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nsmequities.orders.ouch.v5.0.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.nsmequities.orders.ouch.v5.0.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nsmequities.orders.ouch.v5.0.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.nsmequities.orders.ouch.v5.0.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nsmequities.orders.ouch.v5.0.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Nasdaq NsmEquities Orders Ouch 5.0 Generated Fields
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nsmequities.orders.ouch.v5.0.sequenceddatapacketsequencenumber", ftypes.UINT64)

-- Nasdaq NsmEquities Orders Ouch 5.0 Expert Info
nasdaq_nsmequities_orders_ouch_v5_0.experts = {}
nasdaq_nsmequities_orders_ouch_v5_0.experts.not_a_number = ProtoExpert.new("nasdaq.nsmequities.orders.ouch.v5.0.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_nsmequities_orders_ouch_v5_0.experts = { nasdaq_nsmequities_orders_ouch_v5_0.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq NsmEquities Orders Ouch 5.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_orders_ouch_v5_0.timestamp_format = 2

-- Hours behind UTC (UTC) for midnight calculation
nasdaq_nsmequities_orders_ouch_v5_0.utc_offset_hours = 0

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

-- Nasdaq NsmEquities Orders Ouch 5.0 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq NsmEquities Orders Ouch 5.0 Show Options
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 0, "Hours behind UTC (UTC) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_sequences then
    show.sequences = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_sequences
  end
  if nasdaq_nsmequities_orders_ouch_v5_0.timestamp_format ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.timestamp_format then
    nasdaq_nsmequities_orders_ouch_v5_0.timestamp_format = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.timestamp_format
  end
  if nasdaq_nsmequities_orders_ouch_v5_0.utc_offset_hours ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.utc_offset_hours then
    nasdaq_nsmequities_orders_ouch_v5_0.utc_offset_hours = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nsmequities_orders_ouch_v5_0.conversation = {}
nasdaq_nsmequities_orders_ouch_v5_0.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_nsmequities_orders_ouch_v5_0.stream_frame = nil
nasdaq_nsmequities_orders_ouch_v5_0.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nsmequities_orders_ouch_v5_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nsmequities_orders_ouch_v5_0.conversation.data = function(packet)
  local key = nasdaq_nsmequities_orders_ouch_v5_0.conversation.key(packet)
  local data = nasdaq_nsmequities_orders_ouch_v5_0.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_nsmequities_orders_ouch_v5_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nsmequities_orders_ouch_v5_0.conversation.current = nil


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
-- Nasdaq NsmEquities Orders Ouch 5.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_orders_ouch_v5_0.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_nsmequities_orders_ouch_v5_0.accepted_session = {}

-- Size: Accepted Session
nasdaq_nsmequities_orders_ouch_v5_0.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_nsmequities_orders_ouch_v5_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_nsmequities_orders_ouch_v5_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Account Query Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_field = {}

-- Size: Account Query Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_field.size = 1

-- Display: Account Query Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_field.labels = {
  [28] = "Account Query Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_field.labels[value] or "Account Query Optional Field: Unknown("..value..")"
end

-- Dissect: Account Query Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_optional_field, range, value, display)

  return offset + length, value
end

-- Account Query Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_field = {}

-- Size: Account Query Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_field.size = 1

-- Display: Account Query Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_field.labels = {
  [28] = "Account Query Response Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_field.labels[value] or "Account Query Response Optional Field: Unknown("..value..")"
end

-- Dissect: Account Query Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_response_optional_field, range, value, display)

  return offset + length, value
end

-- Aiq Canceled Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_field = {}

-- Size: Aiq Canceled Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_field.size = 1

-- Display: Aiq Canceled Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_field.labels = {
  [28] = "Aiq Canceled Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_field.labels[value] or "Aiq Canceled Optional Field: Unknown("..value..")"
end

-- Dissect: Aiq Canceled Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_canceled_optional_field, range, value, display)

  return offset + length, value
end

-- Aiq Group Id
nasdaq_nsmequities_orders_ouch_v5_0.aiq_group_id = {}

-- Size: Aiq Group Id
nasdaq_nsmequities_orders_ouch_v5_0.aiq_group_id.size = 2

-- Display: Aiq Group Id
nasdaq_nsmequities_orders_ouch_v5_0.aiq_group_id.display = function(value)
  return "Aiq Group Id: "..value
end

-- Dissect: Aiq Group Id
nasdaq_nsmequities_orders_ouch_v5_0.aiq_group_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.aiq_group_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.aiq_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_group_id, range, value, display)

  return offset + length, value
end

-- Aiq Strategy
nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy = {}

-- Size: Aiq Strategy
nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.size = 1

-- Display: Aiq Strategy
nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.labels = {
  ["*"] = "Aiq Strategy: Use Port Default (*)",
  ["N"] = "Aiq Strategy: Disabled (N)",
  ["Y"] = "Aiq Strategy: Firm Level Decrement Both No Details (Y)",
  ["D"] = "Aiq Strategy: Firm Level Decrement Both (D)",
  ["O"] = "Aiq Strategy: Firm Level Cancel Oldest (O)",
  ["W"] = "Aiq Strategy: Firm Level Cancel Newest (W)",
  ["R"] = "Aiq Strategy: Firm Level Use Remover (R)",
  ["y"] = "Aiq Strategy: Organization Level Decrement Both No Details (y)",
  ["d"] = "Aiq Strategy: Organization Level Decrement Both (d)",
  ["o"] = "Aiq Strategy: Organization Level Cancel Oldest (o)",
  ["w"] = "Aiq Strategy: Organization Level Cancel Newest (w)",
  ["r"] = "Aiq Strategy: Organization Level Use Remover (r)",
  ["Z"] = "Aiq Strategy: Affiliate Level Decrement Both No Details (Z)",
  ["E"] = "Aiq Strategy: Affiliate Level Decrement Both (E)",
  ["P"] = "Aiq Strategy: Affiliate Level Cancel Oldest (P)",
  ["X"] = "Aiq Strategy: Affiliate Level Cancel Newest (X)",
  ["S"] = "Aiq Strategy: Affiliate Level Use Remover (S)",
  ["0"] = "Aiq Strategy: Match Any Level Decrement Both No Details (0)",
  ["1"] = "Aiq Strategy: Match Any Level Decrement Both (1)",
  ["2"] = "Aiq Strategy: Match Any Level Cancel Oldest (2)",
  ["4"] = "Aiq Strategy: Match Any Level Cancel Newest (4)",
  ["5"] = "Aiq Strategy: Match Any Level Use Remover (5)",
}

nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.labels[value] or "Aiq Strategy: Unknown("..value..")"
end

-- Dissect: Aiq Strategy
nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_strategy, range, value, display)

  return offset + length, value
end

-- Appendage Length
nasdaq_nsmequities_orders_ouch_v5_0.appendage_length = {}

-- Size: Appendage Length
nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.size = 2

-- Display: Appendage Length
nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.display = function(value)
  return "Appendage Length: "..value
end

-- Dissect: Appendage Length
nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.appendage_length, range, value, display)

  return offset + length, value
end

-- Bbo Weight Indicator
nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator = {}

-- Size: Bbo Weight Indicator
nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.size = 1

-- Display: Bbo Weight Indicator
nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.display = function(value)
  if value == "0" then
    return "Bbo Weight Indicator: 0-0.2% (0)"
  end
  if value == "1" then
    return "Bbo Weight Indicator: 0.2%-1% (1)"
  end
  if value == "2" then
    return "Bbo Weight Indicator: 1%-2% (2)"
  end
  if value == "3" then
    return "Bbo Weight Indicator: Greater Than 2% (3)"
  end
  if value == " " then
    return "Bbo Weight Indicator: Unspecified (<whitespace>)"
  end
  if value == "S" then
    return "Bbo Weight Indicator: Sets The Qbbo While Joining The Nbbo (S)"
  end
  if value == "N" then
    return "Bbo Weight Indicator: Improves The Nbbo Upon Entry (N)"
  end

  return "Bbo Weight Indicator: Unknown("..value..")"
end

-- Dissect: Bbo Weight Indicator
nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.bbo_weight_indicator, range, value, display)

  return offset + length, value
end

-- Broken Trade Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_field = {}

-- Size: Broken Trade Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_field.size = 1

-- Display: Broken Trade Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_field.labels = {
  [28] = "Broken Trade Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_field.labels[value] or "Broken Trade Optional Field: Unknown("..value..")"
end

-- Dissect: Broken Trade Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_optional_field, range, value, display)

  return offset + length, value
end

-- Broken Trade Reason
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason = {}

-- Size: Broken Trade Reason
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.size = 1

-- Display: Broken Trade Reason
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.labels = {
  ["E"] = "Broken Trade Reason: Erroneous (E)",
  ["C"] = "Broken Trade Reason: Consent (C)",
  ["S"] = "Broken Trade Reason: Supervisory (S)",
  ["X"] = "Broken Trade Reason: External (X)",
}

nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.labels[value] or "Broken Trade Reason: Unknown("..value..")"
end

-- Dissect: Broken Trade Reason
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Cancel Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_field = {}

-- Size: Cancel Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_field.size = 1

-- Display: Cancel Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_field.labels = {
  [28] = "Cancel Order Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_field.labels[value] or "Cancel Order Optional Field: Unknown("..value..")"
end

-- Dissect: Cancel Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_optional_field, range, value, display)

  return offset + length, value
end

-- Cancel Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason = {}

-- Size: Cancel Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.size = 1

-- Display: Cancel Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.labels = {
  ["U"] = "Cancel Order Reason: User Requested Cancel (U)",
  ["I"] = "Cancel Order Reason: Immediate Or Cancel Order (I)",
  ["T"] = "Cancel Order Reason: Timeout (T)",
  ["S"] = "Cancel Order Reason: Supervisory (S)",
  ["D"] = "Cancel Order Reason: Regulatory Restriction (D)",
  ["Q"] = "Cancel Order Reason: Self Match Prevention (Q)",
  ["Z"] = "Cancel Order Reason: System Cancel (Z)",
  ["K"] = "Cancel Order Reason: This Order Cannot Be Executed (K)",
  ["H"] = "Cancel Order Reason: Halted (H)",
  ["X"] = "Cancel Order Reason: Open Protection (X)",
  ["E"] = "Cancel Order Reason: Closed (E)",
  ["F"] = "Cancel Order Reason: Post Only Cancel (F)",
  ["G"] = "Cancel Order Reason: Post Only Cancel Contra Side Displayed (G)",
  ["e"] = "Cancel Order Reason: Company Direct Listing Capital Raise Order Exceeds Allowable Shares Offered (e)",
}

nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.labels[value] or "Cancel Order Reason: Unknown("..value..")"
end

-- Dissect: Cancel Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_reason, range, value, display)

  return offset + length, value
end

-- Cancel Pending Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_field = {}

-- Size: Cancel Pending Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_field.size = 1

-- Display: Cancel Pending Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_field.labels = {
  [28] = "Cancel Pending Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_field.labels[value] or "Cancel Pending Optional Field: Unknown("..value..")"
end

-- Dissect: Cancel Pending Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_pending_optional_field, range, value, display)

  return offset + length, value
end

-- Cancel Reject Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_field = {}

-- Size: Cancel Reject Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_field.size = 1

-- Display: Cancel Reject Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_field.labels = {
  [28] = "Cancel Reject Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_field.labels[value] or "Cancel Reject Optional Field: Unknown("..value..")"
end

-- Dissect: Cancel Reject Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_reject_optional_field, range, value, display)

  return offset + length, value
end

-- Canceled Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_field = {}

-- Size: Canceled Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_field.size = 1

-- Display: Canceled Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_field.labels = {
  [28] = "Canceled Message Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_field.labels[value] or "Canceled Message Optional Field: Unknown("..value..")"
end

-- Dissect: Canceled Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.canceled_message_optional_field, range, value, display)

  return offset + length, value
end

-- Capacity
nasdaq_nsmequities_orders_ouch_v5_0.capacity = {}

-- Size: Capacity
nasdaq_nsmequities_orders_ouch_v5_0.capacity.size = 1

-- Display: Capacity
nasdaq_nsmequities_orders_ouch_v5_0.capacity.labels = {
  ["O"] = "Capacity: Other (O)",
  ["A"] = "Capacity: Agency (A)",
  ["P"] = "Capacity: Principal (P)",
  ["R"] = "Capacity: Riskless (R)",
}

nasdaq_nsmequities_orders_ouch_v5_0.capacity.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.capacity.labels[value] or "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nasdaq_nsmequities_orders_ouch_v5_0.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.capacity, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

nasdaq_nsmequities_orders_ouch_v5_0.client_packet_type.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- ClOrdId
nasdaq_nsmequities_orders_ouch_v5_0.clordid = {}

-- Size: ClOrdId
nasdaq_nsmequities_orders_ouch_v5_0.clordid.size = 14

-- Display: ClOrdId
nasdaq_nsmequities_orders_ouch_v5_0.clordid.display = function(value)
  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.clordid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.clordid, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nsmequities_orders_ouch_v5_0.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_orders_ouch_v5_0.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_orders_ouch_v5_0.cross_type.labels = {
  ["N"] = "Cross Type: Continuous Market (N)",
  ["O"] = "Cross Type: Opening Cross (O)",
  ["C"] = "Cross Type: Closing Cross (C)",
  ["H"] = "Cross Type: Halt Ipo (H)",
  ["S"] = "Cross Type: Supplemental (S)",
  ["R"] = "Cross Type: Retail (R)",
  ["E"] = "Cross Type: Extended Life (E)",
  ["A"] = "Cross Type: After Hours Close (A)",
}

nasdaq_nsmequities_orders_ouch_v5_0.cross_type.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nsmequities_orders_ouch_v5_0.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Customer Type
nasdaq_nsmequities_orders_ouch_v5_0.customer_type = {}

-- Size: Customer Type
nasdaq_nsmequities_orders_ouch_v5_0.customer_type.size = 1

-- Display: Customer Type
nasdaq_nsmequities_orders_ouch_v5_0.customer_type.labels = {
  ["R"] = "Customer Type: Retail Designated Order (R)",
  ["N"] = "Customer Type: Not Retail Designated (N)",
}

nasdaq_nsmequities_orders_ouch_v5_0.customer_type.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.customer_type.labels[value] or "Customer Type: Unknown("..value..")"
end

-- Dissect: Customer Type
nasdaq_nsmequities_orders_ouch_v5_0.customer_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.customer_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.customer_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.customer_type, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_nsmequities_orders_ouch_v5_0.debug_text = {}

-- Display: Debug Text
nasdaq_nsmequities_orders_ouch_v5_0.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_nsmequities_orders_ouch_v5_0.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Decrement Shares
nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares = {}

-- Size: Decrement Shares
nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.size = 4

-- Display: Decrement Shares
nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.display = function(value)
  return "Decrement Shares: "..value
end

-- Dissect: Decrement Shares
nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.decrement_shares, range, value, display)

  return offset + length, value
end

-- Disable Order Entry Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_field = {}

-- Size: Disable Order Entry Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_field.size = 1

-- Display: Disable Order Entry Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_field.labels = {
  [28] = "Disable Order Entry Request Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_field.labels[value] or "Disable Order Entry Request Optional Field: Unknown("..value..")"
end

-- Dissect: Disable Order Entry Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_request_optional_field, range, value, display)

  return offset + length, value
end

-- Disable Order Entry Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_field = {}

-- Size: Disable Order Entry Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_field.size = 1

-- Display: Disable Order Entry Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_field.labels = {
  [28] = "Disable Order Entry Response Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_field.labels[value] or "Disable Order Entry Response Optional Field: Unknown("..value..")"
end

-- Dissect: Disable Order Entry Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_response_optional_field, range, value, display)

  return offset + length, value
end

-- Discretion Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset = {}

-- Size: Discretion Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.size = 4

-- Display: Discretion Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.display = function(value)
  return "Discretion Peg Offset: "..value
end

-- Translate: Discretion Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.translate = function(raw)
  return raw/10000
end

-- Dissect: Discretion Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_peg_offset, range, value, display)

  return offset + length, value
end

-- Discretion Price
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price = {}

-- Size: Discretion Price
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.size = 8

-- Display: Discretion Price
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.display = function(value)
  return "Discretion Price: "..value
end

-- Translate: Discretion Price
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Discretion Price
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_price, range, value, display)

  return offset + length, value
end

-- Discretion Price Type
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type = {}

-- Size: Discretion Price Type
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type.size = 1

-- Display: Discretion Price Type
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type.labels = {
  ["L"] = "Discretion Price Type: Limit (L)",
  ["P"] = "Discretion Price Type: Market Peg (P)",
  ["M"] = "Discretion Price Type: Midpoint Peg (M)",
  ["R"] = "Discretion Price Type: Primary Peg (R)",
}

nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type.labels[value] or "Discretion Price Type: Unknown("..value..")"
end

-- Dissect: Discretion Price Type
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_price_type, range, value, display)

  return offset + length, value
end

-- Display
nasdaq_nsmequities_orders_ouch_v5_0.display = {}

-- Size: Display
nasdaq_nsmequities_orders_ouch_v5_0.display.size = 1

-- Display: Display
nasdaq_nsmequities_orders_ouch_v5_0.display.labels = {
  ["A"] = "Display: Attributable (A)",
  ["Y"] = "Display: Visible (Y)",
  ["N"] = "Display: Hidden (N)",
  ["Z"] = "Display: Conformant (Z)",
}

nasdaq_nsmequities_orders_ouch_v5_0.display.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.display.labels[value] or "Display: Unknown("..value..")"
end

-- Dissect: Display
nasdaq_nsmequities_orders_ouch_v5_0.display.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display, range, value, display)

  return offset + length, value
end

-- Display Price
nasdaq_nsmequities_orders_ouch_v5_0.display_price = {}

-- Size: Display Price
nasdaq_nsmequities_orders_ouch_v5_0.display_price.size = 8

-- Display: Display Price
nasdaq_nsmequities_orders_ouch_v5_0.display_price.display = function(value)
  return "Display Price: "..value
end

-- Translate: Display Price
nasdaq_nsmequities_orders_ouch_v5_0.display_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Display Price
nasdaq_nsmequities_orders_ouch_v5_0.display_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.display_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.display_price.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display_price, range, value, display)

  return offset + length, value
end

-- Display Quantity
nasdaq_nsmequities_orders_ouch_v5_0.display_quantity = {}

-- Size: Display Quantity
nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.size = 4

-- Display: Display Quantity
nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.display = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Enable Order Entry Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_field = {}

-- Size: Enable Order Entry Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_field.size = 1

-- Display: Enable Order Entry Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_field.labels = {
  [28] = "Enable Order Entry Request Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_field.labels[value] or "Enable Order Entry Request Optional Field: Unknown("..value..")"
end

-- Dissect: Enable Order Entry Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_request_optional_field, range, value, display)

  return offset + length, value
end

-- Enable Order Entry Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_field = {}

-- Size: Enable Order Entry Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_field.size = 1

-- Display: Enable Order Entry Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_field.labels = {
  [28] = "Enable Order Entry Response Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_field.labels[value] or "Enable Order Entry Response Optional Field: Unknown("..value..")"
end

-- Dissect: Enable Order Entry Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_response_optional_field, range, value, display)

  return offset + length, value
end

-- Enter Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field = {}

-- Size: Enter Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.size = 1

-- Display: Enter Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.labels = {
  [2] = "Enter Order Optional Field: Firm (2)",
  [3] = "Enter Order Optional Field: MinQty (3)",
  [4] = "Enter Order Optional Field: CustomerType (4)",
  [5] = "Enter Order Optional Field: MaxFloor (5)",
  [6] = "Enter Order Optional Field: PriceType (6)",
  [7] = "Enter Order Optional Field: PegOffset (7)",
  [9] = "Enter Order Optional Field: DiscretionPrice (9)",
  [10] = "Enter Order Optional Field: DiscretionPriceType (10)",
  [11] = "Enter Order Optional Field: DiscretionPegOffset (11)",
  [12] = "Enter Order Optional Field: PostOnly (12)",
  [13] = "Enter Order Optional Field: RandomReserves (13)",
  [15] = "Enter Order Optional Field: ExpireTime (15)",
  [16] = "Enter Order Optional Field: TradeNow (16)",
  [17] = "Enter Order Optional Field: HandleInst (17)",
  [24] = "Enter Order Optional Field: Group ID (24)",
  [25] = "Enter Order Optional Field: Shares Located (25)",
  [26] = "Enter Order Optional Field: Locate Broker (26)",
  [28] = "Enter Order Optional Field: UserRefIdx (28)",
  [29] = "Enter Order Optional Field: AIQ Strategy (29)",
  [30] = "Enter Order Optional Field: AIQ Group ID (30)",
}

nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.labels[value] or "Enter Order Optional Field: Unknown("..value..")"
end

-- Dissect: Enter Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_optional_field, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_orders_ouch_v5_0.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_orders_ouch_v5_0.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_orders_ouch_v5_0.event_code.labels = {
  ["S"] = "Event Code: Start Of Day (S)",
  ["E"] = "Event Code: End Of Day (E)",
}

nasdaq_nsmequities_orders_ouch_v5_0.event_code.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_orders_ouch_v5_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Execution Price
nasdaq_nsmequities_orders_ouch_v5_0.execution_price = {}

-- Size: Execution Price
nasdaq_nsmequities_orders_ouch_v5_0.execution_price.size = 8

-- Display: Execution Price
nasdaq_nsmequities_orders_ouch_v5_0.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_nsmequities_orders_ouch_v5_0.execution_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Execution Price
nasdaq_nsmequities_orders_ouch_v5_0.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.execution_price.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Expire Time
nasdaq_nsmequities_orders_ouch_v5_0.expire_time = {}

-- Size: Expire Time
nasdaq_nsmequities_orders_ouch_v5_0.expire_time.size = 4

-- Display: Expire Time
nasdaq_nsmequities_orders_ouch_v5_0.expire_time.display = function(value)
  return "Expire Time: "..value
end

-- Dissect: Expire Time
nasdaq_nsmequities_orders_ouch_v5_0.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.expire_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Firm
nasdaq_nsmequities_orders_ouch_v5_0.firm = {}

-- Size: Firm
nasdaq_nsmequities_orders_ouch_v5_0.firm.size = 4

-- Display: Firm
nasdaq_nsmequities_orders_ouch_v5_0.firm.display = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.firm, range, value, display)

  return offset + length, value
end

-- Group Id
nasdaq_nsmequities_orders_ouch_v5_0.group_id = {}

-- Size: Group Id
nasdaq_nsmequities_orders_ouch_v5_0.group_id.size = 2

-- Display: Group Id
nasdaq_nsmequities_orders_ouch_v5_0.group_id.display = function(value)
  return "Group Id: "..value
end

-- Dissect: Group Id
nasdaq_nsmequities_orders_ouch_v5_0.group_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.group_id, range, value, display)

  return offset + length, value
end

-- Handle Inst
nasdaq_nsmequities_orders_ouch_v5_0.handle_inst = {}

-- Size: Handle Inst
nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.size = 1

-- Display: Handle Inst
nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.labels = {
  ["I"] = "Handle Inst: Imbalance Only (I)",
  ["O"] = "Handle Inst: Retail Order Type 1 (O)",
  ["T"] = "Handle Inst: Retail Order Type 2 (T)",
  ["Q"] = "Handle Inst: Retail Price Improvement (Q)",
  ["B"] = "Handle Inst: Extended Life Continuous (B)",
  ["D"] = "Handle Inst: Direct Listing Capital Raise (D)",
}

nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.labels[value] or "Handle Inst: Unknown("..value..")"
end

-- Dissect: Handle Inst
nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.handle_inst, range, value, display)

  return offset + length, value
end

-- Inter Market Sweep Eligibility
nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility = {}

-- Size: Inter Market Sweep Eligibility
nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.size = 1

-- Display: Inter Market Sweep Eligibility
nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.labels = {
  ["Y"] = "Inter Market Sweep Eligibility: Eligible (Y)",
  ["N"] = "Inter Market Sweep Eligibility: Not Eligible (N)",
}

nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.labels[value] or "Inter Market Sweep Eligibility: Unknown("..value..")"
end

-- Dissect: Inter Market Sweep Eligibility
nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.inter_market_sweep_eligibility, range, value, display)

  return offset + length, value
end

-- Liquidity Flag
nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag = {}

-- Size: Liquidity Flag
nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.size = 1

-- Display: Liquidity Flag
nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.labels = {
  ["A"] = "Liquidity Flag: Added (A)",
  ["C"] = "Liquidity Flag: Closing (C)",
  ["e"] = "Liquidity Flag: Retail Designated (e)",
  ["H"] = "Liquidity Flag: Halt Ipo (H)",
  ["i"] = "Liquidity Flag: After Hours Closing (i)",
  ["J"] = "Liquidity Flag: Nondisplayed Adding Liquidity (J)",
  ["j"] = "Liquidity Flag: Rpi Order Provides Liquidity (j)",
  ["k"] = "Liquidity Flag: Added Liquidity Via A Midpoint Order (k)",
  ["K"] = "Liquidity Flag: Halt Cross (K)",
  ["L"] = "Liquidity Flag: Closing Cross (L)",
  ["M"] = "Liquidity Flag: Opening Cross (M)",
  ["m"] = "Liquidity Flag: Removed Liquidity At A Midpoint (m)",
  ["N"] = "Liquidity Flag: Passive Midpoint Execution (N)",
  ["n"] = "Liquidity Flag: Midpoint Extended Life Order Execution (n)",
  ["O"] = "Liquidity Flag: Opening (O)",
  ["p"] = "Liquidity Flag: Removed Price Improving Nondisplayed Liquidity (p)",
  ["q"] = "Liquidity Flag: Rmo Retail Order Removes Non Rpi Midpoint Liquidity (q)",
  ["R"] = "Liquidity Flag: Removed (R)",
  ["r"] = "Liquidity Flag: Retail Order Removes Rpi Liquidity (r)",
  ["t"] = "Liquidity Flag: Retail Order Removes Price Improving Nondisplayed Liquidity Other Than Rpi Liquidity (t)",
  ["u"] = "Liquidity Flag: Added Nondisplayed Liquidity Via A Reserve Order (u)",
  ["0"] = "Liquidity Flag: Supplemental (0)",
  ["7"] = "Liquidity Flag: Displayed Liquidityadding Order Improves The Nbbo (7)",
  ["8"] = "Liquidity Flag: Displayed Liquidityadding Order Sets The Qbbo While Joining The Nbbo (8)",
  ["1"] = "Liquidity Flag: Rpi Order Provides Liquidity No Rpii (1)",
  ["2"] = "Liquidity Flag: Added In The Premarket (2)",
  ["3"] = "Liquidity Flag: Removed In The Premarket (3)",
  ["5"] = "Liquidity Flag: Displayed Liquidityadding Order Improves The Nbbo In The Premarket (5)",
  ["9"] = "Liquidity Flag: Nondisplayed Adding Liquidity In The Premarket (9)",
}

nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.labels[value] or "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Locate Broker
nasdaq_nsmequities_orders_ouch_v5_0.locate_broker = {}

-- Size: Locate Broker
nasdaq_nsmequities_orders_ouch_v5_0.locate_broker.size = 4

-- Display: Locate Broker
nasdaq_nsmequities_orders_ouch_v5_0.locate_broker.display = function(value)
  return "Locate Broker: "..value
end

-- Dissect: Locate Broker
nasdaq_nsmequities_orders_ouch_v5_0.locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.locate_broker, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_field = {}

-- Size: Mass Cancel Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_field.size = 1

-- Display: Mass Cancel Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_field.labels = {
  [27] = "Mass Cancel Request Optional Field: Side (27)",
  [24] = "Mass Cancel Request Optional Field: Group ID (24)",
  [28] = "Mass Cancel Request Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_field.labels[value] or "Mass Cancel Request Optional Field: Unknown("..value..")"
end

-- Dissect: Mass Cancel Request Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_request_optional_field, range, value, display)

  return offset + length, value
end

-- Mass Cancel Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_field = {}

-- Size: Mass Cancel Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_field.size = 1

-- Display: Mass Cancel Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_field.labels = {
  [27] = "Mass Cancel Response Optional Field: Side (27)",
  [24] = "Mass Cancel Response Optional Field: Group ID (24)",
  [28] = "Mass Cancel Response Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_field.labels[value] or "Mass Cancel Response Optional Field: Unknown("..value..")"
end

-- Dissect: Mass Cancel Response Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_response_optional_field, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nsmequities_orders_ouch_v5_0.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_orders_ouch_v5_0.match_number.size = 8

-- Display: Match Number
nasdaq_nsmequities_orders_ouch_v5_0.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_orders_ouch_v5_0.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Max Floor
nasdaq_nsmequities_orders_ouch_v5_0.max_floor = {}

-- Size: Max Floor
nasdaq_nsmequities_orders_ouch_v5_0.max_floor.size = 4

-- Display: Max Floor
nasdaq_nsmequities_orders_ouch_v5_0.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nasdaq_nsmequities_orders_ouch_v5_0.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.max_floor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Min Qty
nasdaq_nsmequities_orders_ouch_v5_0.min_qty = {}

-- Size: Min Qty
nasdaq_nsmequities_orders_ouch_v5_0.min_qty.size = 4

-- Display: Min Qty
nasdaq_nsmequities_orders_ouch_v5_0.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nasdaq_nsmequities_orders_ouch_v5_0.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.min_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_field = {}

-- Size: Modify Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_field.size = 1

-- Display: Modify Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_field.labels = {
  [28] = "Modify Order Optional Field: UserRefIdx (28)",
  [25] = "Modify Order Optional Field: Shares Located (25)",
  [26] = "Modify Order Optional Field: Locate Broker (26)",
}

nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_field.labels[value] or "Modify Order Optional Field: Unknown("..value..")"
end

-- Dissect: Modify Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.modify_order_optional_field, range, value, display)

  return offset + length, value
end

-- Next User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num = {}

-- Size: Next User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.size = 4

-- Display: Next User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.display = function(value)
  return "Next User Ref Num: "..value
end

-- Dissect: Next User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.next_user_ref_num, range, value, display)

  return offset + length, value
end

-- Optional Field Length
nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length = {}

-- Size: Optional Field Length
nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.size = 1

-- Display: Optional Field Length
nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.display = function(value)
  return "Optional Field Length: "..value
end

-- Dissect: Optional Field Length
nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.optional_field_length, range, value, display)

  return offset + length, value
end

-- Order Accepted Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field = {}

-- Size: Order Accepted Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.size = 1

-- Display: Order Accepted Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.labels = {
  [2] = "Order Accepted Optional Field: Firm (2)",
  [3] = "Order Accepted Optional Field: MinQty (3)",
  [4] = "Order Accepted Optional Field: CustomerType (4)",
  [5] = "Order Accepted Optional Field: MaxFloor (5)",
  [6] = "Order Accepted Optional Field: PriceType (6)",
  [7] = "Order Accepted Optional Field: PegOffset (7)",
  [9] = "Order Accepted Optional Field: DiscretionPrice (9)",
  [10] = "Order Accepted Optional Field: DiscretionPriceType (10)",
  [11] = "Order Accepted Optional Field: DiscretionPegOffset (11)",
  [12] = "Order Accepted Optional Field: PostOnly (12)",
  [13] = "Order Accepted Optional Field: RandomReserves (13)",
  [14] = "Order Accepted Optional Field: Route (14)",
  [15] = "Order Accepted Optional Field: ExpireTime (15)",
  [16] = "Order Accepted Optional Field: TradeNow (16)",
  [17] = "Order Accepted Optional Field: HandleInst (17)",
  [18] = "Order Accepted Optional Field: BBO Weight Indicator (18)",
  [24] = "Order Accepted Optional Field: Group ID (24)",
  [25] = "Order Accepted Optional Field: Shares Located (25)",
  [28] = "Order Accepted Optional Field: UserRefIdx (28)",
  [29] = "Order Accepted Optional Field: AIQ Strategy (29)",
  [30] = "Order Accepted Optional Field: AIQ Group ID (30)",
}

nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.labels[value] or "Order Accepted Optional Field: Unknown("..value..")"
end

-- Dissect: Order Accepted Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_optional_field, range, value, display)

  return offset + length, value
end

-- Order Cancel Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason = {}

-- Size: Order Cancel Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.size = 1

-- Display: Order Cancel Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.display = function(value)
  return "Order Cancel Reason: "..value
end

-- Dissect: Order Cancel Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_cancel_reason, range, value, display)

  return offset + length, value
end

-- Order Executed Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field = {}

-- Size: Order Executed Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.size = 1

-- Display: Order Executed Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.labels = {
  [28] = "Order Executed Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.labels[value] or "Order Executed Optional Field: Unknown("..value..")"
end

-- Dissect: Order Executed Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_optional_field, range, value, display)

  return offset + length, value
end

-- Order Modified Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_field = {}

-- Size: Order Modified Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_field.size = 1

-- Display: Order Modified Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_field.labels = {
  [28] = "Order Modified Optional Field: UserRefIdx (28)",
  [25] = "Order Modified Optional Field: Shares Located (25)",
  [26] = "Order Modified Optional Field: Locate Broker (26)",
}

nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_field.labels[value] or "Order Modified Optional Field: Unknown("..value..")"
end

-- Dissect: Order Modified Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_modified_optional_field, range, value, display)

  return offset + length, value
end

-- Order Priority Update Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_field = {}

-- Size: Order Priority Update Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_field.size = 1

-- Display: Order Priority Update Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_field.labels = {
  [28] = "Order Priority Update Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_field.labels[value] or "Order Priority Update Optional Field: Unknown("..value..")"
end

-- Dissect: Order Priority Update Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_priority_update_optional_field, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Restated Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field = {}

-- Size: Order Restated Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.size = 1

-- Display: Order Restated Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.labels = {
  [22] = "Order Restated Optional Field: Display Quantity (22)",
  [23] = "Order Restated Optional Field: Display Price (23)",
  [1] = "Order Restated Optional Field: SecondaryOrdRefNum (1)",
  [28] = "Order Restated Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.labels[value] or "Order Restated Optional Field: Unknown("..value..")"
end

-- Dissect: Order Restated Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_optional_field, range, value, display)

  return offset + length, value
end

-- Order Restated Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason = {}

-- Size: Order Restated Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.size = 1

-- Display: Order Restated Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.labels = {
  ["R"] = "Order Restated Reason: Refresh Of Display (R)",
  ["P"] = "Order Restated Reason: Update Of Displayed Price (P)",
}

nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.labels[value] or "Order Restated Reason: Unknown("..value..")"
end

-- Dissect: Order Restated Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_reason, range, value, display)

  return offset + length, value
end

-- Order State
nasdaq_nsmequities_orders_ouch_v5_0.order_state = {}

-- Size: Order State
nasdaq_nsmequities_orders_ouch_v5_0.order_state.size = 1

-- Display: Order State
nasdaq_nsmequities_orders_ouch_v5_0.order_state.labels = {
  ["L"] = "Order State: Order Live (L)",
  ["D"] = "Order State: Order Dead (D)",
}

nasdaq_nsmequities_orders_ouch_v5_0.order_state.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.order_state.labels[value] or "Order State: Unknown("..value..")"
end

-- Dissect: Order State
nasdaq_nsmequities_orders_ouch_v5_0.order_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_state, range, value, display)

  return offset + length, value
end

-- Orig User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num = {}

-- Size: Orig User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.size = 4

-- Display: Orig User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.display = function(value)
  return "Orig User Ref Num: "..value
end

-- Dissect: Orig User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.orig_user_ref_num, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nsmequities_orders_ouch_v5_0.packet_length = {}

-- Size: Packet Length
nasdaq_nsmequities_orders_ouch_v5_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_nsmequities_orders_ouch_v5_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nsmequities_orders_ouch_v5_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nsmequities_orders_ouch_v5_0.password = {}

-- Size: Password
nasdaq_nsmequities_orders_ouch_v5_0.password.size = 10

-- Display: Password
nasdaq_nsmequities_orders_ouch_v5_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nsmequities_orders_ouch_v5_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.peg_offset = {}

-- Size: Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.size = 4

-- Display: Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.display = function(value)
  return "Peg Offset: "..value
end

-- Translate: Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.translate = function(raw)
  return raw/10000
end

-- Dissect: Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Post Only
nasdaq_nsmequities_orders_ouch_v5_0.post_only = {}

-- Size: Post Only
nasdaq_nsmequities_orders_ouch_v5_0.post_only.size = 1

-- Display: Post Only
nasdaq_nsmequities_orders_ouch_v5_0.post_only.labels = {
  ["P"] = "Post Only: Post Only (P)",
  ["N"] = "Post Only: No (N)",
}

nasdaq_nsmequities_orders_ouch_v5_0.post_only.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.post_only.labels[value] or "Post Only: Unknown("..value..")"
end

-- Dissect: Post Only
nasdaq_nsmequities_orders_ouch_v5_0.post_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.post_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.post_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.post_only, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nsmequities_orders_ouch_v5_0.price = {}

-- Size: Price
nasdaq_nsmequities_orders_ouch_v5_0.price.size = 8

-- Display: Price
nasdaq_nsmequities_orders_ouch_v5_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nsmequities_orders_ouch_v5_0.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
nasdaq_nsmequities_orders_ouch_v5_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.price.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.price, range, value, display)

  return offset + length, value
end

-- Price Type
nasdaq_nsmequities_orders_ouch_v5_0.price_type = {}

-- Size: Price Type
nasdaq_nsmequities_orders_ouch_v5_0.price_type.size = 1

-- Display: Price Type
nasdaq_nsmequities_orders_ouch_v5_0.price_type.labels = {
  ["L"] = "Price Type: Limit (L)",
  ["P"] = "Price Type: Market Peg (P)",
  ["M"] = "Price Type: Midpoint Peg (M)",
  ["R"] = "Price Type: Primary Peg (R)",
  ["Q"] = "Price Type: Market Maker Peg (Q)",
  ["m"] = "Price Type: Midpoint (m)",
}

nasdaq_nsmequities_orders_ouch_v5_0.price_type.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.price_type.labels[value] or "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
nasdaq_nsmequities_orders_ouch_v5_0.price_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.price_type, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_nsmequities_orders_ouch_v5_0.quantity = {}

-- Size: Quantity
nasdaq_nsmequities_orders_ouch_v5_0.quantity.size = 4

-- Display: Quantity
nasdaq_nsmequities_orders_ouch_v5_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Prevented From Trading
nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading = {}

-- Size: Quantity Prevented From Trading
nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.size = 4

-- Display: Quantity Prevented From Trading
nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.display = function(value)
  return "Quantity Prevented From Trading: "..value
end

-- Dissect: Quantity Prevented From Trading
nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.quantity_prevented_from_trading, range, value, display)

  return offset + length, value
end

-- Random Reserves
nasdaq_nsmequities_orders_ouch_v5_0.random_reserves = {}

-- Size: Random Reserves
nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.size = 4

-- Display: Random Reserves
nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.display = function(value)
  return "Random Reserves: "..value
end

-- Dissect: Random Reserves
nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.random_reserves, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Rejected Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_field = {}

-- Size: Rejected Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_field.size = 1

-- Display: Rejected Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_field.labels = {
  [28] = "Rejected Order Optional Field: UserRefIdx (28)",
}

nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_field.labels[value] or "Rejected Order Optional Field: Unknown("..value..")"
end

-- Dissect: Rejected Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_optional_field, range, value, display)

  return offset + length, value
end

-- Rejected Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason = {}

-- Size: Rejected Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.size = 2

-- Display: Rejected Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.display = function(value)
  if value == 0x0001 then
    return "Rejected Order Reason: Quote Unavailable (0x0001)"
  end
  if value == 0x0002 then
    return "Rejected Order Reason: Destination Closed (0x0002)"
  end
  if value == 0x0003 then
    return "Rejected Order Reason: Invalid Display (0x0003)"
  end
  if value == 0x0004 then
    return "Rejected Order Reason: Invalid Max Floor (0x0004)"
  end
  if value == 0x0005 then
    return "Rejected Order Reason: Invalid Peg Type (0x0005)"
  end
  if value == 0x0006 then
    return "Rejected Order Reason: Fat Finger (0x0006)"
  end
  if value == 0x0007 then
    return "Rejected Order Reason: Halted (0x0007)"
  end
  if value == 0x0008 then
    return "Rejected Order Reason: Iso Not Allowed (0x0008)"
  end
  if value == 0x0009 then
    return "Rejected Order Reason: Invalid Side (0x0009)"
  end
  if value == 0x000A then
    return "Rejected Order Reason: Processing Error (0x000A)"
  end
  if value == 0x000B then
    return "Rejected Order Reason: Cancel Pending (0x000B)"
  end
  if value == 0x000C then
    return "Rejected Order Reason: Firm Not Authorized (0x000C)"
  end
  if value == 0x000D then
    return "Rejected Order Reason: Invalid Min Quantity (0x000D)"
  end
  if value == 0x000E then
    return "Rejected Order Reason: No Closing Reference Price (0x000E)"
  end
  if value == 0x000F then
    return "Rejected Order Reason: Other (0x000F)"
  end
  if value == 0x0010 then
    return "Rejected Order Reason: Cancel Not Allowed (0x0010)"
  end
  if value == 0x0011 then
    return "Rejected Order Reason: Pegging Not Allowed (0x0011)"
  end
  if value == 0x0012 then
    return "Rejected Order Reason: Crossed Market (0x0012)"
  end
  if value == 0x0013 then
    return "Rejected Order Reason: Invalid Quantity (0x0013)"
  end
  if value == 0x0014 then
    return "Rejected Order Reason: Invalid Cross Order (0x0014)"
  end
  if value == 0x0015 then
    return "Rejected Order Reason: Replace Not Allowed (0x0015)"
  end
  if value == 0x0016 then
    return "Rejected Order Reason: Routing Not Allowed (0x0016)"
  end
  if value == 0x0017 then
    return "Rejected Order Reason: Invalid Symbol (0x0017)"
  end
  if value == 0x0018 then
    return "Rejected Order Reason: Test (0x0018)"
  end
  if value == 0x0019 then
    return "Rejected Order Reason: Late Loc Too Aggressive (0x0019)"
  end
  if value == 0x001A then
    return "Rejected Order Reason: Retail Not Allowed (0x001A)"
  end
  if value == 0x001B then
    return "Rejected Order Reason: Invalid Midpoint Post Only Price (0x001B)"
  end
  if value == 0x001C then
    return "Rejected Order Reason: Invalid Destination (0x001C)"
  end
  if value == 0x001D then
    return "Rejected Order Reason: Invalid Price (0x001D)"
  end
  if value == 0x001E then
    return "Rejected Order Reason: Shares Exceed Threshold (0x001E)"
  end
  if value == 0x001F then
    return "Rejected Order Reason: Exceeds Maximum Allowed Notional Value (0x001F)"
  end
  if value == 0x0020 then
    return "Rejected Order Reason: Risk Aggregate Exposure Exceeded (0x0020)"
  end
  if value == 0x0021 then
    return "Rejected Order Reason: Risk Market Impact (0x0021)"
  end
  if value == 0x0022 then
    return "Rejected Order Reason: Risk Restricted Stock (0x0022)"
  end
  if value == 0x0023 then
    return "Rejected Order Reason: Risk Short Sell Restricted (0x0023)"
  end
  if value == 0x0024 then
    return "Rejected Order Reason: Risk Iso Not Allowed (0x0024)"
  end
  if value == 0x0025 then
    return "Rejected Order Reason: Risk Exceeds Adv Limit (0x0025)"
  end
  if value == 0x0026 then
    return "Rejected Order Reason: Risk Fat Finger (0x0026)"
  end
  if value == 0x0027 then
    return "Rejected Order Reason: Risk Locate Required (0x0027)"
  end
  if value == 0x0028 then
    return "Rejected Order Reason: Risk Symbol Message Rate Restriction (0x0028)"
  end
  if value == 0x0029 then
    return "Rejected Order Reason: Risk Port Message Rate Restriction (0x0029)"
  end
  if value == 0x002A then
    return "Rejected Order Reason: Risk Duplicate Message Rate Restriction (0x002A)"
  end
  if value == 0x002B then
    return "Rejected Order Reason: Risk Short Sell Not Allowed (0x002B)"
  end
  if value == 0x002C then
    return "Rejected Order Reason: Risk Market Order Not Allowed (0x002C)"
  end
  if value == 0x002D then
    return "Rejected Order Reason: Risk Pre Market Not Allowed (0x002D)"
  end
  if value == 0x002E then
    return "Rejected Order Reason: Risk Post Market Not Allowed (0x002E)"
  end
  if value == 0x002F then
    return "Rejected Order Reason: Risk Short Sell Exempt Not Allowed (0x002F)"
  end
  if value == 0x0030 then
    return "Rejected Order Reason: Risk Single Order Notional Exceeded (0x0030)"
  end
  if value == 0x0031 then
    return "Rejected Order Reason: Risk Max Quantity Exceeded (0x0031)"
  end
  if value == 0x0032 then
    return "Rejected Order Reason: Reg Sho State Not Available (0x0032)"
  end
  if value == 0x0033 then
    return "Rejected Order Reason: Risk Ipo Market Buy Not Allowed (0x0033)"
  end
  if value == 0x0040 then
    return "Rejected Order Reason: Invalid Aiq (0x0040)"
  end

  return "Rejected Order Reason: Unknown("..string.format("0x%04X", value)..")"
end

-- Dissect: Rejected Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_reason, range, value, display)

  return offset + length, value
end

-- Replace Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field = {}

-- Size: Replace Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.size = 1

-- Display: Replace Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.labels = {
  [3] = "Replace Order Optional Field: MinQty (3)",
  [5] = "Replace Order Optional Field: MaxFloor (5)",
  [6] = "Replace Order Optional Field: PriceType (6)",
  [12] = "Replace Order Optional Field: PostOnly (12)",
  [15] = "Replace Order Optional Field: ExpireTime (15)",
  [16] = "Replace Order Optional Field: TradeNow (16)",
  [17] = "Replace Order Optional Field: HandleInst (17)",
  [13] = "Replace Order Optional Field: RandomReserves (13)",
  [7] = "Replace Order Optional Field: PegOffset (7)",
  [9] = "Replace Order Optional Field: DiscretionPrice (9)",
  [10] = "Replace Order Optional Field: DiscretionPriceType (10)",
  [11] = "Replace Order Optional Field: DiscretionPegOffset (11)",
  [25] = "Replace Order Optional Field: Shares Located (25)",
  [26] = "Replace Order Optional Field: Locate Broker (26)",
  [28] = "Replace Order Optional Field: UserRefIdx (28)",
  [27] = "Replace Order Optional Field: Side (27)",
  [29] = "Replace Order Optional Field: AIQ Strategy (29)",
  [30] = "Replace Order Optional Field: AIQ Group ID (30)",
}

nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.labels[value] or "Replace Order Optional Field: Unknown("..value..")"
end

-- Dissect: Replace Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_optional_field, range, value, display)

  return offset + length, value
end

-- Replaced Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field = {}

-- Size: Replaced Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.size = 1

-- Display: Replaced Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.labels = {
  [2] = "Replaced Message Optional Field: Firm (2)",
  [3] = "Replaced Message Optional Field: MinQty (3)",
  [5] = "Replaced Message Optional Field: MaxFloor (5)",
  [6] = "Replaced Message Optional Field: PriceType (6)",
  [12] = "Replaced Message Optional Field: PostOnly (12)",
  [15] = "Replaced Message Optional Field: ExpireTime (15)",
  [16] = "Replaced Message Optional Field: TradeNow (16)",
  [17] = "Replaced Message Optional Field: HandleInst (17)",
  [18] = "Replaced Message Optional Field: BBO Weight Indicator (18)",
  [28] = "Replaced Message Optional Field: UserRefIdx (28)",
  [29] = "Replaced Message Optional Field: AIQ Strategy (29)",
  [30] = "Replaced Message Optional Field: AIQ Group ID (30)",
}

nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.labels[value] or "Replaced Message Optional Field: Unknown("..value..")"
end

-- Dissect: Replaced Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message_optional_field, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_orders_ouch_v5_0.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nsmequities_orders_ouch_v5_0.requested_session = {}

-- Size: Requested Session
nasdaq_nsmequities_orders_ouch_v5_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_nsmequities_orders_ouch_v5_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nsmequities_orders_ouch_v5_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Route
nasdaq_nsmequities_orders_ouch_v5_0.route = {}

-- Size: Route
nasdaq_nsmequities_orders_ouch_v5_0.route.size = 4

-- Display: Route
nasdaq_nsmequities_orders_ouch_v5_0.route.display = function(value)
  return "Route: "..value
end

-- Dissect: Route
nasdaq_nsmequities_orders_ouch_v5_0.route.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.route.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.route.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.route, range, value, display)

  return offset + length, value
end

-- Secondary Ord Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num = {}

-- Size: Secondary Ord Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.size = 8

-- Display: Secondary Ord Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.display = function(value)
  return "Secondary Ord Ref Num: "..value
end

-- Dissect: Secondary Ord Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.secondary_ord_ref_num, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.labels = {
  ["S"] = "Sequenced Message Type: System Event Message (S)",
  ["A"] = "Sequenced Message Type: Order Accepted Message (A)",
  ["U"] = "Sequenced Message Type: Replaced Message (U)",
  ["C"] = "Sequenced Message Type: Canceled Message (C)",
  ["D"] = "Sequenced Message Type: Aiq Canceled Message (D)",
  ["E"] = "Sequenced Message Type: Order Executed Message (E)",
  ["B"] = "Sequenced Message Type: Broken Trade Message (B)",
  ["J"] = "Sequenced Message Type: Rejected Order Message (J)",
  ["P"] = "Sequenced Message Type: Cancel Pending Message (P)",
  ["I"] = "Sequenced Message Type: Cancel Reject Message (I)",
  ["T"] = "Sequenced Message Type: Order Priority Update Message (T)",
  ["M"] = "Sequenced Message Type: Order Modified Message (M)",
  ["R"] = "Sequenced Message Type: Order Restated Message (R)",
  ["Q"] = "Sequenced Message Type: Account Query Response Message (Q)",
  ["X"] = "Sequenced Message Type: Mass Cancel Response Message (X)",
  ["G"] = "Sequenced Message Type: Disable Order Entry Response Message (G)",
  ["K"] = "Sequenced Message Type: Enable Order Entry Response Message (K)",
}

nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

nasdaq_nsmequities_orders_ouch_v5_0.server_packet_type.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Shares Located
nasdaq_nsmequities_orders_ouch_v5_0.shares_located = {}

-- Size: Shares Located
nasdaq_nsmequities_orders_ouch_v5_0.shares_located.size = 1

-- Display: Shares Located
nasdaq_nsmequities_orders_ouch_v5_0.shares_located.labels = {
  ["Y"] = "Shares Located: Yes (Y)",
  ["N"] = "Shares Located: No (N)",
}

nasdaq_nsmequities_orders_ouch_v5_0.shares_located.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.shares_located.labels[value] or "Shares Located: Unknown("..value..")"
end

-- Dissect: Shares Located
nasdaq_nsmequities_orders_ouch_v5_0.shares_located.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.shares_located.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.shares_located.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.shares_located, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_nsmequities_orders_ouch_v5_0.side = {}

-- Size: Side
nasdaq_nsmequities_orders_ouch_v5_0.side.size = 1

-- Display: Side
nasdaq_nsmequities_orders_ouch_v5_0.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
  ["T"] = "Side: Sell Short (T)",
  ["E"] = "Side: Sell Short Exempt (E)",
}

nasdaq_nsmequities_orders_ouch_v5_0.side.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_nsmequities_orders_ouch_v5_0.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nsmequities_orders_ouch_v5_0.symbol = {}

-- Size: Symbol
nasdaq_nsmequities_orders_ouch_v5_0.symbol.size = 8

-- Display: Symbol
nasdaq_nsmequities_orders_ouch_v5_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nsmequities_orders_ouch_v5_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_nsmequities_orders_ouch_v5_0.time_in_force = {}

-- Size: Time In Force
nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.size = 1

-- Display: Time In Force
nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.labels = {
  ["0"] = "Time In Force: Day (0)",
  ["3"] = "Time In Force: Ioc (3)",
  ["5"] = "Time In Force: Gtx Extended Hours (5)",
  ["6"] = "Time In Force: Gtt (6)",
  ["E"] = "Time In Force: After Hours (E)",
}

nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_orders_ouch_v5_0.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size = 8

-- Display: Timestamp
nasdaq_nsmequities_orders_ouch_v5_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nsmequities_orders_ouch_v5_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_orders_ouch_v5_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_orders_ouch_v5_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Now
nasdaq_nsmequities_orders_ouch_v5_0.trade_now = {}

-- Size: Trade Now
nasdaq_nsmequities_orders_ouch_v5_0.trade_now.size = 1

-- Display: Trade Now
nasdaq_nsmequities_orders_ouch_v5_0.trade_now.labels = {
  ["Y"] = "Trade Now: Yes (Y)",
  ["N"] = "Trade Now: No (N)",
}

nasdaq_nsmequities_orders_ouch_v5_0.trade_now.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.trade_now.labels[value] or "Trade Now: Unknown("..value..")"
end

-- Dissect: Trade Now
nasdaq_nsmequities_orders_ouch_v5_0.trade_now.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.trade_now.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.trade_now.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.trade_now, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.labels = {
  ["O"] = "Unsequenced Message Type: Enter Order Message (O)",
  ["U"] = "Unsequenced Message Type: Replace Order Message (U)",
  ["X"] = "Unsequenced Message Type: Cancel Order Message (X)",
  ["M"] = "Unsequenced Message Type: Modify Order Message (M)",
  ["Q"] = "Unsequenced Message Type: Account Query Message (Q)",
  ["C"] = "Unsequenced Message Type: Mass Cancel Request Message (C)",
  ["D"] = "Unsequenced Message Type: Disable Order Entry Request Message (D)",
  ["E"] = "Unsequenced Message Type: Enable Order Entry Request Message (E)",
}

nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.display = function(value)
  return nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- User Ref Idx
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx = {}

-- Size: User Ref Idx
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.size = 1

-- Display: User Ref Idx
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.display = function(value)
  return "User Ref Idx: "..value
end

-- Dissect: User Ref Idx
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.user_ref_idx, range, value, display)

  return offset + length, value
end

-- User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num = {}

-- Size: User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size = 4

-- Display: User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.display = function(value)
  return "User Ref Num: "..value
end

-- Dissect: User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.user_ref_num, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nsmequities_orders_ouch_v5_0.username = {}

-- Size: Username
nasdaq_nsmequities_orders_ouch_v5_0.username.size = 6

-- Display: Username
nasdaq_nsmequities_orders_ouch_v5_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nsmequities_orders_ouch_v5_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities Orders Ouch 5.0
-----------------------------------------------------------------------

-- End Of Session
nasdaq_nsmequities_orders_ouch_v5_0.end_of_session = {}

-- Display: End Of Session
nasdaq_nsmequities_orders_ouch_v5_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nsmequities_orders_ouch_v5_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_nsmequities_orders_ouch_v5_0.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_nsmequities_orders_ouch_v5_0.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_nsmequities_orders_ouch_v5_0.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Enable Order Entry Response Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_value = {}

-- Dissect: Enable Order Entry Response Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_value.dissect = function(buffer, offset, packet, parent, enable_order_entry_response_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_value.dispatch[enable_order_entry_response_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Enable Order Entry Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_appendage = {}

-- Display: Enable Order Entry Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enable Order Entry Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_appendage.fields = function(buffer, offset, packet, parent, size_of_enable_order_entry_response_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Enable Order Entry Response Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, enable_order_entry_response_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_field.dissect(buffer, index, packet, parent)

  -- Enable Order Entry Response Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_optional_value.dissect(buffer, index, packet, parent, enable_order_entry_response_optional_field)

  return index
end

-- Dissect: Enable Order Entry Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_appendage.dissect = function(buffer, offset, packet, parent, size_of_enable_order_entry_response_appendage)
  local index = offset + size_of_enable_order_entry_response_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_response_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_appendage.fields(buffer, offset, packet, parent, size_of_enable_order_entry_response_appendage)
    parent:set_len(size_of_enable_order_entry_response_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_appendage.fields(buffer, offset, packet, parent, size_of_enable_order_entry_response_appendage)

    return index
  end
end

-- Enable Order Entry Response Message
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_message = {}

-- Size: Enable Order Entry Response Message
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Enable Order Entry Response Message
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enable Order Entry Response Message
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Enable Order Entry Response Appendage
  local end_of_payload = appendage_length + index

  -- Enable Order Entry Response Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Enable Order Entry Response Appendage
    local size_of_enable_order_entry_response_appendage = optional_field_length + 1

    -- Enable Order Entry Response Appendage: Struct of 3 fields
    index, enable_order_entry_response_appendage = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_appendage.dissect(buffer, index, packet, parent, size_of_enable_order_entry_response_appendage)
  end

  return index
end

-- Dissect: Enable Order Entry Response Message
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_response_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Disable Order Entry Response Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_value = {}

-- Dissect: Disable Order Entry Response Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_value.dissect = function(buffer, offset, packet, parent, disable_order_entry_response_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_value.dispatch[disable_order_entry_response_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Disable Order Entry Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_appendage = {}

-- Display: Disable Order Entry Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disable Order Entry Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_appendage.fields = function(buffer, offset, packet, parent, size_of_disable_order_entry_response_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Disable Order Entry Response Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, disable_order_entry_response_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_field.dissect(buffer, index, packet, parent)

  -- Disable Order Entry Response Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_optional_value.dissect(buffer, index, packet, parent, disable_order_entry_response_optional_field)

  return index
end

-- Dissect: Disable Order Entry Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_appendage.dissect = function(buffer, offset, packet, parent, size_of_disable_order_entry_response_appendage)
  local index = offset + size_of_disable_order_entry_response_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_response_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_appendage.fields(buffer, offset, packet, parent, size_of_disable_order_entry_response_appendage)
    parent:set_len(size_of_disable_order_entry_response_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_appendage.fields(buffer, offset, packet, parent, size_of_disable_order_entry_response_appendage)

    return index
  end
end

-- Disable Order Entry Response Message
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_message = {}

-- Size: Disable Order Entry Response Message
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Disable Order Entry Response Message
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disable Order Entry Response Message
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Disable Order Entry Response Appendage
  local end_of_payload = appendage_length + index

  -- Disable Order Entry Response Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Disable Order Entry Response Appendage
    local size_of_disable_order_entry_response_appendage = optional_field_length + 1

    -- Disable Order Entry Response Appendage: Struct of 3 fields
    index, disable_order_entry_response_appendage = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_appendage.dissect(buffer, index, packet, parent, size_of_disable_order_entry_response_appendage)
  end

  return index
end

-- Dissect: Disable Order Entry Response Message
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_response_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Response Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_value = {}

-- Dissect: Mass Cancel Response Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_value.dispatch = {
  [27] = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect,
  [24] = nasdaq_nsmequities_orders_ouch_v5_0.group_id.dissect,
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_value.dissect = function(buffer, offset, packet, parent, mass_cancel_response_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_value.dispatch[mass_cancel_response_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mass Cancel Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_appendage = {}

-- Display: Mass Cancel Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_appendage.fields = function(buffer, offset, packet, parent, size_of_mass_cancel_response_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Mass Cancel Response Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_cancel_response_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_field.dissect(buffer, index, packet, parent)

  -- Mass Cancel Response Optional Value: Runtime Type with 3 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_optional_value.dissect(buffer, index, packet, parent, mass_cancel_response_optional_field)

  return index
end

-- Dissect: Mass Cancel Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_appendage.dissect = function(buffer, offset, packet, parent, size_of_mass_cancel_response_appendage)
  local index = offset + size_of_mass_cancel_response_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_response_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_appendage.fields(buffer, offset, packet, parent, size_of_mass_cancel_response_appendage)
    parent:set_len(size_of_mass_cancel_response_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_appendage.fields(buffer, offset, packet, parent, size_of_mass_cancel_response_appendage)

    return index
  end
end

-- Mass Cancel Response Message
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_message = {}

-- Size: Mass Cancel Response Message
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Mass Cancel Response Message
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Response Message
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_orders_ouch_v5_0.symbol.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Mass Cancel Response Appendage
  local end_of_payload = appendage_length + index

  -- Mass Cancel Response Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Mass Cancel Response Appendage
    local size_of_mass_cancel_response_appendage = optional_field_length + 1

    -- Mass Cancel Response Appendage: Struct of 3 fields
    index, mass_cancel_response_appendage = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_appendage.dissect(buffer, index, packet, parent, size_of_mass_cancel_response_appendage)
  end

  return index
end

-- Dissect: Mass Cancel Response Message
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_response_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Account Query Response Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_value = {}

-- Dissect: Account Query Response Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_value.dissect = function(buffer, offset, packet, parent, account_query_response_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_value.dispatch[account_query_response_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Account Query Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_appendage = {}

-- Display: Account Query Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_appendage.fields = function(buffer, offset, packet, parent, size_of_account_query_response_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Account Query Response Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, account_query_response_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_field.dissect(buffer, index, packet, parent)

  -- Account Query Response Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_optional_value.dissect(buffer, index, packet, parent, account_query_response_optional_field)

  return index
end

-- Dissect: Account Query Response Appendage
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_appendage.dissect = function(buffer, offset, packet, parent, size_of_account_query_response_appendage)
  local index = offset + size_of_account_query_response_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_response_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_appendage.fields(buffer, offset, packet, parent, size_of_account_query_response_appendage)
    parent:set_len(size_of_account_query_response_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_appendage.fields(buffer, offset, packet, parent, size_of_account_query_response_appendage)

    return index
  end
end

-- Account Query Response Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message = {}

-- Size: Account Query Response Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Account Query Response Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Response Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Next User Ref Num: UserRefNum
  index, next_user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
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
    index, account_query_response_appendage = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_appendage.dissect(buffer, index, packet, parent, size_of_account_query_response_appendage)
  end

  return index
end

-- Dissect: Account Query Response Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_response_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Restated Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value = {}

-- Dissect: Order Restated Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.dispatch = {
  [22] = nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.dissect,
  [23] = nasdaq_nsmequities_orders_ouch_v5_0.display_price.dissect,
  [1] = nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.dissect,
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.dissect = function(buffer, offset, packet, parent, order_restated_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.dispatch[order_restated_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Restated Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage = {}

-- Display: Order Restated Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.fields = function(buffer, offset, packet, parent, size_of_order_restated_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Restated Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_restated_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.dissect(buffer, index, packet, parent)

  -- Order Restated Optional Value: Runtime Type with 4 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.dissect(buffer, index, packet, parent, order_restated_optional_field)

  return index
end

-- Dissect: Order Restated Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_restated_appendage)
  local index = offset + size_of_order_restated_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.fields(buffer, offset, packet, parent, size_of_order_restated_appendage)
    parent:set_len(size_of_order_restated_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.fields(buffer, offset, packet, parent, size_of_order_restated_appendage)

    return index
  end
end

-- Order Restated Message
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message = {}

-- Size: Order Restated Message
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Restated Message
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Restated Reason: Alpha
  index, order_restated_reason = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

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
    index, order_restated_appendage = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.dissect(buffer, index, packet, parent, size_of_order_restated_appendage)
  end

  return index
end

-- Dissect: Order Restated Message
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_value = {}

-- Dissect: Order Modified Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
  [25] = nasdaq_nsmequities_orders_ouch_v5_0.shares_located.dissect,
  [26] = nasdaq_nsmequities_orders_ouch_v5_0.locate_broker.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_value.dissect = function(buffer, offset, packet, parent, order_modified_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_value.dispatch[order_modified_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Modified Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_appendage = {}

-- Display: Order Modified Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_appendage.fields = function(buffer, offset, packet, parent, size_of_order_modified_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Modified Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_modified_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_field.dissect(buffer, index, packet, parent)

  -- Order Modified Optional Value: Runtime Type with 3 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_optional_value.dissect(buffer, index, packet, parent, order_modified_optional_field)

  return index
end

-- Dissect: Order Modified Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_modified_appendage)
  local index = offset + size_of_order_modified_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_modified_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_appendage.fields(buffer, offset, packet, parent, size_of_order_modified_appendage)
    parent:set_len(size_of_order_modified_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.order_modified_appendage.fields(buffer, offset, packet, parent, size_of_order_modified_appendage)

    return index
  end
end

-- Order Modified Message
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message = {}

-- Size: Order Modified Message
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Modified Message
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Order Modified Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Order Modified Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Order Modified Appendage
    local size_of_order_modified_appendage = optional_field_length + 1

    -- Order Modified Appendage: Struct of 3 fields
    index, order_modified_appendage = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_appendage.dissect(buffer, index, packet, parent, size_of_order_modified_appendage)
  end

  return index
end

-- Dissect: Order Modified Message
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_modified_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Priority Update Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_value = {}

-- Dissect: Order Priority Update Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_value.dissect = function(buffer, offset, packet, parent, order_priority_update_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_value.dispatch[order_priority_update_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Priority Update Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_appendage = {}

-- Display: Order Priority Update Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Priority Update Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_appendage.fields = function(buffer, offset, packet, parent, size_of_order_priority_update_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Priority Update Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_priority_update_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_field.dissect(buffer, index, packet, parent)

  -- Order Priority Update Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_optional_value.dissect(buffer, index, packet, parent, order_priority_update_optional_field)

  return index
end

-- Dissect: Order Priority Update Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_priority_update_appendage)
  local index = offset + size_of_order_priority_update_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_priority_update_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_appendage.fields(buffer, offset, packet, parent, size_of_order_priority_update_appendage)
    parent:set_len(size_of_order_priority_update_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_appendage.fields(buffer, offset, packet, parent, size_of_order_priority_update_appendage)

    return index
  end
end

-- Order Priority Update Message
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message = {}

-- Size: Order Priority Update Message
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Priority Update Message
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Priority Update Message
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_orders_ouch_v5_0.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Order Priority Update Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Order Priority Update Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Order Priority Update Appendage
    local size_of_order_priority_update_appendage = optional_field_length + 1

    -- Order Priority Update Appendage: Struct of 3 fields
    index, order_priority_update_appendage = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_appendage.dissect(buffer, index, packet, parent, size_of_order_priority_update_appendage)
  end

  return index
end

-- Dissect: Order Priority Update Message
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_priority_update_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reject Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_value = {}

-- Dissect: Cancel Reject Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_value.dissect = function(buffer, offset, packet, parent, cancel_reject_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_value.dispatch[cancel_reject_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Cancel Reject Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_appendage = {}

-- Display: Cancel Reject Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reject Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_appendage.fields = function(buffer, offset, packet, parent, size_of_cancel_reject_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Cancel Reject Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, cancel_reject_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_field.dissect(buffer, index, packet, parent)

  -- Cancel Reject Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_optional_value.dissect(buffer, index, packet, parent, cancel_reject_optional_field)

  return index
end

-- Dissect: Cancel Reject Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_appendage.dissect = function(buffer, offset, packet, parent, size_of_cancel_reject_appendage)
  local index = offset + size_of_cancel_reject_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_reject_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_appendage.fields(buffer, offset, packet, parent, size_of_cancel_reject_appendage)
    parent:set_len(size_of_cancel_reject_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_appendage.fields(buffer, offset, packet, parent, size_of_cancel_reject_appendage)

    return index
  end
end

-- Cancel Reject Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message = {}

-- Size: Cancel Reject Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Cancel Reject Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reject Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Cancel Reject Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Cancel Reject Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Cancel Reject Appendage
    local size_of_cancel_reject_appendage = optional_field_length + 1

    -- Cancel Reject Appendage: Struct of 3 fields
    index, cancel_reject_appendage = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_appendage.dissect(buffer, index, packet, parent, size_of_cancel_reject_appendage)
  end

  return index
end

-- Dissect: Cancel Reject Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_reject_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Pending Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_value = {}

-- Dissect: Cancel Pending Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_value.dissect = function(buffer, offset, packet, parent, cancel_pending_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_value.dispatch[cancel_pending_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Cancel Pending Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_appendage = {}

-- Display: Cancel Pending Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Pending Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_appendage.fields = function(buffer, offset, packet, parent, size_of_cancel_pending_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Cancel Pending Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, cancel_pending_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_field.dissect(buffer, index, packet, parent)

  -- Cancel Pending Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_optional_value.dissect(buffer, index, packet, parent, cancel_pending_optional_field)

  return index
end

-- Dissect: Cancel Pending Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_appendage.dissect = function(buffer, offset, packet, parent, size_of_cancel_pending_appendage)
  local index = offset + size_of_cancel_pending_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_pending_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_appendage.fields(buffer, offset, packet, parent, size_of_cancel_pending_appendage)
    parent:set_len(size_of_cancel_pending_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_appendage.fields(buffer, offset, packet, parent, size_of_cancel_pending_appendage)

    return index
  end
end

-- Cancel Pending Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message = {}

-- Size: Cancel Pending Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Cancel Pending Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Pending Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Cancel Pending Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Cancel Pending Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Cancel Pending Appendage
    local size_of_cancel_pending_appendage = optional_field_length + 1

    -- Cancel Pending Appendage: Struct of 3 fields
    index, cancel_pending_appendage = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_appendage.dissect(buffer, index, packet, parent, size_of_cancel_pending_appendage)
  end

  return index
end

-- Dissect: Cancel Pending Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_pending_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejected Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_value = {}

-- Dissect: Rejected Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_value.dissect = function(buffer, offset, packet, parent, rejected_order_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_value.dispatch[rejected_order_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Rejected Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_appendage = {}

-- Display: Rejected Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_appendage.fields = function(buffer, offset, packet, parent, size_of_rejected_order_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Rejected Order Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, rejected_order_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_field.dissect(buffer, index, packet, parent)

  -- Rejected Order Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_optional_value.dissect(buffer, index, packet, parent, rejected_order_optional_field)

  return index
end

-- Dissect: Rejected Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_appendage.dissect = function(buffer, offset, packet, parent, size_of_rejected_order_appendage)
  local index = offset + size_of_rejected_order_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_appendage.fields(buffer, offset, packet, parent, size_of_rejected_order_appendage)
    parent:set_len(size_of_rejected_order_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_appendage.fields(buffer, offset, packet, parent, size_of_rejected_order_appendage)

    return index
  end
end

-- Rejected Order Message
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message = {}

-- Size: Rejected Order Message
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Rejected Order Message
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Order Message
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Rejected Order Reason: Numeric
  index, rejected_order_reason = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.dissect(buffer, index, packet, parent)

  -- ClOrdId: Alpha
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Rejected Order Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Rejected Order Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Rejected Order Appendage
    local size_of_rejected_order_appendage = optional_field_length + 1

    -- Rejected Order Appendage: Struct of 3 fields
    index, rejected_order_appendage = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_appendage.dissect(buffer, index, packet, parent, size_of_rejected_order_appendage)
  end

  return index
end

-- Dissect: Rejected Order Message
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_value = {}

-- Dissect: Broken Trade Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_value.dissect = function(buffer, offset, packet, parent, broken_trade_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_value.dispatch[broken_trade_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Broken Trade Appendage
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_appendage = {}

-- Display: Broken Trade Appendage
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Appendage
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_appendage.fields = function(buffer, offset, packet, parent, size_of_broken_trade_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Broken Trade Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, broken_trade_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_field.dissect(buffer, index, packet, parent)

  -- Broken Trade Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_optional_value.dissect(buffer, index, packet, parent, broken_trade_optional_field)

  return index
end

-- Dissect: Broken Trade Appendage
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_appendage.dissect = function(buffer, offset, packet, parent, size_of_broken_trade_appendage)
  local index = offset + size_of_broken_trade_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_appendage.fields(buffer, offset, packet, parent, size_of_broken_trade_appendage)
    parent:set_len(size_of_broken_trade_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_appendage.fields(buffer, offset, packet, parent, size_of_broken_trade_appendage)

    return index
  end
end

-- Broken Trade Message
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Broken Trade Message
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_orders_ouch_v5_0.match_number.dissect(buffer, index, packet, parent)

  -- Broken Trade Reason: Alpha
  index, broken_trade_reason = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.dissect(buffer, index, packet, parent)

  -- ClOrdId: Alpha
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Broken Trade Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Broken Trade Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Broken Trade Appendage
    local size_of_broken_trade_appendage = optional_field_length + 1

    -- Broken Trade Appendage: Struct of 3 fields
    index, broken_trade_appendage = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_appendage.dissect(buffer, index, packet, parent, size_of_broken_trade_appendage)
  end

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value = {}

-- Dissect: Order Executed Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.dissect = function(buffer, offset, packet, parent, order_executed_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.dispatch[order_executed_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Executed Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage = {}

-- Display: Order Executed Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.fields = function(buffer, offset, packet, parent, size_of_order_executed_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Executed Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_executed_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.dissect(buffer, index, packet, parent)

  -- Order Executed Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.dissect(buffer, index, packet, parent, order_executed_optional_field)

  return index
end

-- Dissect: Order Executed Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_executed_appendage)
  local index = offset + size_of_order_executed_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.fields(buffer, offset, packet, parent, size_of_order_executed_appendage)
    parent:set_len(size_of_order_executed_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.fields(buffer, offset, packet, parent, size_of_order_executed_appendage)

    return index
  end
end

-- Order Executed Message
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Executed Message
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_orders_ouch_v5_0.match_number.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

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
    index, order_executed_appendage = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.dissect(buffer, index, packet, parent, size_of_order_executed_appendage)
  end

  return index
end

-- Dissect: Order Executed Message
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Aiq Canceled Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_value = {}

-- Dissect: Aiq Canceled Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_value.dissect = function(buffer, offset, packet, parent, aiq_canceled_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_value.dispatch[aiq_canceled_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Aiq Canceled Appendage
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_appendage = {}

-- Display: Aiq Canceled Appendage
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aiq Canceled Appendage
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_appendage.fields = function(buffer, offset, packet, parent, size_of_aiq_canceled_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Aiq Canceled Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, aiq_canceled_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_field.dissect(buffer, index, packet, parent)

  -- Aiq Canceled Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_optional_value.dissect(buffer, index, packet, parent, aiq_canceled_optional_field)

  return index
end

-- Dissect: Aiq Canceled Appendage
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_appendage.dissect = function(buffer, offset, packet, parent, size_of_aiq_canceled_appendage)
  local index = offset + size_of_aiq_canceled_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_canceled_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_appendage.fields(buffer, offset, packet, parent, size_of_aiq_canceled_appendage)
    parent:set_len(size_of_aiq_canceled_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_appendage.fields(buffer, offset, packet, parent, size_of_aiq_canceled_appendage)

    return index
  end
end

-- Aiq Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message = {}

-- Size: Aiq Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Aiq Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aiq Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Decrement Shares: Numeric
  index, decrement_shares = nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.dissect(buffer, index, packet, parent)

  -- Order Cancel Reason: Alpha
  index, order_cancel_reason = nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.dissect(buffer, index, packet, parent)

  -- Quantity Prevented From Trading: Integer
  index, quantity_prevented_from_trading = nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.dissect(buffer, index, packet, parent)

  -- Execution Price: Price
  index, execution_price = nasdaq_nsmequities_orders_ouch_v5_0.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Aiq Strategy: Alpha
  index, aiq_strategy = nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Aiq Canceled Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Aiq Canceled Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Aiq Canceled Appendage
    local size_of_aiq_canceled_appendage = optional_field_length + 1

    -- Aiq Canceled Appendage: Struct of 3 fields
    index, aiq_canceled_appendage = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_appendage.dissect(buffer, index, packet, parent, size_of_aiq_canceled_appendage)
  end

  return index
end

-- Dissect: Aiq Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_canceled_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Message Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_value = {}

-- Dissect: Canceled Message Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_value.dissect = function(buffer, offset, packet, parent, canceled_message_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_value.dispatch[canceled_message_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Canceled Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_appendage = {}

-- Display: Canceled Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Canceled Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_appendage.fields = function(buffer, offset, packet, parent, size_of_canceled_message_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Canceled Message Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, canceled_message_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_field.dissect(buffer, index, packet, parent)

  -- Canceled Message Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_optional_value.dissect(buffer, index, packet, parent, canceled_message_optional_field)

  return index
end

-- Dissect: Canceled Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_appendage.dissect = function(buffer, offset, packet, parent, size_of_canceled_message_appendage)
  local index = offset + size_of_canceled_message_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.canceled_message_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_appendage.fields(buffer, offset, packet, parent, size_of_canceled_message_appendage)
    parent:set_len(size_of_canceled_message_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_appendage.fields(buffer, offset, packet, parent, size_of_canceled_message_appendage)

    return index
  end
end

-- Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message = {}

-- Size: Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Cancel Order Reason: Alpha
  index, cancel_order_reason = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Canceled Message Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Canceled Message Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Canceled Message Appendage
    local size_of_canceled_message_appendage = optional_field_length + 1

    -- Canceled Message Appendage: Struct of 3 fields
    index, canceled_message_appendage = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message_appendage.dissect(buffer, index, packet, parent, size_of_canceled_message_appendage)
  end

  return index
end

-- Dissect: Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.canceled_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Replaced Message Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value = {}

-- Dissect: Replaced Message Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.dispatch = {
  [2] = nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect,
  [3] = nasdaq_nsmequities_orders_ouch_v5_0.min_qty.dissect,
  [5] = nasdaq_nsmequities_orders_ouch_v5_0.max_floor.dissect,
  [6] = nasdaq_nsmequities_orders_ouch_v5_0.price_type.dissect,
  [12] = nasdaq_nsmequities_orders_ouch_v5_0.post_only.dissect,
  [15] = nasdaq_nsmequities_orders_ouch_v5_0.expire_time.dissect,
  [16] = nasdaq_nsmequities_orders_ouch_v5_0.trade_now.dissect,
  [17] = nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.dissect,
  [18] = nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.dissect,
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
  [29] = nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.dissect,
  [30] = nasdaq_nsmequities_orders_ouch_v5_0.aiq_group_id.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.dissect = function(buffer, offset, packet, parent, replaced_message_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.dispatch[replaced_message_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Replaced Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage = {}

-- Display: Replaced Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replaced Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.fields = function(buffer, offset, packet, parent, size_of_replaced_message_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Replaced Message Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, replaced_message_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.dissect(buffer, index, packet, parent)

  -- Replaced Message Optional Value: Runtime Type with 12 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.dissect(buffer, index, packet, parent, replaced_message_optional_field)

  return index
end

-- Dissect: Replaced Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.dissect = function(buffer, offset, packet, parent, size_of_replaced_message_appendage)
  local index = offset + size_of_replaced_message_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.fields(buffer, offset, packet, parent, size_of_replaced_message_appendage)
    parent:set_len(size_of_replaced_message_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.fields(buffer, offset, packet, parent, size_of_replaced_message_appendage)

    return index
  end
end

-- Replaced Message
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message = {}

-- Size: Replaced Message
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Replaced Message
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replaced Message
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Orig User Ref Num: UserRefNum
  index, orig_user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_orders_ouch_v5_0.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_orders_ouch_v5_0.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_nsmequities_orders_ouch_v5_0.capacity.dissect(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: Alpha
  index, inter_market_sweep_eligibility = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_orders_ouch_v5_0.cross_type.dissect(buffer, index, packet, parent)

  -- Order State: Alpha
  index, order_state = nasdaq_nsmequities_orders_ouch_v5_0.order_state.dissect(buffer, index, packet, parent)

  -- ClOrdId: Alpha
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Replaced Message Appendage
  local end_of_payload = appendage_length + index

  -- Replaced Message Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Replaced Message Appendage
    local size_of_replaced_message_appendage = optional_field_length + 1

    -- Replaced Message Appendage: Struct of 3 fields
    index, replaced_message_appendage = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.dissect(buffer, index, packet, parent, size_of_replaced_message_appendage)
  end

  return index
end

-- Dissect: Replaced Message
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Accepted Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value = {}

-- Dissect: Order Accepted Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.dispatch = {
  [2] = nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect,
  [3] = nasdaq_nsmequities_orders_ouch_v5_0.min_qty.dissect,
  [4] = nasdaq_nsmequities_orders_ouch_v5_0.customer_type.dissect,
  [5] = nasdaq_nsmequities_orders_ouch_v5_0.max_floor.dissect,
  [6] = nasdaq_nsmequities_orders_ouch_v5_0.price_type.dissect,
  [7] = nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.dissect,
  [9] = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.dissect,
  [10] = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type.dissect,
  [11] = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.dissect,
  [12] = nasdaq_nsmequities_orders_ouch_v5_0.post_only.dissect,
  [13] = nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.dissect,
  [14] = nasdaq_nsmequities_orders_ouch_v5_0.route.dissect,
  [15] = nasdaq_nsmequities_orders_ouch_v5_0.expire_time.dissect,
  [16] = nasdaq_nsmequities_orders_ouch_v5_0.trade_now.dissect,
  [17] = nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.dissect,
  [18] = nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.dissect,
  [24] = nasdaq_nsmequities_orders_ouch_v5_0.group_id.dissect,
  [25] = nasdaq_nsmequities_orders_ouch_v5_0.shares_located.dissect,
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
  [29] = nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.dissect,
  [30] = nasdaq_nsmequities_orders_ouch_v5_0.aiq_group_id.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.dissect = function(buffer, offset, packet, parent, order_accepted_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.dispatch[order_accepted_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Accepted Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage = {}

-- Display: Order Accepted Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.fields = function(buffer, offset, packet, parent, size_of_order_accepted_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Accepted Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, order_accepted_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.dissect(buffer, index, packet, parent)

  -- Order Accepted Optional Value: Runtime Type with 21 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.dissect(buffer, index, packet, parent, order_accepted_optional_field)

  return index
end

-- Dissect: Order Accepted Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_accepted_appendage)
  local index = offset + size_of_order_accepted_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.fields(buffer, offset, packet, parent, size_of_order_accepted_appendage)
    parent:set_len(size_of_order_accepted_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.fields(buffer, offset, packet, parent, size_of_order_accepted_appendage)

    return index
  end
end

-- Order Accepted Message
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message = {}

-- Size: Order Accepted Message
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Accepted Message
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Message
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_orders_ouch_v5_0.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_orders_ouch_v5_0.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Numeric
  index, order_reference_number = nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_nsmequities_orders_ouch_v5_0.capacity.dissect(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: Alpha
  index, inter_market_sweep_eligibility = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_orders_ouch_v5_0.cross_type.dissect(buffer, index, packet, parent)

  -- Order State: Alpha
  index, order_state = nasdaq_nsmequities_orders_ouch_v5_0.order_state.dissect(buffer, index, packet, parent)

  -- ClOrdId: Alpha
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

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
    index, order_accepted_appendage = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.dissect(buffer, index, packet, parent, size_of_order_accepted_appendage)
  end

  return index
end

-- Dissect: Order Accepted Message
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_orders_ouch_v5_0.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_orders_ouch_v5_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.dispatch = {
  ["S"] = nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.dissect,
  ["A"] = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.dissect,
  ["U"] = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.dissect,
  ["C"] = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.dissect,
  ["D"] = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.dissect,
  ["E"] = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.dissect,
  ["B"] = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.dissect,
  ["J"] = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.dissect,
  ["P"] = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.dissect,
  ["I"] = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.dissect,
  ["T"] = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.dissect,
  ["M"] = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.dissect,
  ["R"] = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.dissect,
  ["Q"] = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.dissect,
  ["X"] = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_response_message.dissect,
  ["G"] = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_response_message.dissect,
  ["K"] = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_response_message.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_nsmequities_orders_ouch_v5_0.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_nsmequities_orders_ouch_v5_0.stream_frame ~= packet.number or nasdaq_nsmequities_orders_ouch_v5_0.stream_occurrence >= #memo then
          nasdaq_nsmequities_orders_ouch_v5_0.stream_frame = packet.number
          nasdaq_nsmequities_orders_ouch_v5_0.stream_occurrence = 0
        end
        nasdaq_nsmequities_orders_ouch_v5_0.stream_occurrence = nasdaq_nsmequities_orders_ouch_v5_0.stream_occurrence + 1
        local value = memo[nasdaq_nsmequities_orders_ouch_v5_0.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 17 values
  index, sequenced_message_type = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 17 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.size =
  nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.size =
  nasdaq_nsmequities_orders_ouch_v5_0.accepted_session.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_nsmequities_orders_ouch_v5_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_nsmequities_orders_ouch_v5_0.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nsmequities_orders_ouch_v5_0.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_nsmequities_orders_ouch_v5_0.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nsmequities_orders_ouch_v5_0.server_payload = {}

-- Dissect: Server Payload
nasdaq_nsmequities_orders_ouch_v5_0.server_payload.dispatch = {
  ["+"] = nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.dissect,
  ["A"] = nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.dissect,
  ["J"] = nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.dissect,
  ["S"] = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.dissect,
  ["H"] = nasdaq_nsmequities_orders_ouch_v5_0.server_heartbeat.dissect,
  ["Z"] = nasdaq_nsmequities_orders_ouch_v5_0.end_of_session.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header.size =
  nasdaq_nsmequities_orders_ouch_v5_0.packet_length.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nsmequities_orders_ouch_v5_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_nsmequities_orders_ouch_v5_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header.size then
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
nasdaq_nsmequities_orders_ouch_v5_0.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_orders_ouch_v5_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_orders_ouch_v5_0.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nsmequities_orders_ouch_v5_0.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nsmequities_orders_ouch_v5_0.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_nsmequities_orders_ouch_v5_0.conversation.current = data

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
      index = nasdaq_nsmequities_orders_ouch_v5_0.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
nasdaq_nsmequities_orders_ouch_v5_0.logout_request = {}

-- Display: Logout Request
nasdaq_nsmequities_orders_ouch_v5_0.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_nsmequities_orders_ouch_v5_0.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_nsmequities_orders_ouch_v5_0.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_nsmequities_orders_ouch_v5_0.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_nsmequities_orders_ouch_v5_0.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Enable Order Entry Request Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_value = {}

-- Dissect: Enable Order Entry Request Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_value.dissect = function(buffer, offset, packet, parent, enable_order_entry_request_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_value.dispatch[enable_order_entry_request_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Enable Order Entry Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_appendage = {}

-- Display: Enable Order Entry Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enable Order Entry Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_appendage.fields = function(buffer, offset, packet, parent, size_of_enable_order_entry_request_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Enable Order Entry Request Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, enable_order_entry_request_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_field.dissect(buffer, index, packet, parent)

  -- Enable Order Entry Request Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_optional_value.dissect(buffer, index, packet, parent, enable_order_entry_request_optional_field)

  return index
end

-- Dissect: Enable Order Entry Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_appendage.dissect = function(buffer, offset, packet, parent, size_of_enable_order_entry_request_appendage)
  local index = offset + size_of_enable_order_entry_request_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_request_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_appendage.fields(buffer, offset, packet, parent, size_of_enable_order_entry_request_appendage)
    parent:set_len(size_of_enable_order_entry_request_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_appendage.fields(buffer, offset, packet, parent, size_of_enable_order_entry_request_appendage)

    return index
  end
end

-- Enable Order Entry Request Message
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_message = {}

-- Size: Enable Order Entry Request Message
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Enable Order Entry Request Message
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enable Order Entry Request Message
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Enable Order Entry Request Appendage
  local end_of_payload = appendage_length + index

  -- Enable Order Entry Request Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Enable Order Entry Request Appendage
    local size_of_enable_order_entry_request_appendage = optional_field_length + 1

    -- Enable Order Entry Request Appendage: Struct of 3 fields
    index, enable_order_entry_request_appendage = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_appendage.dissect(buffer, index, packet, parent, size_of_enable_order_entry_request_appendage)
  end

  return index
end

-- Dissect: Enable Order Entry Request Message
nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enable_order_entry_request_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Disable Order Entry Request Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_value = {}

-- Dissect: Disable Order Entry Request Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_value.dissect = function(buffer, offset, packet, parent, disable_order_entry_request_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_value.dispatch[disable_order_entry_request_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Disable Order Entry Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_appendage = {}

-- Display: Disable Order Entry Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disable Order Entry Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_appendage.fields = function(buffer, offset, packet, parent, size_of_disable_order_entry_request_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Disable Order Entry Request Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, disable_order_entry_request_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_field.dissect(buffer, index, packet, parent)

  -- Disable Order Entry Request Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_optional_value.dissect(buffer, index, packet, parent, disable_order_entry_request_optional_field)

  return index
end

-- Dissect: Disable Order Entry Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_appendage.dissect = function(buffer, offset, packet, parent, size_of_disable_order_entry_request_appendage)
  local index = offset + size_of_disable_order_entry_request_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_request_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_appendage.fields(buffer, offset, packet, parent, size_of_disable_order_entry_request_appendage)
    parent:set_len(size_of_disable_order_entry_request_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_appendage.fields(buffer, offset, packet, parent, size_of_disable_order_entry_request_appendage)

    return index
  end
end

-- Disable Order Entry Request Message
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_message = {}

-- Size: Disable Order Entry Request Message
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Disable Order Entry Request Message
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disable Order Entry Request Message
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Disable Order Entry Request Appendage
  local end_of_payload = appendage_length + index

  -- Disable Order Entry Request Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Disable Order Entry Request Appendage
    local size_of_disable_order_entry_request_appendage = optional_field_length + 1

    -- Disable Order Entry Request Appendage: Struct of 3 fields
    index, disable_order_entry_request_appendage = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_appendage.dissect(buffer, index, packet, parent, size_of_disable_order_entry_request_appendage)
  end

  return index
end

-- Dissect: Disable Order Entry Request Message
nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.disable_order_entry_request_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Request Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_value = {}

-- Dissect: Mass Cancel Request Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_value.dispatch = {
  [27] = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect,
  [24] = nasdaq_nsmequities_orders_ouch_v5_0.group_id.dissect,
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_value.dissect = function(buffer, offset, packet, parent, mass_cancel_request_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_value.dispatch[mass_cancel_request_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mass Cancel Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_appendage = {}

-- Display: Mass Cancel Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_appendage.fields = function(buffer, offset, packet, parent, size_of_mass_cancel_request_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_cancel_request_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_field.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Optional Value: Runtime Type with 3 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_optional_value.dissect(buffer, index, packet, parent, mass_cancel_request_optional_field)

  return index
end

-- Dissect: Mass Cancel Request Appendage
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_appendage.dissect = function(buffer, offset, packet, parent, size_of_mass_cancel_request_appendage)
  local index = offset + size_of_mass_cancel_request_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_request_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_appendage.fields(buffer, offset, packet, parent, size_of_mass_cancel_request_appendage)
    parent:set_len(size_of_mass_cancel_request_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_appendage.fields(buffer, offset, packet, parent, size_of_mass_cancel_request_appendage)

    return index
  end
end

-- Mass Cancel Request Message
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_message = {}

-- Size: Mass Cancel Request Message
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Mass Cancel Request Message
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Firm: Alpha
  index, firm = nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_orders_ouch_v5_0.symbol.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Mass Cancel Request Appendage
  local end_of_payload = appendage_length + index

  -- Mass Cancel Request Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Mass Cancel Request Appendage
    local size_of_mass_cancel_request_appendage = optional_field_length + 1

    -- Mass Cancel Request Appendage: Struct of 3 fields
    index, mass_cancel_request_appendage = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_appendage.dissect(buffer, index, packet, parent, size_of_mass_cancel_request_appendage)
  end

  return index
end

-- Dissect: Mass Cancel Request Message
nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.mass_cancel_request_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Account Query Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_value = {}

-- Dissect: Account Query Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_value.dissect = function(buffer, offset, packet, parent, account_query_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_value.dispatch[account_query_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Account Query Appendage
nasdaq_nsmequities_orders_ouch_v5_0.account_query_appendage = {}

-- Display: Account Query Appendage
nasdaq_nsmequities_orders_ouch_v5_0.account_query_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Appendage
nasdaq_nsmequities_orders_ouch_v5_0.account_query_appendage.fields = function(buffer, offset, packet, parent, size_of_account_query_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Account Query Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, account_query_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_field.dissect(buffer, index, packet, parent)

  -- Account Query Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.account_query_optional_value.dissect(buffer, index, packet, parent, account_query_optional_field)

  return index
end

-- Dissect: Account Query Appendage
nasdaq_nsmequities_orders_ouch_v5_0.account_query_appendage.dissect = function(buffer, offset, packet, parent, size_of_account_query_appendage)
  local index = offset + size_of_account_query_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.account_query_appendage.fields(buffer, offset, packet, parent, size_of_account_query_appendage)
    parent:set_len(size_of_account_query_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.account_query_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.account_query_appendage.fields(buffer, offset, packet, parent, size_of_account_query_appendage)

    return index
  end
end

-- Account Query Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_message = {}

-- Size: Account Query Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Account Query Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Account Query Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Account Query Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Account Query Appendage
    local size_of_account_query_appendage = optional_field_length + 1

    -- Account Query Appendage: Struct of 3 fields
    index, account_query_appendage = nasdaq_nsmequities_orders_ouch_v5_0.account_query_appendage.dissect(buffer, index, packet, parent, size_of_account_query_appendage)
  end

  return index
end

-- Dissect: Account Query Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.account_query_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.account_query_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.account_query_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_value = {}

-- Dissect: Modify Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
  [25] = nasdaq_nsmequities_orders_ouch_v5_0.shares_located.dissect,
  [26] = nasdaq_nsmequities_orders_ouch_v5_0.locate_broker.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_value.dissect = function(buffer, offset, packet, parent, modify_order_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_value.dispatch[modify_order_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Modify Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_appendage = {}

-- Display: Modify Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_appendage.fields = function(buffer, offset, packet, parent, size_of_modify_order_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Modify Order Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, modify_order_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_field.dissect(buffer, index, packet, parent)

  -- Modify Order Optional Value: Runtime Type with 3 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_optional_value.dissect(buffer, index, packet, parent, modify_order_optional_field)

  return index
end

-- Dissect: Modify Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_appendage.dissect = function(buffer, offset, packet, parent, size_of_modify_order_appendage)
  local index = offset + size_of_modify_order_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.modify_order_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_appendage.fields(buffer, offset, packet, parent, size_of_modify_order_appendage)
    parent:set_len(size_of_modify_order_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.modify_order_appendage.fields(buffer, offset, packet, parent, size_of_modify_order_appendage)

    return index
  end
end

-- Modify Order Message
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message = {}

-- Size: Modify Order Message
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Modify Order Message
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Modify Order Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Modify Order Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Modify Order Appendage
    local size_of_modify_order_appendage = optional_field_length + 1

    -- Modify Order Appendage: Struct of 3 fields
    index, modify_order_appendage = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_appendage.dissect(buffer, index, packet, parent, size_of_modify_order_appendage)
  end

  return index
end

-- Dissect: Modify Order Message
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.modify_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_value = {}

-- Dissect: Cancel Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_value.dispatch = {
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_value.dissect = function(buffer, offset, packet, parent, cancel_order_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_value.dispatch[cancel_order_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Cancel Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_appendage = {}

-- Display: Cancel Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_appendage.fields = function(buffer, offset, packet, parent, size_of_cancel_order_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Cancel Order Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, cancel_order_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_field.dissect(buffer, index, packet, parent)

  -- Cancel Order Optional Value: Runtime Type with 1 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_optional_value.dissect(buffer, index, packet, parent, cancel_order_optional_field)

  return index
end

-- Dissect: Cancel Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_appendage.dissect = function(buffer, offset, packet, parent, size_of_cancel_order_appendage)
  local index = offset + size_of_cancel_order_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_appendage.fields(buffer, offset, packet, parent, size_of_cancel_order_appendage)
    parent:set_len(size_of_cancel_order_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_appendage.fields(buffer, offset, packet, parent, size_of_cancel_order_appendage)

    return index
  end
end

-- Cancel Order Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message = {}

-- Size: Cancel Order Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Cancel Order Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Appendage Length
  local appendage_length = nil

  local appendage_length_exists = index < buffer:len()

  if appendage_length_exists then
    index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Cancel Order Appendage
  local end_of_payload = (appendage_length or 0) + index

  -- Cancel Order Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Cancel Order Appendage
    local size_of_cancel_order_appendage = optional_field_length + 1

    -- Cancel Order Appendage: Struct of 3 fields
    index, cancel_order_appendage = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_appendage.dissect(buffer, index, packet, parent, size_of_cancel_order_appendage)
  end

  return index
end

-- Dissect: Cancel Order Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value = {}

-- Dissect: Replace Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.dispatch = {
  [3] = nasdaq_nsmequities_orders_ouch_v5_0.min_qty.dissect,
  [5] = nasdaq_nsmequities_orders_ouch_v5_0.max_floor.dissect,
  [6] = nasdaq_nsmequities_orders_ouch_v5_0.price_type.dissect,
  [12] = nasdaq_nsmequities_orders_ouch_v5_0.post_only.dissect,
  [15] = nasdaq_nsmequities_orders_ouch_v5_0.expire_time.dissect,
  [16] = nasdaq_nsmequities_orders_ouch_v5_0.trade_now.dissect,
  [17] = nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.dissect,
  [13] = nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.dissect,
  [7] = nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.dissect,
  [9] = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.dissect,
  [10] = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type.dissect,
  [11] = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.dissect,
  [25] = nasdaq_nsmequities_orders_ouch_v5_0.shares_located.dissect,
  [26] = nasdaq_nsmequities_orders_ouch_v5_0.locate_broker.dissect,
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
  [27] = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect,
  [29] = nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.dissect,
  [30] = nasdaq_nsmequities_orders_ouch_v5_0.aiq_group_id.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.dissect = function(buffer, offset, packet, parent, replace_order_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.dispatch[replace_order_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Replace Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage = {}

-- Display: Replace Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.fields = function(buffer, offset, packet, parent, size_of_replace_order_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Replace Order Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, replace_order_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.dissect(buffer, index, packet, parent)

  -- Replace Order Optional Value: Runtime Type with 18 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.dissect(buffer, index, packet, parent, replace_order_optional_field)

  return index
end

-- Dissect: Replace Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.dissect = function(buffer, offset, packet, parent, size_of_replace_order_appendage)
  local index = offset + size_of_replace_order_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.fields(buffer, offset, packet, parent, size_of_replace_order_appendage)
    parent:set_len(size_of_replace_order_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.fields(buffer, offset, packet, parent, size_of_replace_order_appendage)

    return index
  end
end

-- Replace Order Message
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message = {}

-- Size: Replace Order Message
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Replace Order Message
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig User Ref Num: UserRefNum
  index, orig_user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_orders_ouch_v5_0.display.dissect(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: Alpha
  index, inter_market_sweep_eligibility = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- ClOrdId: Alpha
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Replace Order Appendage
  local end_of_payload = appendage_length + index

  -- Replace Order Appendage: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):uint()

    -- Runtime Size Of: Replace Order Appendage
    local size_of_replace_order_appendage = optional_field_length + 1

    -- Replace Order Appendage: Struct of 3 fields
    index, replace_order_appendage = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.dissect(buffer, index, packet, parent, size_of_replace_order_appendage)
  end

  return index
end

-- Dissect: Replace Order Message
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value = {}

-- Dissect: Enter Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.dispatch = {
  [2] = nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect,
  [3] = nasdaq_nsmequities_orders_ouch_v5_0.min_qty.dissect,
  [4] = nasdaq_nsmequities_orders_ouch_v5_0.customer_type.dissect,
  [5] = nasdaq_nsmequities_orders_ouch_v5_0.max_floor.dissect,
  [6] = nasdaq_nsmequities_orders_ouch_v5_0.price_type.dissect,
  [7] = nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.dissect,
  [9] = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.dissect,
  [10] = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price_type.dissect,
  [11] = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.dissect,
  [12] = nasdaq_nsmequities_orders_ouch_v5_0.post_only.dissect,
  [13] = nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.dissect,
  [15] = nasdaq_nsmequities_orders_ouch_v5_0.expire_time.dissect,
  [16] = nasdaq_nsmequities_orders_ouch_v5_0.trade_now.dissect,
  [17] = nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.dissect,
  [24] = nasdaq_nsmequities_orders_ouch_v5_0.group_id.dissect,
  [25] = nasdaq_nsmequities_orders_ouch_v5_0.shares_located.dissect,
  [26] = nasdaq_nsmequities_orders_ouch_v5_0.locate_broker.dissect,
  [28] = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_idx.dissect,
  [29] = nasdaq_nsmequities_orders_ouch_v5_0.aiq_strategy.dissect,
  [30] = nasdaq_nsmequities_orders_ouch_v5_0.aiq_group_id.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.dissect = function(buffer, offset, packet, parent, enter_order_optional_field)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.dispatch[enter_order_optional_field]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Enter Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage = {}

-- Display: Enter Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.fields = function(buffer, offset, packet, parent, size_of_enter_order_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Unsigned Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Enter Order Optional Field: 1 Byte Unsigned Fixed Width Integer Enum with 20 values
  index, enter_order_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.dissect(buffer, index, packet, parent)

  -- Enter Order Optional Value: Runtime Type with 20 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.dissect(buffer, index, packet, parent, enter_order_optional_field)

  return index
end

-- Dissect: Enter Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.dissect = function(buffer, offset, packet, parent, size_of_enter_order_appendage)
  local index = offset + size_of_enter_order_appendage

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.fields(buffer, offset, packet, parent, size_of_enter_order_appendage)
    parent:set_len(size_of_enter_order_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.fields(buffer, offset, packet, parent, size_of_enter_order_appendage)

    return index
  end
end

-- Enter Order Message
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message = {}

-- Size: Enter Order Message
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Enter Order Message
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_orders_ouch_v5_0.symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = nasdaq_nsmequities_orders_ouch_v5_0.display.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_nsmequities_orders_ouch_v5_0.capacity.dissect(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: Alpha
  index, inter_market_sweep_eligibility = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_orders_ouch_v5_0.cross_type.dissect(buffer, index, packet, parent)

  -- ClOrdId: Alpha
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  -- Appendage Length: Numeric
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

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
    index, enter_order_appendage = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.dissect(buffer, index, packet, parent, size_of_enter_order_appendage)
  end

  return index
end

-- Dissect: Enter Order Message
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message = {}

-- Dissect: Unsequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.dispatch = {
  ["O"] = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.dissect,
  ["U"] = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.dissect,
  ["X"] = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.dissect,
  ["M"] = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.dissect,
  ["Q"] = nasdaq_nsmequities_orders_ouch_v5_0.account_query_message.dissect,
  ["C"] = nasdaq_nsmequities_orders_ouch_v5_0.mass_cancel_request_message.dissect,
  ["D"] = nasdaq_nsmequities_orders_ouch_v5_0.disable_order_entry_request_message.dissect,
  ["E"] = nasdaq_nsmequities_orders_ouch_v5_0.enable_order_entry_request_message.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 8 values
  index, unsequenced_message_type = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 8 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.size =
  nasdaq_nsmequities_orders_ouch_v5_0.username.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.password.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.requested_session.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nsmequities_orders_ouch_v5_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nsmequities_orders_ouch_v5_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nsmequities_orders_ouch_v5_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nsmequities_orders_ouch_v5_0.client_payload = {}

-- Dissect: Client Payload
nasdaq_nsmequities_orders_ouch_v5_0.client_payload.dispatch = {
  ["+"] = nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.dissect,
  ["L"] = nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.dissect,
  ["U"] = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.dissect,
  ["R"] = nasdaq_nsmequities_orders_ouch_v5_0.client_heartbeat.dissect,
  ["O"] = nasdaq_nsmequities_orders_ouch_v5_0.logout_request.dissect,
}

nasdaq_nsmequities_orders_ouch_v5_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_nsmequities_orders_ouch_v5_0.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header.size =
  nasdaq_nsmequities_orders_ouch_v5_0.packet_length.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nsmequities_orders_ouch_v5_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nsmequities_orders_ouch_v5_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header.size then
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
nasdaq_nsmequities_orders_ouch_v5_0.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_orders_ouch_v5_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_orders_ouch_v5_0.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nsmequities_orders_ouch_v5_0.client_packet.dissect = function(buffer, packet, parent)
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
      index = nasdaq_nsmequities_orders_ouch_v5_0.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_nsmequities_orders_ouch_v5_0.init()
  nasdaq_nsmequities_orders_ouch_v5_0.accepted_sequence_number.current = nil
  nasdaq_nsmequities_orders_ouch_v5_0.conversation.current = nil
  nasdaq_nsmequities_orders_ouch_v5_0.conversation.flows = {}
end

-- Connection roles for Nasdaq NsmEquities Orders Ouch 5.0: Client is the initiator, Server is the acceptor
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
nasdaq_nsmequities_orders_ouch_v5_0.role = function(packet)
  if omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.acceptor_port

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

  if omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.swap_sides then
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
nasdaq_nsmequities_orders_ouch_v5_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NsmEquities Orders Ouch 5.0
function omi_nasdaq_nsmequities_orders_ouch_v5_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_orders_ouch_v5_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0, buffer(), omi_nasdaq_nsmequities_orders_ouch_v5_0.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_nsmequities_orders_ouch_v5_0.role(packet)

  if role == "initiator" then
    return nasdaq_nsmequities_orders_ouch_v5_0.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_nsmequities_orders_ouch_v5_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nsmequities_orders_ouch_v5_0.client_packet.fingerprint = function(buffer)
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
nasdaq_nsmequities_orders_ouch_v5_0.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Nasdaq NsmEquities Orders Ouch 5.0 (Tcp)
local function omi_nasdaq_nsmequities_orders_ouch_v5_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_orders_ouch_v5_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nasdaq_nsmequities_orders_ouch_v5_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_orders_ouch_v5_0
  omi_nasdaq_nsmequities_orders_ouch_v5_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities Orders Ouch 5.0 (Tcp)
local function omi_nasdaq_nsmequities_orders_ouch_v5_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_orders_ouch_v5_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nasdaq_nsmequities_orders_ouch_v5_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_orders_ouch_v5_0
  omi_nasdaq_nsmequities_orders_ouch_v5_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities Orders Ouch 5.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nsmequities_orders_ouch_v5_0_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nsmequities_orders_ouch_v5_0.role(packet)
  local initiator = omi_nasdaq_nsmequities_orders_ouch_v5_0_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nsmequities_orders_ouch_v5_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nsmequities_orders_ouch_v5_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nsmequities_orders_ouch_v5_0.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NsmEquities Orders Ouch 5.0
omi_nasdaq_nsmequities_orders_ouch_v5_0:register_heuristic("tcp", omi_nasdaq_nsmequities_orders_ouch_v5_0_tcp_heuristic)

-- Register Nasdaq NsmEquities Orders Ouch 5.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nsmequities_orders_ouch_v5_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 5.0
--   Date: Saturday, April 1, 2023
--   Specification: OUCH5.0.pdf
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
