-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Gpw Wse OrderEntry Wats 1.7.6.20 Protocol
local omi_gpw_wse_orderentry_wats_v1_7_6_20 = Proto("Omi.Gpw.Wse.OrderEntry.Wats.v1.7.6.20", "Gpw Wse OrderEntry Wats 1.7.6.20")

-- Protocol table
local gpw_wse_orderentry_wats_v1_7_6_20 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Gpw Wse OrderEntry Wats 1.7.6.20 Fields
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.account = ProtoField.new("Account", "gpw.wse.orderentry.wats.v1.7.6.20.account", ftypes.STRING, nil, nil, nil, "Account number. Optional: Required for AccountType different than Missing, otherwise filled with 0x0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.account_type = ProtoField.new("Account Type", "gpw.wse.orderentry.wats.v1.7.6.20.accounttype", ftypes.UINT8, nil, nil, nil, "Type of account associated with the order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.action = ProtoField.new("Action", "gpw.wse.orderentry.wats.v1.7.6.20.action", ftypes.UINT8, nil, nil, nil, "The action for the Market Maker command request")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.algorithmic_trade_indicator = ProtoField.new("Algorithmic Trade Indicator", "gpw.wse.orderentry.wats.v1.7.6.20.algorithmictradeindicator", ftypes.UINT8, nil, nil, nil, "Indicates algorithmic trader")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.ask = ProtoField.new("Ask", "gpw.wse.orderentry.wats.v1.7.6.20.ask", ftypes.STRING, nil, nil, nil, "QuoteOrder")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.ask_order_id = ProtoField.new("Ask Order Id", "gpw.wse.orderentry.wats.v1.7.6.20.askorderid", ftypes.STRING, nil, nil, nil, "Unique for each trading day order identifier based on the sequence number of order message, bulk sequence number, session ID and connection ID")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bid = ProtoField.new("Bid", "gpw.wse.orderentry.wats.v1.7.6.20.bid", ftypes.STRING, nil, nil, nil, "QuoteOrder")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bid_order_id = ProtoField.new("Bid Order Id", "gpw.wse.orderentry.wats.v1.7.6.20.bidorderid", ftypes.STRING, nil, nil, nil, "Unique for each trading day order identifier based on the sequence number of order message, bulk sequence number, session ID and connection ID")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bid_orders = ProtoField.new("Bid Orders", "gpw.wse.orderentry.wats.v1.7.6.20.bidorders", ftypes.UINT32, nil, nil, nil, "Number of bid orders")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bulk_seq_num = ProtoField.new("Bulk Seq Num", "gpw.wse.orderentry.wats.v1.7.6.20.bulkseqnum", ftypes.UINT64, nil, base.DEC, 0x0000000FF0000000, "Zero for single orders, for example Market and Limit, and the value of subsequent orders for messages carrying several orders or quotes, for example MassQuote")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.cancel_on_connection_loss = ProtoField.new("Cancel On Connection Loss", "gpw.wse.orderentry.wats.v1.7.6.20.cancelonconnectionloss", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.capacity = ProtoField.new("Capacity", "gpw.wse.orderentry.wats.v1.7.6.20.capacity", ftypes.UINT8, nil, nil, nil, "Capacity of the party making the order (either principal or agency)")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.clearing_member_clearing_identifier = ProtoField.new("Clearing Member Clearing Identifier", "gpw.wse.orderentry.wats.v1.7.6.20.clearingmemberclearingidentifier", ftypes.UINT8, nil, nil, nil, "Clearing member's clearing identifier")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.clearing_member_code = ProtoField.new("Clearing Member Code", "gpw.wse.orderentry.wats.v1.7.6.20.clearingmembercode", ftypes.STRING, nil, nil, nil, "Clearing member code. Optional: Never required, if unused filled with 0x0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.client = ProtoField.new("Client", "gpw.wse.orderentry.wats.v1.7.6.20.client", ftypes.STRING, nil, nil, nil, "MifidField")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.client_order_id = ProtoField.new("Client Order Id", "gpw.wse.orderentry.wats.v1.7.6.20.clientorderid", ftypes.STRING, nil, nil, nil, "Arbitrary user provided value associated with the order. Optional: Never required, if unused filled with 0x0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_id = ProtoField.new("Connection Id", "gpw.wse.orderentry.wats.v1.7.6.20.connectionid", ftypes.UINT16, nil, nil, nil, "ID of the connection")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_id_order_id = ProtoField.new("Connection Id Order Id", "gpw.wse.orderentry.wats.v1.7.6.20.connectionidorderid", ftypes.UINT64, nil, base.DEC, UInt64(0x00000000, 0xFFFC0000), "A connection number, a connectivity parameter provided by GPW")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.count = ProtoField.new("Count", "gpw.wse.orderentry.wats.v1.7.6.20.count", ftypes.UINT8, nil, nil, nil, "How many quotes this message contains")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.counterparty_code = ProtoField.new("Counterparty Code", "gpw.wse.orderentry.wats.v1.7.6.20.counterpartycode", ftypes.STRING, nil, nil, nil, "Participant code of the counterparty")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.currency = ProtoField.new("Currency", "gpw.wse.orderentry.wats.v1.7.6.20.currency", ftypes.UINT16, nil, nil, nil, "Currency (e.g. USD)")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.date = ProtoField.new("Date", "gpw.wse.orderentry.wats.v1.7.6.20.date", ftypes.UINT32, nil, nil, nil, "Date of the business session when provided and 0 for StartOfTechnicalSession and EndOfTechnicalSession events")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.direct_or_sponsored_access = ProtoField.new("Direct Or Sponsored Access", "gpw.wse.orderentry.wats.v1.7.6.20.directorsponsoredaccess", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Order submitted by Sponsored client using Sponsored Access connectivity")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.display_qty = ProtoField.new("Display Qty", "gpw.wse.orderentry.wats.v1.7.6.20.displayqty", ftypes.UINT64, nil, nil, nil, "Used only for iceberg order. The quantity to be displayed. Optional: Required for OrderType::Iceberg, otherwise 0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.event_type = ProtoField.new("Event Type", "gpw.wse.orderentry.wats.v1.7.6.20.eventtype", ftypes.UINT8, nil, nil, nil, "Test event type")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.exec_inst = ProtoField.new("Exec Inst", "gpw.wse.orderentry.wats.v1.7.6.20.execinst", ftypes.STRING, nil, nil, nil, "Instructions for order handling on exchange trading floor")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.exec_type = ProtoField.new("Exec Type", "gpw.wse.orderentry.wats.v1.7.6.20.exectype", ftypes.UINT8, nil, nil, nil, "Type of execution being reported. Uses subset of ExecType for trade capture reports")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.exec_type_reason = ProtoField.new("Exec Type Reason", "gpw.wse.orderentry.wats.v1.7.6.20.exectypereason", ftypes.UINT8, nil, nil, nil, "Describes why an order was executed and the events related to its lifecycle")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.executing_trader = ProtoField.new("Executing Trader", "gpw.wse.orderentry.wats.v1.7.6.20.executingtrader", ftypes.STRING, nil, nil, nil, "MifidField")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.expire = ProtoField.new("Expire", "gpw.wse.orderentry.wats.v1.7.6.20.expire", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Expiration time indicating the validity of the order - relevant only when TimeInForce is set to GTD (Good Till Date) or GTT (Good Till Time). Optional: Required for TimeInForce::GTD or TimeInForce::GTT, otherwise 0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.expire_utc = ProtoField.new("Expire", "gpw.wse.orderentry.wats.v1.7.6.20.expire.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Expiration time indicating the validity of the order - relevant only when TimeInForce is set to GTD (Good Till Date) or GTT (Good Till Time). Optional: Required for TimeInForce::GTD or TimeInForce::GTT, otherwise 0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.fee_structure_id = ProtoField.new("Fee Structure Id", "gpw.wse.orderentry.wats.v1.7.6.20.feestructureid", ftypes.UINT8, nil, nil, nil, "Optional identifier of a fee scheme for billing purposes. Optional: Never required, if unused 0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.filled = ProtoField.new("Filled", "gpw.wse.orderentry.wats.v1.7.6.20.filled", ftypes.UINT64, nil, nil, nil, "Indicates the quantity of the order which has already been filled")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.flags = ProtoField.new("Flags", "gpw.wse.orderentry.wats.v1.7.6.20.flags", ftypes.STRING, nil, nil, nil, "Order related flags")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.instrument_id = ProtoField.new("Instrument Id", "gpw.wse.orderentry.wats.v1.7.6.20.instrumentid", ftypes.UINT32, nil, nil, nil, "ID of the instrument being traded")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.interested_party = ProtoField.new("Interested Party", "gpw.wse.orderentry.wats.v1.7.6.20.interestedparty", ftypes.STRING, nil, nil, nil, "3rd party interested in this order or trade. Optional: Never required, if unused filled with 0x0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.investment_decision_maker = ProtoField.new("Investment Decision Maker", "gpw.wse.orderentry.wats.v1.7.6.20.investmentdecisionmaker", ftypes.STRING, nil, nil, nil, "MifidField")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.items_quote_order_response_array = ProtoField.new("Items Quote Order Response Array", "gpw.wse.orderentry.wats.v1.7.6.20.itemsquoteorderresponsearray", ftypes.STRING, nil, nil, nil, "An array of QuoteOrderResponse")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.items_quotes_array = ProtoField.new("Items Quotes Array", "gpw.wse.orderentry.wats.v1.7.6.20.itemsquotesarray", ftypes.STRING, nil, nil, nil, "The Array of quotes")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.last_px = ProtoField.new("Last Px", "gpw.wse.orderentry.wats.v1.7.6.20.lastpx", ftypes.DOUBLE, nil, nil, nil, "Price of this (last) fill")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.last_qty = ProtoField.new("Last Qty", "gpw.wse.orderentry.wats.v1.7.6.20.lastqty", ftypes.UINT64, nil, nil, nil, "Quantity (e.g. shares) bought/sold on this (last) fill")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.last_replay_seq_num = ProtoField.new("Last Replay Seq Num", "gpw.wse.orderentry.wats.v1.7.6.20.lastreplayseqnum", ftypes.UINT32, nil, nil, nil, "Last replay sequence number")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.last_sent_seq_num = ProtoField.new("Last Sent Seq Num", "gpw.wse.orderentry.wats.v1.7.6.20.lastsentseqnum", ftypes.UINT32, nil, nil, nil, "Last sent sequence number")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.leaves_qty = ProtoField.new("Leaves Qty", "gpw.wse.orderentry.wats.v1.7.6.20.leavesqty", ftypes.UINT64, nil, nil, nil, "How much of the given security is left on the market after the trade is concluded")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "gpw.wse.orderentry.wats.v1.7.6.20.liquidityindicator", ftypes.UINT8)
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.liquidity_provision_activity = ProtoField.new("Liquidity Provision Activity", "gpw.wse.orderentry.wats.v1.7.6.20.liquidityprovisionactivity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Order submitted by any firm providing liquidity to the market")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.market_id = ProtoField.new("Market Id", "gpw.wse.orderentry.wats.v1.7.6.20.marketid", ftypes.STRING, nil, nil, nil, "Market structure's Market Identifier Code (MIC) as specified in ISO 10383")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.market_maker_or_specialist = ProtoField.new("Market Maker Or Specialist", "gpw.wse.orderentry.wats.v1.7.6.20.marketmakerorspecialist", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Order submitted as part of Liquidity Provision Activity by firm which have an agreement with Market")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.market_segment_id = ProtoField.new("Market Segment Id", "gpw.wse.orderentry.wats.v1.7.6.20.marketsegmentid", ftypes.UINT32, nil, nil, nil, "Identifies the market segment for request type CancelOrdersForMarketSegment. Optional: Required for MassCancelRequestType::CancelOrdersForMarketSegment, otherwise 0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "gpw.wse.orderentry.wats.v1.7.6.20.masscancelid", ftypes.STRING, nil, nil, nil, "Unique for each trading day order identifier based on the sequence number of order message, bulk sequence number, session ID and connection ID")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mass_cancel_request_type = ProtoField.new("Mass Cancel Request Type", "gpw.wse.orderentry.wats.v1.7.6.20.masscancelrequesttype", ftypes.UINT8)
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mass_quote_id = ProtoField.new("Mass Quote Id", "gpw.wse.orderentry.wats.v1.7.6.20.massquoteid", ftypes.STRING, nil, nil, nil, "Unique for each trading day order identifier based on the sequence number of order message, bulk sequence number, session ID and connection ID")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.memo = ProtoField.new("Memo", "gpw.wse.orderentry.wats.v1.7.6.20.memo", ftypes.STRING, nil, nil, nil, "Free text. Optional: Never required, if unused filled with 0x0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.message_length = ProtoField.new("Message Length", "gpw.wse.orderentry.wats.v1.7.6.20.messagelength", ftypes.UINT16, nil, nil, nil, "Total length of the message, which the message index of section 7 shows includes the 24 byte header: Heartbeat and Logout carry no body and state length 24")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.message_type = ProtoField.new("Message Type", "gpw.wse.orderentry.wats.v1.7.6.20.messagetype", ftypes.UINT16, nil, nil, nil, "Type of the message, for example Login")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mifid_fields = ProtoField.new("Mifid Fields", "gpw.wse.orderentry.wats.v1.7.6.20.mifidfields", ftypes.STRING, nil, nil, nil, "MifidFields")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.next_expected_seq_num = ProtoField.new("Next Expected Seq Num", "gpw.wse.orderentry.wats.v1.7.6.20.nextexpectedseqnum", ftypes.UINT32, nil, nil, nil, "Next expected message sequence number value to be received")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.offer_orders = ProtoField.new("Offer Orders", "gpw.wse.orderentry.wats.v1.7.6.20.offerorders", ftypes.UINT32, nil, nil, nil, "Number of offer orders")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_capacity = ProtoField.new("Order Capacity", "gpw.wse.orderentry.wats.v1.7.6.20.ordercapacity", ftypes.UINT8, nil, nil, nil, "Designates the capacity of the firm placing the order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_id = ProtoField.new("Order Id", "gpw.wse.orderentry.wats.v1.7.6.20.orderid", ftypes.STRING, nil, nil, nil, "Unique for each trading day order identifier based on the sequence number of order message, bulk sequence number, session ID and connection ID")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_type = ProtoField.new("Order Type", "gpw.wse.orderentry.wats.v1.7.6.20.ordertype", ftypes.UINT8, nil, nil, nil, "Indicates the order type")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.price = ProtoField.new("Price", "gpw.wse.orderentry.wats.v1.7.6.20.price", ftypes.DOUBLE, nil, nil, nil, "Indicates the price of the order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.priority_flag = ProtoField.new("Priority Flag", "gpw.wse.orderentry.wats.v1.7.6.20.priorityflag", ftypes.UINT8, nil, nil, nil, "Indicates whether the priority flag is lost or retained after modification")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.public_order_id = ProtoField.new("Public Order Id", "gpw.wse.orderentry.wats.v1.7.6.20.publicorderid", ftypes.UINT64, nil, nil, nil, "Unique for single trading day order identifier assigned by the trading system and shared publicly in market data (public information)")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.qualifier = ProtoField.new("Qualifier", "gpw.wse.orderentry.wats.v1.7.6.20.qualifier", ftypes.UINT8, nil, nil, nil, "Qualifier of MiFID participant")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.quantity = ProtoField.new("Quantity", "gpw.wse.orderentry.wats.v1.7.6.20.quantity", ftypes.UINT64, nil, nil, nil, "Indicates the quantity of the instrument included in the order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.quote = ProtoField.new("Quote", "gpw.wse.orderentry.wats.v1.7.6.20.quote", ftypes.STRING)
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.quote_id = ProtoField.new("Quote Id", "gpw.wse.orderentry.wats.v1.7.6.20.quoteid", ftypes.STRING, nil, nil, nil, "Arbitrary user provided value associated with the mass quote. Optional: Never required, if unused filled with 0x0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.quote_order_response = ProtoField.new("Quote Order Response", "gpw.wse.orderentry.wats.v1.7.6.20.quoteorderresponse", ftypes.STRING, nil, nil, nil, "QuoteOrderResponse")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.quotes = ProtoField.new("Quotes", "gpw.wse.orderentry.wats.v1.7.6.20.quotes", ftypes.STRING)
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_connection_close_reason = ProtoField.new("Reason Connection Close Reason", "gpw.wse.orderentry.wats.v1.7.6.20.reasonconnectionclosereason", ftypes.UINT8, nil, nil, nil, "Connection close reason")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_mass_cancel_rejection_reason = ProtoField.new("Reason Mass Cancel Rejection Reason", "gpw.wse.orderentry.wats.v1.7.6.20.reasonmasscancelrejectionreason", ftypes.UINT16, nil, nil, nil, "Reason for rejecting the given mass order cancel request")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_mass_quote_rejection_reason = ProtoField.new("Reason Mass Quote Rejection Reason", "gpw.wse.orderentry.wats.v1.7.6.20.reasonmassquoterejectionreason", ftypes.UINT16, nil, nil, nil, "Reason for rejecting the given mass quote order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_order_rejection_reason = ProtoField.new("Reason Order Rejection Reason", "gpw.wse.orderentry.wats.v1.7.6.20.reasonorderrejectionreason", ftypes.UINT16, nil, nil, nil, "Reason for rejecting the given order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_request_for_execution_reason = ProtoField.new("Reason Request For Execution Reason", "gpw.wse.orderentry.wats.v1.7.6.20.reasonrequestforexecutionreason", ftypes.UINT8, nil, nil, nil, "The reason for this RFE")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_tcr_rejection_reason = ProtoField.new("Reason Tcr Rejection Reason", "gpw.wse.orderentry.wats.v1.7.6.20.reasontcrrejectionreason", ftypes.UINT16, nil, nil, nil, "Reason for rejecting the given TCR")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.ref_id = ProtoField.new("Ref Id", "gpw.wse.orderentry.wats.v1.7.6.20.refid", ftypes.UINT32, nil, nil, nil, "A reference id to the Market Maker command request message")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "gpw.wse.orderentry.wats.v1.7.6.20.refseqnum", ftypes.UINT32, nil, nil, nil, "Sequence number of the rejected message")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reject_reason = ProtoField.new("Reject Reason", "gpw.wse.orderentry.wats.v1.7.6.20.rejectreason", ftypes.UINT8)
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.rejection_code = ProtoField.new("Rejection Code", "gpw.wse.orderentry.wats.v1.7.6.20.rejectioncode", ftypes.UINT16, nil, nil, nil, "Reason for rejecting the Market Maker command")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reserved_1_to_7 = ProtoField.new("Reserved 1 To 7", "gpw.wse.orderentry.wats.v1.7.6.20.reserved1to7", ftypes.UINT8, nil, base.DEC, 0xFE, "Bits the schema assigns no meaning to")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reserved_3_to_7 = ProtoField.new("Reserved 3 To 7", "gpw.wse.orderentry.wats.v1.7.6.20.reserved3to7", ftypes.UINT8, nil, base.DEC, 0xF8, "Bits the schema assigns no meaning to")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.responses = ProtoField.new("Responses", "gpw.wse.orderentry.wats.v1.7.6.20.responses", ftypes.STRING, nil, nil, nil, "QuoteOrderResponses")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.result_command_result = ProtoField.new("Result Command Result", "gpw.wse.orderentry.wats.v1.7.6.20.resultcommandresult", ftypes.UINT8, nil, nil, nil, "Confirmation of achieving the intended action. If the action (e.g., Buy Only state) has already been achieved before the command, the result will be positive")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.result_login_result = ProtoField.new("Result Login Result", "gpw.wse.orderentry.wats.v1.7.6.20.resultloginresult", ftypes.UINT8, nil, nil, nil, "Login response status code")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.scenario_name = ProtoField.new("Scenario Name", "gpw.wse.orderentry.wats.v1.7.6.20.scenarioname", ftypes.STRING, nil, nil, nil, "Test scenario name")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.secondary_trade_report_id = ProtoField.new("Secondary Trade Report Id", "gpw.wse.orderentry.wats.v1.7.6.20.secondarytradereportid", ftypes.STRING, nil, nil, nil, "Unique for each trading day order identifier based on the sequence number of order message, bulk sequence number, session ID and connection ID")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.seq_num = ProtoField.new("Seq Num", "gpw.wse.orderentry.wats.v1.7.6.20.seqnum", ftypes.UINT64, nil, base.DEC, 0x000000000FFFFFFF, "A sequence number of the OrderAdd message")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.sequence_number = ProtoField.new("Sequence Number", "gpw.wse.orderentry.wats.v1.7.6.20.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence number of the message added by the sender. Section 6.2.1 reserves zero for the session messages, Login, LoginResponse, Logout, LogoutResponse, ConnectionClose and Heartbeat, and numbers the business messages from one")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.session_id = ProtoField.new("Session Id", "gpw.wse.orderentry.wats.v1.7.6.20.sessionid", ftypes.UINT16, nil, nil, nil, "ID of the session")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.session_id_order_id = ProtoField.new("Session Id Order Id", "gpw.wse.orderentry.wats.v1.7.6.20.sessionidorderid", ftypes.UINT64, nil, base.DEC, 0x0003FFF000000000, "A session number received during the login process")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.settlement_date = ProtoField.new("Settlement Date", "gpw.wse.orderentry.wats.v1.7.6.20.settlementdate", ftypes.UINT32, nil, nil, nil, "Settlement date of the trade is equal to current date plus actual settlement offset calendar days")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.short_code = ProtoField.new("Short Code", "gpw.wse.orderentry.wats.v1.7.6.20.shortcode", ftypes.UINT32, nil, nil, nil, "Short code of MiFID participant")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.side = ProtoField.new("Side", "gpw.wse.orderentry.wats.v1.7.6.20.side", ftypes.UINT8, nil, nil, nil, "Indicates the order's side (buy or sell)")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.source_timestamp = ProtoField.new("Source Timestamp", "gpw.wse.orderentry.wats.v1.7.6.20.sourcetimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of the business event that triggered or generated the message, in nanoseconds since the Unix epoch")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.source_timestamp_utc = ProtoField.new("Source Timestamp", "gpw.wse.orderentry.wats.v1.7.6.20.sourcetimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of the business event that triggered or generated the message, in nanoseconds since the Unix epoch")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.status_mass_quote_status = ProtoField.new("Status Mass Quote Status", "gpw.wse.orderentry.wats.v1.7.6.20.statusmassquotestatus", ftypes.UINT8, nil, nil, nil, "Status of the given mass quote order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.status_order_status = ProtoField.new("Status Order Status", "gpw.wse.orderentry.wats.v1.7.6.20.statusorderstatus", ftypes.UINT8, nil, nil, nil, "Status of the given order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.status_tcr_status = ProtoField.new("Status Tcr Status", "gpw.wse.orderentry.wats.v1.7.6.20.statustcrstatus", ftypes.UINT8, nil, nil, nil, "Status of the given order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.stp_id = ProtoField.new("Stp Id", "gpw.wse.orderentry.wats.v1.7.6.20.stpid", ftypes.UINT8, nil, nil, nil, "ID assigned by the client used in the Self Trade Prevention mechanism. Optional: Never required, can be 0 to disable stp")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.target_party_id = ProtoField.new("Target Party Id", "gpw.wse.orderentry.wats.v1.7.6.20.targetpartyid", ftypes.UINT32, nil, nil, nil, "Used to identify the party targeted for the action specified in the message. Optional: Required for TargetPartyRole::SenderLocation/ClientID/ExecutingTrader/InvestmentDecisionMaker, otherwise 0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.target_party_role = ProtoField.new("Target Party Role", "gpw.wse.orderentry.wats.v1.7.6.20.targetpartyrole", ftypes.UINT8, nil, nil, nil, "Target party role filter selection field")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.target_timestamp = ProtoField.new("Target Timestamp", "gpw.wse.orderentry.wats.v1.7.6.20.targettimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Test timestamp (e.g. the send time of a message)")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.target_timestamp_utc = ProtoField.new("Target Timestamp", "gpw.wse.orderentry.wats.v1.7.6.20.targettimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Test timestamp (e.g. the send time of a message)")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.tcr_party = ProtoField.new("Tcr Party", "gpw.wse.orderentry.wats.v1.7.6.20.tcrparty", ftypes.STRING, nil, nil, nil, "TcrParty")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.tcr_party_buy = ProtoField.new("Tcr Party Buy", "gpw.wse.orderentry.wats.v1.7.6.20.tcrpartybuy", ftypes.STRING, nil, nil, nil, "TcrParty")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.tcr_party_sell = ProtoField.new("Tcr Party Sell", "gpw.wse.orderentry.wats.v1.7.6.20.tcrpartysell", ftypes.STRING, nil, nil, nil, "TcrParty")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.time_in_force = ProtoField.new("Time In Force", "gpw.wse.orderentry.wats.v1.7.6.20.timeinforce", ftypes.UINT8, nil, nil, nil, "Indicates the order's time in force (e.g. GTC)")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.timestamp = ProtoField.new("Timestamp", "gpw.wse.orderentry.wats.v1.7.6.20.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Sending time, in nanoseconds since the Unix epoch. Section 4.12 states the type and the unit, a 64 bit unsigned integer given within nanosecond accuracy, and section 4.6.3.4 the zone, an expiry time being a UTC timestamp")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.timestamp_utc = ProtoField.new("Timestamp", "gpw.wse.orderentry.wats.v1.7.6.20.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Sending time, in nanoseconds since the Unix epoch. Section 4.12 states the type and the unit, a 64 bit unsigned integer given within nanosecond accuracy, and section 4.6.3.4 the zone, an expiry time being a UTC timestamp")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.token = ProtoField.new("Token", "gpw.wse.orderentry.wats.v1.7.6.20.token", ftypes.STRING, nil, nil, nil, "The security data required for authentication, which is a token received by the exchange member during the registration process")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "gpw.wse.orderentry.wats.v1.7.6.20.totalaffectedorders", ftypes.UINT64, nil, nil, nil, "Total number of orders affected by the mass cancel request")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.total_bid_size = ProtoField.new("Total Bid Size", "gpw.wse.orderentry.wats.v1.7.6.20.totalbidsize", ftypes.UINT64, nil, nil, nil, "Specifies the total bid size")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.total_offer_size = ProtoField.new("Total Offer Size", "gpw.wse.orderentry.wats.v1.7.6.20.totaloffersize", ftypes.UINT64, nil, nil, nil, "Specifies the total offer size")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_id = ProtoField.new("Trade Id", "gpw.wse.orderentry.wats.v1.7.6.20.tradeid", ftypes.UINT32, nil, nil, nil, "ID of the trade")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_report_id = ProtoField.new("Trade Report Id", "gpw.wse.orderentry.wats.v1.7.6.20.tradereportid", ftypes.STRING, nil, nil, nil, "Unique identifier of the trade capture report")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_report_ref_id = ProtoField.new("Trade Report Ref Id", "gpw.wse.orderentry.wats.v1.7.6.20.tradereportrefid", ftypes.STRING, nil, nil, nil, "Reference identifier used with Cancel and Replace transaction types. The TradeReportID that is being referenced for trade correction or cancelation")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_report_trans_type = ProtoField.new("Trade Report Trans Type", "gpw.wse.orderentry.wats.v1.7.6.20.tradereporttranstype", ftypes.UINT8, nil, nil, nil, "Identifies Trade Report message transaction type")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_report_type = ProtoField.new("Trade Report Type", "gpw.wse.orderentry.wats.v1.7.6.20.tradereporttype", ftypes.UINT8, nil, nil, nil, "Type of Trade Report")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_type = ProtoField.new("Trade Type", "gpw.wse.orderentry.wats.v1.7.6.20.tradetype", ftypes.UINT8, nil, nil, nil, "Type of trade")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trading_session_event = ProtoField.new("Trading Session Event", "gpw.wse.orderentry.wats.v1.7.6.20.tradingsessionevent", ftypes.UINT8, nil, nil, nil, "Identifies an event related to the trading status of a trading session")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trigger_price = ProtoField.new("Trigger Price", "gpw.wse.orderentry.wats.v1.7.6.20.triggerprice", ftypes.DOUBLE, nil, nil, nil, "Indicates the trigger price (Last Trade Price - LTP) after which the order should be added to the order book. Optional: Required for OrderType::StopLimit and OrderType::StopLoss, otherwise 0")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.update_type = ProtoField.new("Update Type", "gpw.wse.orderentry.wats.v1.7.6.20.updatetype", ftypes.UINT8, nil, nil, nil, "Indicates a type of the BidOfferUpdate message")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.version = ProtoField.new("Version", "gpw.wse.orderentry.wats.v1.7.6.20.version", ftypes.UINT16, nil, nil, nil, "Indicates the version of the protocol in which the message is defined")

-- Gpw Wse OrderEntry Wats 1.7.6.20 Framing
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.message = ProtoField.new("Message", "gpw.wse.orderentry.wats.v1.7.6.20.message", ftypes.STRING)
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.message_header = ProtoField.new("Message Header", "gpw.wse.orderentry.wats.v1.7.6.20.messageheader", ftypes.STRING, nil, nil, nil, "Every order gateway message opens with the same 24 byte header")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.packet = ProtoField.new("Packet", "gpw.wse.orderentry.wats.v1.7.6.20.packet", ftypes.STRING, nil, nil, nil, "Gpw Wats Native Order Gateway Packet")

-- Gpw Wse OrderEntry 1.7.6.20 Application Messages
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bid_offer_update = ProtoField.new("Bid Offer Update", "gpw.wse.orderentry.wats.v1.7.6.20.bidofferupdate", ftypes.STRING, nil, nil, nil, "Message send during the IPO to the sell side or during the Tender Offer to the buy side")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_close = ProtoField.new("Connection Close", "gpw.wse.orderentry.wats.v1.7.6.20.connectionclose", ftypes.STRING, nil, nil, nil, "The ConnectionClose message confirms the termination of a session through the trading port service")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.gap_fill = ProtoField.new("Gap Fill", "gpw.wse.orderentry.wats.v1.7.6.20.gapfill", ftypes.BYTES, nil, nil, nil, "Create a SeqNum gap bettwen current SeqNum and header::seqNum")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.heartbeat = ProtoField.new("Heartbeat", "gpw.wse.orderentry.wats.v1.7.6.20.heartbeat", ftypes.BYTES, nil, nil, nil, "Heartbeat message")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.login = ProtoField.new("Login", "gpw.wse.orderentry.wats.v1.7.6.20.login", ftypes.STRING, nil, nil, nil, "The login message authenticates a user establishing a connection to the trading port service. The login message must be the first message sent by the client application to request the initiation of a trading port session")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.login_response = ProtoField.new("Login Response", "gpw.wse.orderentry.wats.v1.7.6.20.loginresponse", ftypes.STRING, nil, nil, nil, "The login response message. The result field describes the login status, indicating whether the login was successful or not (i.e. successful login)")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.logout = ProtoField.new("Logout", "gpw.wse.orderentry.wats.v1.7.6.20.logout", ftypes.BYTES, nil, nil, nil, "The logout message is sent from the client application to terminate the communication session with the trading port")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.logout_response = ProtoField.new("Logout Response", "gpw.wse.orderentry.wats.v1.7.6.20.logoutresponse", ftypes.BYTES, nil, nil, nil, "The logout response message confirms the client logout message")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.market_maker_command = ProtoField.new("Market Maker Command", "gpw.wse.orderentry.wats.v1.7.6.20.marketmakercommand", ftypes.STRING, nil, nil, nil, "Market Maker command request")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.market_maker_command_response = ProtoField.new("Market Maker Command Response", "gpw.wse.orderentry.wats.v1.7.6.20.marketmakercommandresponse", ftypes.STRING, nil, nil, nil, "The response to the Market Maker command")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mass_quote = ProtoField.new("Mass Quote", "gpw.wse.orderentry.wats.v1.7.6.20.massquote", ftypes.STRING)
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mass_quote_response = ProtoField.new("Mass Quote Response", "gpw.wse.orderentry.wats.v1.7.6.20.massquoteresponse", ftypes.STRING, nil, nil, nil, "The response to a MassQuote message")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_add = ProtoField.new("Order Add", "gpw.wse.orderentry.wats.v1.7.6.20.orderadd", ftypes.STRING, nil, nil, nil, "Message used to add new orders to the system")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_add_response = ProtoField.new("Order Add Response", "gpw.wse.orderentry.wats.v1.7.6.20.orderaddresponse", ftypes.STRING, nil, nil, nil, "The message is a response to an OrderAdd message and includes the order execution status")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_cancel = ProtoField.new("Order Cancel", "gpw.wse.orderentry.wats.v1.7.6.20.ordercancel", ftypes.STRING, nil, nil, nil, "Message used to cancel the previously submitted order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_cancel_response = ProtoField.new("Order Cancel Response", "gpw.wse.orderentry.wats.v1.7.6.20.ordercancelresponse", ftypes.STRING, nil, nil, nil, "The message is a response to an order cancel request and contains information about its execution, in particular whether the order to cancel was found or not")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_execute = ProtoField.new("Order Execute", "gpw.wse.orderentry.wats.v1.7.6.20.orderexecute", ftypes.STRING, nil, nil, nil, "The message used to report trades between counterparties (i.e. generated when two or more orders are matched)")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_mass_cancel = ProtoField.new("Order Mass Cancel", "gpw.wse.orderentry.wats.v1.7.6.20.ordermasscancel", ftypes.STRING, nil, nil, nil, "Message used to cancel multiple existing orders")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_mass_cancel_response = ProtoField.new("Order Mass Cancel Response", "gpw.wse.orderentry.wats.v1.7.6.20.ordermasscancelresponse", ftypes.STRING, nil, nil, nil, "Response to message used to cancel multiple existing orders")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_modify = ProtoField.new("Order Modify", "gpw.wse.orderentry.wats.v1.7.6.20.ordermodify", ftypes.STRING, nil, nil, nil, "Message used to modify the submitted order")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_modify_response = ProtoField.new("Order Modify Response", "gpw.wse.orderentry.wats.v1.7.6.20.ordermodifyresponse", ftypes.STRING, nil, nil, nil, "The response message for an OrderModify")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reject = ProtoField.new("Reject", "gpw.wse.orderentry.wats.v1.7.6.20.reject", ftypes.STRING, nil, nil, nil, "The reject message is sent by the trading port service when receiving an erroneous message that cannot be further processed")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.request_for_execution = ProtoField.new("Request For Execution", "gpw.wse.orderentry.wats.v1.7.6.20.requestforexecution", ftypes.STRING, nil, nil, nil, "The information for the MM that one of the quotes has been crossed")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.test = ProtoField.new("Test", "gpw.wse.orderentry.wats.v1.7.6.20.test", ftypes.STRING, nil, nil, nil, "The internal message for a test purpose")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.test_event = ProtoField.new("Test Event", "gpw.wse.orderentry.wats.v1.7.6.20.testevent", ftypes.STRING)
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_bust = ProtoField.new("Trade Bust", "gpw.wse.orderentry.wats.v1.7.6.20.tradebust", ftypes.STRING, nil, nil, nil, "Message used to inform about cancellation of previously accepted Trade")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_capture_report_dual = ProtoField.new("Trade Capture Report Dual", "gpw.wse.orderentry.wats.v1.7.6.20.tradecapturereportdual", ftypes.STRING, nil, nil, nil, "Trade Capture Report - dual sided")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_capture_report_response = ProtoField.new("Trade Capture Report Response", "gpw.wse.orderentry.wats.v1.7.6.20.tradecapturereportresponse", ftypes.STRING, nil, nil, nil, "The message is a response to an Trade Capture Report message, containing the state of TCR execution")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_capture_report_single = ProtoField.new("Trade Capture Report Single", "gpw.wse.orderentry.wats.v1.7.6.20.tradecapturereportsingle", ftypes.STRING, nil, nil, nil, "Trade Capture Report - single side")
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trading_session_status = ProtoField.new("Trading Session Status", "gpw.wse.orderentry.wats.v1.7.6.20.tradingsessionstatus", ftypes.STRING, nil, nil, nil, "The Trading Session Status provides information on the status of a trading session")

-- Gpw Wse OrderEntry Wats 1.7.6.20 Generated Fields
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.items_quote_order_response_array_index = ProtoField.new("Items Quote Order Response Array Index", "gpw.wse.orderentry.wats.v1.7.6.20.itemsquoteorderresponsearrayindex", ftypes.UINT16)
omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.items_quotes_array_index = ProtoField.new("Items Quotes Array Index", "gpw.wse.orderentry.wats.v1.7.6.20.itemsquotesarrayindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Gpw Wse OrderEntry Wats 1.7.6.20 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
gpw_wse_orderentry_wats_v1_7_6_20.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Gpw Wse OrderEntry Wats 1.7.6.20 Element Dissection Options
show.structs = true
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Gpw Wse OrderEntry Wats 1.7.6.20 Show Options
omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_application_messages then
    show.application_messages = omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_application_messages
  end
  if show.headers ~= omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_headers then
    show.headers = omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_headers
  end
  if show.repeating_groups ~= omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_repeating_groups then
    show.repeating_groups = omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_repeating_groups
  end
  if show.structs ~= omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_structs then
    show.structs = omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_structs
  end
  if show.indexes ~= omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_indexes then
    show.indexes = omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.show_indexes
  end
  if gpw_wse_orderentry_wats_v1_7_6_20.absolute_time_base ~= omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.absolute_time_base then
    gpw_wse_orderentry_wats_v1_7_6_20.absolute_time_base = omi_gpw_wse_orderentry_wats_v1_7_6_20.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Gpw Wse OrderEntry Wats 1.7.6.20 Fields
-----------------------------------------------------------------------

-- Account
gpw_wse_orderentry_wats_v1_7_6_20.account = {}

-- Size: Account
gpw_wse_orderentry_wats_v1_7_6_20.account.size = 16

-- Display: Account
gpw_wse_orderentry_wats_v1_7_6_20.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
gpw_wse_orderentry_wats_v1_7_6_20.account.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.account.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.account, range, value, display)

  return offset + length, value
end

-- Account Type
gpw_wse_orderentry_wats_v1_7_6_20.account_type = {}

-- Size: Account Type
gpw_wse_orderentry_wats_v1_7_6_20.account_type.size = 1

-- Display: Account Type
gpw_wse_orderentry_wats_v1_7_6_20.account_type.labels = {
  [1] = "Account Type: Missing (1)",
  [2] = "Account Type: Customer (2)",
  [3] = "Account Type: House (3)",
}

gpw_wse_orderentry_wats_v1_7_6_20.account_type.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.account_type.labels[value] or "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
gpw_wse_orderentry_wats_v1_7_6_20.account_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.account_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.account_type, range, value, display)

  return offset + length, value
end

-- Action
gpw_wse_orderentry_wats_v1_7_6_20.action = {}

-- Size: Action
gpw_wse_orderentry_wats_v1_7_6_20.action.size = 1

-- Display: Action
gpw_wse_orderentry_wats_v1_7_6_20.action.labels = {
  [1] = "Action: Change To Hybrid Buy Only (1)",
  [2] = "Action: Change To Knock Out (2)",
  [3] = "Action: Revoke Knock Out (3)",
}

gpw_wse_orderentry_wats_v1_7_6_20.action.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
gpw_wse_orderentry_wats_v1_7_6_20.action.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.action, range, value, display)

  return offset + length, value
end

-- Algorithmic Trade Indicator
gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator = {}

-- Size: Algorithmic Trade Indicator
gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.size = 1

-- Display: Algorithmic Trade Indicator
gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.labels = {
  [1] = "Algorithmic Trade Indicator: Na (1)",
  [2] = "Algorithmic Trade Indicator: Non Algorithmic Trade (2)",
  [3] = "Algorithmic Trade Indicator: Algorithmic Trade (3)",
}

gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.labels[value] or "Algorithmic Trade Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade Indicator
gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.algorithmic_trade_indicator, range, value, display)

  return offset + length, value
end

-- Bid Orders
gpw_wse_orderentry_wats_v1_7_6_20.bid_orders = {}

-- Size: Bid Orders
gpw_wse_orderentry_wats_v1_7_6_20.bid_orders.size = 4

-- Display: Bid Orders
gpw_wse_orderentry_wats_v1_7_6_20.bid_orders.display = function(value)
  return "Bid Orders: "..value
end

-- Dissect: Bid Orders
gpw_wse_orderentry_wats_v1_7_6_20.bid_orders.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.bid_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.bid_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bid_orders, range, value, display)

  return offset + length, value
end

-- Capacity
gpw_wse_orderentry_wats_v1_7_6_20.capacity = {}

-- Size: Capacity
gpw_wse_orderentry_wats_v1_7_6_20.capacity.size = 1

-- Display: Capacity
gpw_wse_orderentry_wats_v1_7_6_20.capacity.labels = {
  [1] = "Capacity: Agency (1)",
  [2] = "Capacity: Principal (2)",
  [3] = "Capacity: Riskless Principal (3)",
}

gpw_wse_orderentry_wats_v1_7_6_20.capacity.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.capacity.labels[value] or "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
gpw_wse_orderentry_wats_v1_7_6_20.capacity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.capacity, range, value, display)

  return offset + length, value
end

-- Clearing Member Clearing Identifier
gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier = {}

-- Size: Clearing Member Clearing Identifier
gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.size = 1

-- Display: Clearing Member Clearing Identifier
gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.labels = {
  [33] = "Clearing Member Clearing Identifier: Not Applicable (33)",
  [78] = "Clearing Member Clearing Identifier: Lei (78)",
  [68] = "Clearing Member Clearing Identifier: Custom (68)",
}

gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.labels[value] or "Clearing Member Clearing Identifier: Unknown("..value..")"
end

-- Dissect: Clearing Member Clearing Identifier
gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.clearing_member_clearing_identifier, range, value, display)

  return offset + length, value
end

-- Clearing Member Code
gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code = {}

-- Size: Clearing Member Code
gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.size = 20

-- Display: Clearing Member Code
gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.display = function(value)
  return "Clearing Member Code: "..value
end

-- Dissect: Clearing Member Code
gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.clearing_member_code, range, value, display)

  return offset + length, value
end

-- Client Order Id
gpw_wse_orderentry_wats_v1_7_6_20.client_order_id = {}

-- Size: Client Order Id
gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size = 20

-- Display: Client Order Id
gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Connection Id
gpw_wse_orderentry_wats_v1_7_6_20.connection_id = {}

-- Size: Connection Id
gpw_wse_orderentry_wats_v1_7_6_20.connection_id.size = 2

-- Display: Connection Id
gpw_wse_orderentry_wats_v1_7_6_20.connection_id.display = function(value)
  return "Connection Id: "..value
end

-- Dissect: Connection Id
gpw_wse_orderentry_wats_v1_7_6_20.connection_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.connection_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.connection_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_id, range, value, display)

  return offset + length, value
end

-- Count
gpw_wse_orderentry_wats_v1_7_6_20.count = {}

-- Size: Count
gpw_wse_orderentry_wats_v1_7_6_20.count.size = 1

-- Display: Count
gpw_wse_orderentry_wats_v1_7_6_20.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
gpw_wse_orderentry_wats_v1_7_6_20.count.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.count, range, value, display)

  return offset + length, value
end

-- Counterparty Code
gpw_wse_orderentry_wats_v1_7_6_20.counterparty_code = {}

-- Size: Counterparty Code
gpw_wse_orderentry_wats_v1_7_6_20.counterparty_code.size = 16

-- Display: Counterparty Code
gpw_wse_orderentry_wats_v1_7_6_20.counterparty_code.display = function(value)
  return "Counterparty Code: "..value
end

-- Dissect: Counterparty Code
gpw_wse_orderentry_wats_v1_7_6_20.counterparty_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.counterparty_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.counterparty_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.counterparty_code, range, value, display)

  return offset + length, value
end

-- Currency
gpw_wse_orderentry_wats_v1_7_6_20.currency = {}

-- Size: Currency
gpw_wse_orderentry_wats_v1_7_6_20.currency.size = 2

-- Display: Currency
gpw_wse_orderentry_wats_v1_7_6_20.currency.labels = {
  [8] = "Currency: All (8)",
  [12] = "Currency: Dzd (12)",
  [32] = "Currency: Ars (32)",
  [36] = "Currency: Aud (36)",
  [44] = "Currency: Bsd (44)",
  [48] = "Currency: Bhd (48)",
  [50] = "Currency: Bdt (50)",
  [51] = "Currency: Amd (51)",
  [52] = "Currency: Bbd (52)",
  [60] = "Currency: Bmd (60)",
  [64] = "Currency: Btn (64)",
  [68] = "Currency: Bob (68)",
  [72] = "Currency: Bwp (72)",
  [84] = "Currency: Bzd (84)",
  [90] = "Currency: Sbd (90)",
  [96] = "Currency: Bnd (96)",
  [104] = "Currency: Mmk (104)",
  [108] = "Currency: Bif (108)",
  [116] = "Currency: Khr (116)",
  [124] = "Currency: Cad (124)",
  [132] = "Currency: Cve (132)",
  [136] = "Currency: Kyd (136)",
  [144] = "Currency: Lkr (144)",
  [152] = "Currency: Clp (152)",
  [156] = "Currency: Cny (156)",
  [170] = "Currency: Cop (170)",
  [174] = "Currency: Kmf (174)",
  [188] = "Currency: Crc (188)",
  [191] = "Currency: Hrk (191)",
  [192] = "Currency: Cup (192)",
  [203] = "Currency: Czk (203)",
  [208] = "Currency: Dkk (208)",
  [214] = "Currency: Dop (214)",
  [222] = "Currency: Svc (222)",
  [230] = "Currency: Etb (230)",
  [232] = "Currency: Ern (232)",
  [238] = "Currency: Fkp (238)",
  [242] = "Currency: Fjd (242)",
  [262] = "Currency: Djf (262)",
  [270] = "Currency: Gmd (270)",
  [292] = "Currency: Gip (292)",
  [320] = "Currency: Gtq (320)",
  [324] = "Currency: Gnf (324)",
  [328] = "Currency: Gyd (328)",
  [332] = "Currency: Htg (332)",
  [340] = "Currency: Hnl (340)",
  [344] = "Currency: Hkd (344)",
  [348] = "Currency: Huf (348)",
  [352] = "Currency: Isk (352)",
  [356] = "Currency: Inr (356)",
  [360] = "Currency: Idr (360)",
  [364] = "Currency: Irr (364)",
  [368] = "Currency: Iqd (368)",
  [376] = "Currency: Ils (376)",
  [388] = "Currency: Jmd (388)",
  [392] = "Currency: Jpy (392)",
  [398] = "Currency: Kzt (398)",
  [400] = "Currency: Jod (400)",
  [404] = "Currency: Kes (404)",
  [408] = "Currency: Kpw (408)",
  [410] = "Currency: Krw (410)",
  [414] = "Currency: Kwd (414)",
  [417] = "Currency: Kgs (417)",
  [418] = "Currency: Lak (418)",
  [422] = "Currency: Lbp (422)",
  [426] = "Currency: Lsl (426)",
  [430] = "Currency: Lrd (430)",
  [434] = "Currency: Lyd (434)",
  [446] = "Currency: Mop (446)",
  [454] = "Currency: Mwk (454)",
  [458] = "Currency: Myr (458)",
  [462] = "Currency: Mvr (462)",
  [480] = "Currency: Mur (480)",
  [484] = "Currency: Mxn (484)",
  [496] = "Currency: Mnt (496)",
  [498] = "Currency: Mdl (498)",
  [504] = "Currency: Mad (504)",
  [512] = "Currency: Omr (512)",
  [516] = "Currency: Nad (516)",
  [524] = "Currency: Npr (524)",
  [532] = "Currency: Ang (532)",
  [533] = "Currency: Awg (533)",
  [548] = "Currency: Vuv (548)",
  [554] = "Currency: Nzd (554)",
  [558] = "Currency: Nio (558)",
  [566] = "Currency: Ngn (566)",
  [578] = "Currency: Nok (578)",
  [586] = "Currency: Pkr (586)",
  [590] = "Currency: Pab (590)",
  [598] = "Currency: Pgk (598)",
  [600] = "Currency: Pyg (600)",
  [604] = "Currency: Pen (604)",
  [608] = "Currency: Php (608)",
  [634] = "Currency: Qar (634)",
  [643] = "Currency: Rub (643)",
  [646] = "Currency: Rwf (646)",
  [654] = "Currency: Shp (654)",
  [682] = "Currency: Sar (682)",
  [690] = "Currency: Scr (690)",
  [702] = "Currency: Sgd (702)",
  [704] = "Currency: Vnd (704)",
  [706] = "Currency: Sos (706)",
  [710] = "Currency: Zar (710)",
  [728] = "Currency: Ssp (728)",
  [748] = "Currency: Szl (748)",
  [752] = "Currency: Sek (752)",
  [756] = "Currency: Chf (756)",
  [760] = "Currency: Syp (760)",
  [764] = "Currency: Thb (764)",
  [776] = "Currency: Top (776)",
  [780] = "Currency: Ttd (780)",
  [784] = "Currency: Aed (784)",
  [788] = "Currency: Tnd (788)",
  [800] = "Currency: Ugx (800)",
  [807] = "Currency: Mkd (807)",
  [818] = "Currency: Egp (818)",
  [826] = "Currency: Gbp (826)",
  [834] = "Currency: Tzs (834)",
  [840] = "Currency: Usd (840)",
  [858] = "Currency: Uyu (858)",
  [860] = "Currency: Uzs (860)",
  [882] = "Currency: Wst (882)",
  [886] = "Currency: Yer (886)",
  [901] = "Currency: Twd (901)",
  [925] = "Currency: Sle (925)",
  [926] = "Currency: Ved (926)",
  [927] = "Currency: Uyw (927)",
  [928] = "Currency: Ves (928)",
  [929] = "Currency: Mru (929)",
  [930] = "Currency: Stn (930)",
  [931] = "Currency: Cuc (931)",
  [932] = "Currency: Zwl (932)",
  [933] = "Currency: Byn (933)",
  [934] = "Currency: Tmt (934)",
  [936] = "Currency: Ghs (936)",
  [938] = "Currency: Sdg (938)",
  [940] = "Currency: Uyi (940)",
  [941] = "Currency: Rsd (941)",
  [943] = "Currency: Mzn (943)",
  [944] = "Currency: Azn (944)",
  [946] = "Currency: Ron (946)",
  [947] = "Currency: Che (947)",
  [948] = "Currency: Chw (948)",
  [949] = "Currency: Try (949)",
  [950] = "Currency: Xaf (950)",
  [951] = "Currency: Xcd (951)",
  [952] = "Currency: Xof (952)",
  [953] = "Currency: Xpf (953)",
  [955] = "Currency: Xba (955)",
  [956] = "Currency: Xbb (956)",
  [957] = "Currency: Xbc (957)",
  [958] = "Currency: Xbd (958)",
  [959] = "Currency: Xau (959)",
  [960] = "Currency: Xdr (960)",
  [961] = "Currency: Xag (961)",
  [962] = "Currency: Xpt (962)",
  [963] = "Currency: Xts (963)",
  [964] = "Currency: Xpd (964)",
  [965] = "Currency: Xua (965)",
  [967] = "Currency: Zmw (967)",
  [968] = "Currency: Srd (968)",
  [969] = "Currency: Mga (969)",
  [970] = "Currency: Cou (970)",
  [971] = "Currency: Afn (971)",
  [972] = "Currency: Tjs (972)",
  [973] = "Currency: Aoa (973)",
  [975] = "Currency: Bgn (975)",
  [976] = "Currency: Cdf (976)",
  [977] = "Currency: Bam (977)",
  [978] = "Currency: Eur (978)",
  [979] = "Currency: Mxv (979)",
  [980] = "Currency: Uah (980)",
  [981] = "Currency: Gel (981)",
  [984] = "Currency: Bov (984)",
  [985] = "Currency: Pln (985)",
  [986] = "Currency: Brl (986)",
  [990] = "Currency: Clf (990)",
  [994] = "Currency: Xsu (994)",
  [997] = "Currency: Usn (997)",
  [999] = "Currency: Xxx (999)",
}

gpw_wse_orderentry_wats_v1_7_6_20.currency.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.currency.labels[value] or "Currency: Unknown("..value..")"
end

-- Dissect: Currency
gpw_wse_orderentry_wats_v1_7_6_20.currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.currency.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.currency, range, value, display)

  return offset + length, value
end

-- Date
gpw_wse_orderentry_wats_v1_7_6_20.date = {}

-- Size: Date
gpw_wse_orderentry_wats_v1_7_6_20.date.size = 4

-- Display: Date
gpw_wse_orderentry_wats_v1_7_6_20.date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Date
gpw_wse_orderentry_wats_v1_7_6_20.date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.date, range, value, display)

  return offset + length, value
end

-- Display Qty
gpw_wse_orderentry_wats_v1_7_6_20.display_qty = {}

-- Size: Display Qty
gpw_wse_orderentry_wats_v1_7_6_20.display_qty.size = 8

-- Display: Display Qty
gpw_wse_orderentry_wats_v1_7_6_20.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
gpw_wse_orderentry_wats_v1_7_6_20.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Event Type
gpw_wse_orderentry_wats_v1_7_6_20.event_type = {}

-- Size: Event Type
gpw_wse_orderentry_wats_v1_7_6_20.event_type.size = 1

-- Display: Event Type
gpw_wse_orderentry_wats_v1_7_6_20.event_type.labels = {
  [1] = "Event Type: Flush (1)",
  [2] = "Event Type: Scenario Start (2)",
  [3] = "Event Type: Scenario End (3)",
}

gpw_wse_orderentry_wats_v1_7_6_20.event_type.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.event_type.labels[value] or "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
gpw_wse_orderentry_wats_v1_7_6_20.event_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.event_type, range, value, display)

  return offset + length, value
end

-- Exec Type
gpw_wse_orderentry_wats_v1_7_6_20.exec_type = {}

-- Size: Exec Type
gpw_wse_orderentry_wats_v1_7_6_20.exec_type.size = 1

-- Display: Exec Type
gpw_wse_orderentry_wats_v1_7_6_20.exec_type.labels = {
  [1] = "Exec Type: Na (1)",
  [8] = "Exec Type: Rejected (8)",
  [12] = "Exec Type: Expired (12)",
  [15] = "Exec Type: Trade (15)",
  [16] = "Exec Type: Trade Correct (16)",
  [17] = "Exec Type: Trade Cancel (17)",
}

gpw_wse_orderentry_wats_v1_7_6_20.exec_type.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.exec_type.labels[value] or "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
gpw_wse_orderentry_wats_v1_7_6_20.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.exec_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Exec Type Reason
gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason = {}

-- Size: Exec Type Reason
gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.size = 1

-- Display: Exec Type Reason
gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.labels = {
  [1] = "Exec Type Reason: Na (1)",
  [2] = "Exec Type Reason: Cancel On Disconnect (2)",
  [3] = "Exec Type Reason: Expired (3)",
  [4] = "Exec Type Reason: Triggered (4)",
  [5] = "Exec Type Reason: Cancel On Suspension (5)",
  [6] = "Exec Type Reason: Order Restatement (6)",
  [7] = "Exec Type Reason: Iceberg Order Refill (7)",
  [8] = "Exec Type Reason: Cancel By Stp (8)",
  [9] = "Exec Type Reason: Cancel By Corporate Action (9)",
  [10] = "Exec Type Reason: Cancel By Mass Cancel (10)",
  [11] = "Exec Type Reason: Cancel Ioc Fok Order (11)",
  [12] = "Exec Type Reason: Cancel By Market Operations (12)",
  [13] = "Exec Type Reason: Replaced (13)",
  [14] = "Exec Type Reason: First Trade On Aggressive Order (14)",
  [15] = "Exec Type Reason: Rejected (15)",
  [16] = "Exec Type Reason: Cancelon Buy Only State Entry (16)",
  [17] = "Exec Type Reason: Cancelon Knocked Out State Entry (17)",
  [18] = "Exec Type Reason: Cancel By Risk Management (18)",
  [19] = "Exec Type Reason: Cancel On Dc Disconnect (19)",
  [20] = "Exec Type Reason: Vfa Activated (20)",
  [21] = "Exec Type Reason: Hybrid Activated (21)",
}

gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.labels[value] or "Exec Type Reason: Unknown("..value..")"
end

-- Dissect: Exec Type Reason
gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.exec_type_reason, range, value, display)

  return offset + length, value
end

-- Expire
gpw_wse_orderentry_wats_v1_7_6_20.expire = {}

-- Size: Expire
gpw_wse_orderentry_wats_v1_7_6_20.expire.size = 8

-- Dissect: Expire
gpw_wse_orderentry_wats_v1_7_6_20.expire.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.expire.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.expire
  if gpw_wse_orderentry_wats_v1_7_6_20.absolute_time_base == 1 then field = omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.expire_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Fee Structure Id
gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id = {}

-- Size: Fee Structure Id
gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.size = 1

-- Display: Fee Structure Id
gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.display = function(value)
  return "Fee Structure Id: "..value
end

-- Dissect: Fee Structure Id
gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.fee_structure_id, range, value, display)

  return offset + length, value
end

-- Filled
gpw_wse_orderentry_wats_v1_7_6_20.filled = {}

-- Size: Filled
gpw_wse_orderentry_wats_v1_7_6_20.filled.size = 8

-- Display: Filled
gpw_wse_orderentry_wats_v1_7_6_20.filled.display = function(value)
  return "Filled: "..value
end

-- Dissect: Filled
gpw_wse_orderentry_wats_v1_7_6_20.filled.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.filled.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.filled.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.filled, range, value, display)

  return offset + length, value
end

-- Instrument Id
gpw_wse_orderentry_wats_v1_7_6_20.instrument_id = {}

-- Size: Instrument Id
gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size = 4

-- Display: Instrument Id
gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Interested Party
gpw_wse_orderentry_wats_v1_7_6_20.interested_party = {}

-- Size: Interested Party
gpw_wse_orderentry_wats_v1_7_6_20.interested_party.size = 8

-- Display: Interested Party
gpw_wse_orderentry_wats_v1_7_6_20.interested_party.display = function(value)
  return "Interested Party: "..value
end

-- Dissect: Interested Party
gpw_wse_orderentry_wats_v1_7_6_20.interested_party.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.interested_party.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.interested_party.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.interested_party, range, value, display)

  return offset + length, value
end

-- Last Px
gpw_wse_orderentry_wats_v1_7_6_20.last_px = {}

-- Size: Last Px
gpw_wse_orderentry_wats_v1_7_6_20.last_px.size = 8

-- Display: Last Px
gpw_wse_orderentry_wats_v1_7_6_20.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
gpw_wse_orderentry_wats_v1_7_6_20.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
gpw_wse_orderentry_wats_v1_7_6_20.last_px.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_orderentry_wats_v1_7_6_20.last_px.translate(raw)
  local display = gpw_wse_orderentry_wats_v1_7_6_20.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
gpw_wse_orderentry_wats_v1_7_6_20.last_qty = {}

-- Size: Last Qty
gpw_wse_orderentry_wats_v1_7_6_20.last_qty.size = 8

-- Display: Last Qty
gpw_wse_orderentry_wats_v1_7_6_20.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
gpw_wse_orderentry_wats_v1_7_6_20.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Replay Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.last_replay_seq_num = {}

-- Size: Last Replay Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.last_replay_seq_num.size = 4

-- Display: Last Replay Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.last_replay_seq_num.display = function(value)
  return "Last Replay Seq Num: "..value
end

-- Dissect: Last Replay Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.last_replay_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.last_replay_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.last_replay_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.last_replay_seq_num, range, value, display)

  return offset + length, value
end

-- Last Sent Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.last_sent_seq_num = {}

-- Size: Last Sent Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.last_sent_seq_num.size = 4

-- Display: Last Sent Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.last_sent_seq_num.display = function(value)
  return "Last Sent Seq Num: "..value
end

-- Dissect: Last Sent Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.last_sent_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.last_sent_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.last_sent_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.last_sent_seq_num, range, value, display)

  return offset + length, value
end

-- Leaves Qty
gpw_wse_orderentry_wats_v1_7_6_20.leaves_qty = {}

-- Size: Leaves Qty
gpw_wse_orderentry_wats_v1_7_6_20.leaves_qty.size = 8

-- Display: Leaves Qty
gpw_wse_orderentry_wats_v1_7_6_20.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
gpw_wse_orderentry_wats_v1_7_6_20.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
gpw_wse_orderentry_wats_v1_7_6_20.liquidity_indicator = {}

-- Size: Liquidity Indicator
gpw_wse_orderentry_wats_v1_7_6_20.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
gpw_wse_orderentry_wats_v1_7_6_20.liquidity_indicator.labels = {
  [1] = "Liquidity Indicator: Buy Order Execution (1)",
  [2] = "Liquidity Indicator: Sell Order Execution (2)",
  [3] = "Liquidity Indicator: Auction Execution (3)",
  [4] = "Liquidity Indicator: Not Applicable (4)",
}

gpw_wse_orderentry_wats_v1_7_6_20.liquidity_indicator.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.liquidity_indicator.labels[value] or "Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Indicator
gpw_wse_orderentry_wats_v1_7_6_20.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Market Id
gpw_wse_orderentry_wats_v1_7_6_20.market_id = {}

-- Size: Market Id
gpw_wse_orderentry_wats_v1_7_6_20.market_id.size = 4

-- Display: Market Id
gpw_wse_orderentry_wats_v1_7_6_20.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
gpw_wse_orderentry_wats_v1_7_6_20.market_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.market_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Segment Id
gpw_wse_orderentry_wats_v1_7_6_20.market_segment_id = {}

-- Size: Market Segment Id
gpw_wse_orderentry_wats_v1_7_6_20.market_segment_id.size = 4

-- Display: Market Segment Id
gpw_wse_orderentry_wats_v1_7_6_20.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
gpw_wse_orderentry_wats_v1_7_6_20.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request Type
gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type = {}

-- Size: Mass Cancel Request Type
gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.size = 1

-- Display: Mass Cancel Request Type
gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.labels = {
  [1] = "Mass Cancel Request Type: Cancel For Security (1)",
  [7] = "Mass Cancel Request Type: Cancel All Orders (7)",
  [9] = "Mass Cancel Request Type: Cancel Orders For Market Segment (9)",
}

gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.labels[value] or "Mass Cancel Request Type: Unknown("..value..")"
end

-- Dissect: Mass Cancel Request Type
gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mass_cancel_request_type, range, value, display)

  return offset + length, value
end

-- Memo
gpw_wse_orderentry_wats_v1_7_6_20.memo = {}

-- Size: Memo
gpw_wse_orderentry_wats_v1_7_6_20.memo.size = 18

-- Display: Memo
gpw_wse_orderentry_wats_v1_7_6_20.memo.display = function(value)
  return "Memo: "..value
end

-- Dissect: Memo
gpw_wse_orderentry_wats_v1_7_6_20.memo.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.memo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.memo, range, value, display)

  return offset + length, value
end

-- Message Length
gpw_wse_orderentry_wats_v1_7_6_20.message_length = {}

-- Size: Message Length
gpw_wse_orderentry_wats_v1_7_6_20.message_length.size = 2

-- Display: Message Length
gpw_wse_orderentry_wats_v1_7_6_20.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
gpw_wse_orderentry_wats_v1_7_6_20.message_length.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
gpw_wse_orderentry_wats_v1_7_6_20.message_type = {}

-- Size: Message Type
gpw_wse_orderentry_wats_v1_7_6_20.message_type.size = 2

-- Display: Message Type
gpw_wse_orderentry_wats_v1_7_6_20.message_type.labels = {
  [2] = "Message Type: Login (2)",
  [3] = "Message Type: Login Response (3)",
  [11] = "Message Type: Logout (11)",
  [14] = "Message Type: Logout Response (14)",
  [12] = "Message Type: Connection Close (12)",
  [13] = "Message Type: Heartbeat (13)",
  [15] = "Message Type: Reject (15)",
  [34] = "Message Type: Gap Fill (34)",
  [1] = "Message Type: Test (1)",
  [255] = "Message Type: Test Event (255)",
  [35] = "Message Type: Trading Session Status (35)",
  [4] = "Message Type: Order Add (4)",
  [5] = "Message Type: Order Add Response (5)",
  [6] = "Message Type: Order Cancel (6)",
  [7] = "Message Type: Order Cancel Response (7)",
  [8] = "Message Type: Order Modify (8)",
  [9] = "Message Type: Order Modify Response (9)",
  [29] = "Message Type: Order Mass Cancel (29)",
  [30] = "Message Type: Order Mass Cancel Response (30)",
  [10] = "Message Type: Order Execute (10)",
  [24] = "Message Type: Mass Quote (24)",
  [25] = "Message Type: Mass Quote Response (25)",
  [32] = "Message Type: Market Maker Command (32)",
  [33] = "Message Type: Market Maker Command Response (33)",
  [28] = "Message Type: Request For Execution (28)",
  [31] = "Message Type: Bid Offer Update (31)",
  [18] = "Message Type: Trade Capture Report Single (18)",
  [19] = "Message Type: Trade Capture Report Dual (19)",
  [20] = "Message Type: Trade Capture Report Response (20)",
  [23] = "Message Type: Trade Bust (23)",
}

gpw_wse_orderentry_wats_v1_7_6_20.message_type.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
gpw_wse_orderentry_wats_v1_7_6_20.message_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.message_type, range, value, display)

  return offset + length, value
end

-- Next Expected Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.next_expected_seq_num = {}

-- Size: Next Expected Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.next_expected_seq_num.size = 4

-- Display: Next Expected Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.next_expected_seq_num.display = function(value)
  return "Next Expected Seq Num: "..value
end

-- Dissect: Next Expected Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.next_expected_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.next_expected_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.next_expected_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.next_expected_seq_num, range, value, display)

  return offset + length, value
end

-- Offer Orders
gpw_wse_orderentry_wats_v1_7_6_20.offer_orders = {}

-- Size: Offer Orders
gpw_wse_orderentry_wats_v1_7_6_20.offer_orders.size = 4

-- Display: Offer Orders
gpw_wse_orderentry_wats_v1_7_6_20.offer_orders.display = function(value)
  return "Offer Orders: "..value
end

-- Dissect: Offer Orders
gpw_wse_orderentry_wats_v1_7_6_20.offer_orders.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.offer_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.offer_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.offer_orders, range, value, display)

  return offset + length, value
end

-- Order Capacity
gpw_wse_orderentry_wats_v1_7_6_20.order_capacity = {}

-- Size: Order Capacity
gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.size = 1

-- Display: Order Capacity
gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.labels = {
  [1] = "Order Capacity: Agency (1)",
  [2] = "Order Capacity: Principal (2)",
  [3] = "Order Capacity: Riskless Principal (3)",
}

gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.labels[value] or "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Type
gpw_wse_orderentry_wats_v1_7_6_20.order_type = {}

-- Size: Order Type
gpw_wse_orderentry_wats_v1_7_6_20.order_type.size = 1

-- Display: Order Type
gpw_wse_orderentry_wats_v1_7_6_20.order_type.labels = {
  [1] = "Order Type: Limit (1)",
  [2] = "Order Type: Market (2)",
  [3] = "Order Type: Market To Limit (3)",
  [4] = "Order Type: Iceberg (4)",
  [5] = "Order Type: Stop Limit (5)",
  [6] = "Order Type: Stop Loss (6)",
}

gpw_wse_orderentry_wats_v1_7_6_20.order_type.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
gpw_wse_orderentry_wats_v1_7_6_20.order_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_type, range, value, display)

  return offset + length, value
end

-- Price
gpw_wse_orderentry_wats_v1_7_6_20.price = {}

-- Size: Price
gpw_wse_orderentry_wats_v1_7_6_20.price.size = 8

-- Display: Price
gpw_wse_orderentry_wats_v1_7_6_20.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
gpw_wse_orderentry_wats_v1_7_6_20.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
gpw_wse_orderentry_wats_v1_7_6_20.price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_orderentry_wats_v1_7_6_20.price.translate(raw)
  local display = gpw_wse_orderentry_wats_v1_7_6_20.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.price, range, value, display)

  return offset + length, value
end

-- Priority Flag
gpw_wse_orderentry_wats_v1_7_6_20.priority_flag = {}

-- Size: Priority Flag
gpw_wse_orderentry_wats_v1_7_6_20.priority_flag.size = 1

-- Display: Priority Flag
gpw_wse_orderentry_wats_v1_7_6_20.priority_flag.labels = {
  [1] = "Priority Flag: Lost (1)",
  [2] = "Priority Flag: Retained (2)",
}

gpw_wse_orderentry_wats_v1_7_6_20.priority_flag.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.priority_flag.labels[value] or "Priority Flag: Unknown("..value..")"
end

-- Dissect: Priority Flag
gpw_wse_orderentry_wats_v1_7_6_20.priority_flag.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.priority_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.priority_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.priority_flag, range, value, display)

  return offset + length, value
end

-- Public Order Id
gpw_wse_orderentry_wats_v1_7_6_20.public_order_id = {}

-- Size: Public Order Id
gpw_wse_orderentry_wats_v1_7_6_20.public_order_id.size = 8

-- Display: Public Order Id
gpw_wse_orderentry_wats_v1_7_6_20.public_order_id.display = function(value)
  return "Public Order Id: "..value
end

-- Dissect: Public Order Id
gpw_wse_orderentry_wats_v1_7_6_20.public_order_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.public_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.public_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.public_order_id, range, value, display)

  return offset + length, value
end

-- Qualifier
gpw_wse_orderentry_wats_v1_7_6_20.qualifier = {}

-- Size: Qualifier
gpw_wse_orderentry_wats_v1_7_6_20.qualifier.size = 1

-- Display: Qualifier
gpw_wse_orderentry_wats_v1_7_6_20.qualifier.labels = {
  [1] = "Qualifier: Na (1)",
  [2] = "Qualifier: Algorithm (2)",
  [3] = "Qualifier: Firm Or Legal Entity (3)",
  [4] = "Qualifier: Natural Person (4)",
}

gpw_wse_orderentry_wats_v1_7_6_20.qualifier.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.qualifier.labels[value] or "Qualifier: Unknown("..value..")"
end

-- Dissect: Qualifier
gpw_wse_orderentry_wats_v1_7_6_20.qualifier.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.qualifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.qualifier, range, value, display)

  return offset + length, value
end

-- Quantity
gpw_wse_orderentry_wats_v1_7_6_20.quantity = {}

-- Size: Quantity
gpw_wse_orderentry_wats_v1_7_6_20.quantity.size = 8

-- Display: Quantity
gpw_wse_orderentry_wats_v1_7_6_20.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
gpw_wse_orderentry_wats_v1_7_6_20.quantity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quote Id
gpw_wse_orderentry_wats_v1_7_6_20.quote_id = {}

-- Size: Quote Id
gpw_wse_orderentry_wats_v1_7_6_20.quote_id.size = 20

-- Display: Quote Id
gpw_wse_orderentry_wats_v1_7_6_20.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
gpw_wse_orderentry_wats_v1_7_6_20.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.quote_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Reason Connection Close Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_connection_close_reason = {}

-- Size: Reason Connection Close Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_connection_close_reason.size = 1

-- Display: Reason Connection Close Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_connection_close_reason.labels = {
  [1] = "Reason Connection Close Reason: Protocol Error (1)",
  [2] = "Reason Connection Close Reason: Invalid Seq Num (2)",
  [3] = "Reason Connection Close Reason: End Of Day (3)",
  [4] = "Reason Connection Close Reason: Sync Fail (4)",
  [5] = "Reason Connection Close Reason: Anti Flooding Threshold Exceeded (5)",
  [6] = "Reason Connection Close Reason: Connection Config Changed (6)",
  [7] = "Reason Connection Close Reason: Close Ops (7)",
  [8] = "Reason Connection Close Reason: Disconnect (8)",
}

gpw_wse_orderentry_wats_v1_7_6_20.reason_connection_close_reason.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.reason_connection_close_reason.labels[value] or "Reason Connection Close Reason: Unknown("..value..")"
end

-- Dissect: Reason Connection Close Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_connection_close_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.reason_connection_close_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.reason_connection_close_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_connection_close_reason, range, value, display)

  return offset + length, value
end

-- Reason Mass Cancel Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_cancel_rejection_reason = {}

-- Size: Reason Mass Cancel Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_cancel_rejection_reason.size = 2

-- Display: Reason Mass Cancel Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_cancel_rejection_reason.labels = {
  [99] = "Reason Mass Cancel Rejection Reason: Other (99)",
  [101] = "Reason Mass Cancel Rejection Reason: Na (101)",
  [1001] = "Reason Mass Cancel Rejection Reason: Unknown Instrument (1001)",
  [1005] = "Reason Mass Cancel Rejection Reason: Invalid Execution Trader (1005)",
  [1016] = "Reason Mass Cancel Rejection Reason: Unknown Market Segment Id (1016)",
  [1017] = "Reason Mass Cancel Rejection Reason: Unknown Connection Id (1017)",
  [1053] = "Reason Mass Cancel Rejection Reason: Instrument Forbidden (1053)",
  [1054] = "Reason Mass Cancel Rejection Reason: Market Segment Id Forbidden (1054)",
  [1056] = "Reason Mass Cancel Rejection Reason: Operation On Redistributed Instruments Forbidden (1056)",
  [2025] = "Reason Mass Cancel Rejection Reason: Request Not Allowed On Sponsored Connection (2025)",
}

gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_cancel_rejection_reason.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_cancel_rejection_reason.labels[value] or "Reason Mass Cancel Rejection Reason: Unknown("..value..")"
end

-- Dissect: Reason Mass Cancel Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_cancel_rejection_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_cancel_rejection_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_cancel_rejection_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_mass_cancel_rejection_reason, range, value, display)

  return offset + length, value
end

-- Reason Mass Quote Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_quote_rejection_reason = {}

-- Size: Reason Mass Quote Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_quote_rejection_reason.size = 2

-- Display: Reason Mass Quote Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_quote_rejection_reason.labels = {
  [1] = "Reason Mass Quote Rejection Reason: Na (1)",
  [2] = "Reason Mass Quote Rejection Reason: Exchange Closed (2)",
  [99] = "Reason Mass Quote Rejection Reason: Other (99)",
  [1005] = "Reason Mass Quote Rejection Reason: Invalid Execution Trader (1005)",
  [1006] = "Reason Mass Quote Rejection Reason: Invalid Decision Maker (1006)",
  [1007] = "Reason Mass Quote Rejection Reason: Invalid Client Id (1007)",
  [1008] = "Reason Mass Quote Rejection Reason: Invalid Party Role Qualifier For Client Id (1008)",
  [1009] = "Reason Mass Quote Rejection Reason: Invalid Party Role Qualifier For Executing Trader (1009)",
  [1010] = "Reason Mass Quote Rejection Reason: Invalid Party Role Qualifier For Investment Decision Maker (1010)",
  [1055] = "Reason Mass Quote Rejection Reason: Missing Order Origination For Sponsored Access Connection (1055)",
  [1061] = "Reason Mass Quote Rejection Reason: Operations On Orders And Quotes Forbidden During Instrument Suspension (1061)",
  [1070] = "Reason Mass Quote Rejection Reason: Invalid Party Id For Client Id (1070)",
  [1071] = "Reason Mass Quote Rejection Reason: Invalid Party Id For Executing Trader (1071)",
  [1072] = "Reason Mass Quote Rejection Reason: Invalid Party Id For Investment Decision Maker (1072)",
  [1075] = "Reason Mass Quote Rejection Reason: Invalid Party Role Qualifier For Party Id (1075)",
  [1076] = "Reason Mass Quote Rejection Reason: Missing Clearing Member Code (1076)",
  [1077] = "Reason Mass Quote Rejection Reason: Forbidden Clearing Member Code (1077)",
  [1078] = "Reason Mass Quote Rejection Reason: Invalid Client Id For Sponsored Connection (1078)",
  [1080] = "Reason Mass Quote Rejection Reason: Forbidden Order Capacity Value For Sponsored Connection (1080)",
  [1081] = "Reason Mass Quote Rejection Reason: Market Model Not Supported On Sponsored Connection (1081)",
  [1085] = "Reason Mass Quote Rejection Reason: Invalid Clearing Member Code Length (1085)",
  [1202] = "Reason Mass Quote Rejection Reason: Duplicate Instrument (1202)",
  [1204] = "Reason Mass Quote Rejection Reason: Invalid Quotes Count (1204)",
  [1210] = "Reason Mass Quote Rejection Reason: Forbidden Order Capacity Value (1210)",
  [1212] = "Reason Mass Quote Rejection Reason: Liquidity Provision Activity Flag Not Set For Mass Quote (1212)",
}

gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_quote_rejection_reason.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_quote_rejection_reason.labels[value] or "Reason Mass Quote Rejection Reason: Unknown("..value..")"
end

-- Dissect: Reason Mass Quote Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_quote_rejection_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_quote_rejection_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_quote_rejection_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_mass_quote_rejection_reason, range, value, display)

  return offset + length, value
end

-- Reason Order Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason = {}

-- Size: Reason Order Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.size = 2

-- Display: Reason Order Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.labels = {
  [0] = "Reason Order Rejection Reason: Na (0)",
  [1] = "Reason Order Rejection Reason: Unknown Order (1)",
  [2] = "Reason Order Rejection Reason: Exchange Closed (2)",
  [18] = "Reason Order Rejection Reason: Invalid Price Increment (18)",
  [99] = "Reason Order Rejection Reason: Other (99)",
  [106] = "Reason Order Rejection Reason: Instrument Phase No Trading (106)",
  [1001] = "Reason Order Rejection Reason: Unknown Instrument (1001)",
  [1005] = "Reason Order Rejection Reason: Invalid Execution Trader (1005)",
  [1006] = "Reason Order Rejection Reason: Invalid Decision Maker (1006)",
  [1007] = "Reason Order Rejection Reason: Invalid Client Id (1007)",
  [1008] = "Reason Order Rejection Reason: Invalid Party Role Qualifier For Client Id (1008)",
  [1009] = "Reason Order Rejection Reason: Invalid Party Role Qualifier For Executing Trader (1009)",
  [1010] = "Reason Order Rejection Reason: Invalid Party Role Qualifier For Investment Decision Maker (1010)",
  [1012] = "Reason Order Rejection Reason: Cannot Modify Mifid Flags (1012)",
  [1013] = "Reason Order Rejection Reason: Wrong Display Qty Value (1013)",
  [1014] = "Reason Order Rejection Reason: Invalid Display Qty (1014)",
  [1015] = "Reason Order Rejection Reason: Iceberg Order Value Less Than Required (1015)",
  [1019] = "Reason Order Rejection Reason: Cod Disabled For The Connection Id (1019)",
  [1025] = "Reason Order Rejection Reason: Order Quantity Must Be Greater Than Minimum Quantity (1025)",
  [1026] = "Reason Order Rejection Reason: Order Quantity Must Be Lower Than Maximum Quantity (1026)",
  [1027] = "Reason Order Rejection Reason: Order Price Must Be Greater Than Minimum Price (1027)",
  [1028] = "Reason Order Rejection Reason: Order Price Must Be Lower Than Maximum Price (1028)",
  [1029] = "Reason Order Rejection Reason: Order Price Must Be Nonzero (1029)",
  [1030] = "Reason Order Rejection Reason: Order Value Must Be Greater Than Minimum Value (1030)",
  [1031] = "Reason Order Rejection Reason: Order Value Must Be Lower Than Maximum Value (1031)",
  [1032] = "Reason Order Rejection Reason: Invalid Ord Type For Selected Market Model (1032)",
  [1034] = "Reason Order Rejection Reason: Leaves Quantity Must Be Greater Than Zero After Modification (1034)",
  [1035] = "Reason Order Rejection Reason: Price Not Allowed (1035)",
  [1039] = "Reason Order Rejection Reason: Invalid Time In Force For Order Type (1039)",
  [1040] = "Reason Order Rejection Reason: Invalid Time In Force For Current Market Phase (1040)",
  [1041] = "Reason Order Rejection Reason: Invalid Time In Force For Selected Market Model (1041)",
  [1042] = "Reason Order Rejection Reason: Forbidden Ord Type And Time In Force Combination For Market Segment (1042)",
  [1043] = "Reason Order Rejection Reason: Expire Time Cannot Be Modified (1043)",
  [1044] = "Reason Order Rejection Reason: Obsolete Expire Date (1044)",
  [1045] = "Reason Order Rejection Reason: Expire Date In Past (1045)",
  [1046] = "Reason Order Rejection Reason: Obsolete Expire Time (1046)",
  [1047] = "Reason Order Rejection Reason: Expire Time In Past (1047)",
  [1048] = "Reason Order Rejection Reason: Ambigous Expire (1048)",
  [1049] = "Reason Order Rejection Reason: Expire Date Exceeds Limit (1049)",
  [1037] = "Reason Order Rejection Reason: Price Below Low Collar (1037)",
  [1038] = "Reason Order Rejection Reason: Price Above High Collar (1038)",
  [1050] = "Reason Order Rejection Reason: Firm Is Not A Market Maker (1050)",
  [1055] = "Reason Order Rejection Reason: Missing Order Origination For Sponsored Access Connection (1055)",
  [1056] = "Reason Order Rejection Reason: Operation On Redistributed Instruments Forbidden (1056)",
  [1057] = "Reason Order Rejection Reason: Firm Not Authorized To Buy And Sell The Instrument (1057)",
  [1058] = "Reason Order Rejection Reason: Firm Not Authorized To Buy The Instrument (1058)",
  [1059] = "Reason Order Rejection Reason: Firm Not Authorized To Sell The Instrument (1059)",
  [1060] = "Reason Order Rejection Reason: Operations On Orders And Quotes Forbidden During Uncrossing (1060)",
  [1061] = "Reason Order Rejection Reason: Operations On Orders And Quotes Forbidden During Instrument Suspension (1061)",
  [1062] = "Reason Order Rejection Reason: Operations On Orders And Quotes Forbidden Due To Drop Copy Disconnection (1062)",
  [1063] = "Reason Order Rejection Reason: Trigger Price Not Allowed (1063)",
  [1064] = "Reason Order Rejection Reason: Trigger Price Not Higher Than Ltp (1064)",
  [1065] = "Reason Order Rejection Reason: Trigger Price Not Lower Than Ltp (1065)",
  [1066] = "Reason Order Rejection Reason: Trigger Price Lower Than Price (1066)",
  [1067] = "Reason Order Rejection Reason: Trigger Price Higher Than Price (1067)",
  [1068] = "Reason Order Rejection Reason: Trigger Price Modified For Activated Order (1068)",
  [1069] = "Reason Order Rejection Reason: Trigger Price Must Be Greater Than Zero (1069)",
  [1070] = "Reason Order Rejection Reason: Invalid Party Id For Client Id (1070)",
  [1071] = "Reason Order Rejection Reason: Invalid Party Id For Executing Trader (1071)",
  [1072] = "Reason Order Rejection Reason: Invalid Party Id For Investment Decision Maker (1072)",
  [1075] = "Reason Order Rejection Reason: Invalid Party Role Qualifier For Party Id (1075)",
  [1076] = "Reason Order Rejection Reason: Missing Clearing Member Code (1076)",
  [1077] = "Reason Order Rejection Reason: Forbidden Clearing Member Code (1077)",
  [1078] = "Reason Order Rejection Reason: Invalid Client Id For Sponsored Connection (1078)",
  [1079] = "Reason Order Rejection Reason: Invalid Ord Type For Sponsored Connection (1079)",
  [1080] = "Reason Order Rejection Reason: Forbidden Order Capacity Value For Sponsored Connection (1080)",
  [1081] = "Reason Order Rejection Reason: Market Model Not Supported On Sponsored Connection (1081)",
  [1083] = "Reason Order Rejection Reason: Invalid Time In Force For Sponsored Connection (1083)",
  [1084] = "Reason Order Rejection Reason: Operation Forbidden During Early Late Monitoring (1084)",
  [1085] = "Reason Order Rejection Reason: Invalid Clearing Member Code Length (1085)",
  [1086] = "Reason Order Rejection Reason: Operation Unsuccessful Retry Needed (1086)",
  [1201] = "Reason Order Rejection Reason: Mass Quote Not Allowed For Selected Market Model (1201)",
  [1203] = "Reason Order Rejection Reason: Instrument Closed (1203)",
  [1208] = "Reason Order Rejection Reason: Invalid Bid Ask Spread (1208)",
  [1209] = "Reason Order Rejection Reason: Not Authorized To Quote Instrument (1209)",
  [1301] = "Reason Order Rejection Reason: Buy Order Not Allowed (1301)",
  [1307] = "Reason Order Rejection Reason: Stop Orders Not Allowed (1307)",
  [1308] = "Reason Order Rejection Reason: Trigger Price Must Be Higher Than Lp Sell Quote (1308)",
  [1309] = "Reason Order Rejection Reason: Trigger Price Must Be Lower Than Lp Buy Quote (1309)",
  [1310] = "Reason Order Rejection Reason: Market Making Via Mass Quote Only On Hybrid Market (1310)",
  [1311] = "Reason Order Rejection Reason: Sell Quotes Not Allowed During Buy Only State (1311)",
  [1312] = "Reason Order Rejection Reason: Instrument Knocked Out (1312)",
  [1401] = "Reason Order Rejection Reason: Only One Sell Order Is Allowed For Ipo (1401)",
  [1402] = "Reason Order Rejection Reason: Only One Buy Order Is Allowed For Tender (1402)",
  [2026] = "Reason Order Rejection Reason: Request Not Allowed For Block Instrument (2026)",
  [2028] = "Reason Order Rejection Reason: Request Not Allowed For Cross Instrument (2028)",
  [7000] = "Reason Order Rejection Reason: Risk Limit Not Defined (7000)",
  [7001] = "Reason Order Rejection Reason: Risk Maximum Order Volume Exceeded (7001)",
  [7002] = "Reason Order Rejection Reason: Risk Maximum Order Value Exceeded (7002)",
  [7003] = "Reason Order Rejection Reason: Risk Order Price Collar Exceeded (7003)",
  [7004] = "Reason Order Rejection Reason: Dynamic Order Price Collar Not Defined (7004)",
  [7005] = "Reason Order Rejection Reason: Static Order Price Collar Not Defined (7005)",
  [7011] = "Reason Order Rejection Reason: Total Traded Value Exceeded (7011)",
  [7012] = "Reason Order Rejection Reason: Total Traded Buy Value Exceeded (7012)",
  [7013] = "Reason Order Rejection Reason: Total Traded Sell Value Exceeded (7013)",
  [7014] = "Reason Order Rejection Reason: Total Open Value Exceeded (7014)",
  [7015] = "Reason Order Rejection Reason: Total Open Buy Value Exceeded (7015)",
  [7016] = "Reason Order Rejection Reason: Total Open Sell Value Exceeded (7016)",
  [7017] = "Reason Order Rejection Reason: Total Risk Value Exceeded (7017)",
  [7018] = "Reason Order Rejection Reason: Total Buy Risk Value Exceeded (7018)",
  [7019] = "Reason Order Rejection Reason: Total Sell Risk Value Exceeded (7019)",
  [7020] = "Reason Order Rejection Reason: Total Net Risk Value Exceeded (7020)",
  [7021] = "Reason Order Rejection Reason: Max Order Count Exceeded (7021)",
  [7022] = "Reason Order Rejection Reason: Rejected Due To Kill Switch Activation (7022)",
}

gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.labels[value] or "Reason Order Rejection Reason: Unknown("..value..")"
end

-- Dissect: Reason Order Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_order_rejection_reason, range, value, display)

  return offset + length, value
end

-- Reason Request For Execution Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_request_for_execution_reason = {}

-- Size: Reason Request For Execution Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_request_for_execution_reason.size = 1

-- Display: Reason Request For Execution Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_request_for_execution_reason.labels = {
  [1] = "Reason Request For Execution Reason: Passive Quote (1)",
  [2] = "Reason Request For Execution Reason: Aggressive Quote (2)",
}

gpw_wse_orderentry_wats_v1_7_6_20.reason_request_for_execution_reason.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.reason_request_for_execution_reason.labels[value] or "Reason Request For Execution Reason: Unknown("..value..")"
end

-- Dissect: Reason Request For Execution Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_request_for_execution_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.reason_request_for_execution_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.reason_request_for_execution_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_request_for_execution_reason, range, value, display)

  return offset + length, value
end

-- Reason Tcr Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_tcr_rejection_reason = {}

-- Size: Reason Tcr Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_tcr_rejection_reason.size = 2

-- Display: Reason Tcr Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_tcr_rejection_reason.labels = {
  [1] = "Reason Tcr Rejection Reason: Na (1)",
  [2] = "Reason Tcr Rejection Reason: Exchange Closed (2)",
  [18] = "Reason Tcr Rejection Reason: Invalid Price Increment (18)",
  [99] = "Reason Tcr Rejection Reason: Other (99)",
  [106] = "Reason Tcr Rejection Reason: Instrument Phase No Trading (106)",
  [1001] = "Reason Tcr Rejection Reason: Unknown Instrument (1001)",
  [1005] = "Reason Tcr Rejection Reason: Invalid Execution Trader (1005)",
  [1006] = "Reason Tcr Rejection Reason: Invalid Decision Maker (1006)",
  [1007] = "Reason Tcr Rejection Reason: Invalid Client Id (1007)",
  [1008] = "Reason Tcr Rejection Reason: Invalid Party Role Qualifier For Client Id (1008)",
  [1009] = "Reason Tcr Rejection Reason: Invalid Party Role Qualifier For Executing Trader (1009)",
  [1010] = "Reason Tcr Rejection Reason: Invalid Party Role Qualifier For Investment Decision Maker (1010)",
  [1025] = "Reason Tcr Rejection Reason: Order Quantity Must Be Greater Than Minimum Quantity (1025)",
  [1026] = "Reason Tcr Rejection Reason: Order Quantity Must Be Lower Than Maximum Quantity (1026)",
  [1027] = "Reason Tcr Rejection Reason: Order Price Must Be Greater Than Minimum Price (1027)",
  [1028] = "Reason Tcr Rejection Reason: Order Price Must Be Lower Than Maximum Price (1028)",
  [1029] = "Reason Tcr Rejection Reason: Order Price Must Be Nonzero (1029)",
  [1030] = "Reason Tcr Rejection Reason: Order Value Must Be Greater Than Minimum Value (1030)",
  [1031] = "Reason Tcr Rejection Reason: Order Value Must Be Lower Than Maximum Value (1031)",
  [1037] = "Reason Tcr Rejection Reason: Price Below Low Collar (1037)",
  [1038] = "Reason Tcr Rejection Reason: Price Above High Collar (1038)",
  [1050] = "Reason Tcr Rejection Reason: Firm Is Not A Market Maker (1050)",
  [1056] = "Reason Tcr Rejection Reason: Operation On Redistributed Instruments Forbidden (1056)",
  [1057] = "Reason Tcr Rejection Reason: Firm Not Authorized To Buy And Sell The Instrument (1057)",
  [1058] = "Reason Tcr Rejection Reason: Firm Not Authorized To Buy The Instrument (1058)",
  [1059] = "Reason Tcr Rejection Reason: Firm Not Authorized To Sell The Instrument (1059)",
  [1061] = "Reason Tcr Rejection Reason: Operations On Orders And Quotes Forbidden During Instrument Suspension (1061)",
  [1070] = "Reason Tcr Rejection Reason: Invalid Party Id For Client Id (1070)",
  [1071] = "Reason Tcr Rejection Reason: Invalid Party Id For Executing Trader (1071)",
  [1072] = "Reason Tcr Rejection Reason: Invalid Party Id For Investment Decision Maker (1072)",
  [1075] = "Reason Tcr Rejection Reason: Invalid Party Role Qualifier For Party Id (1075)",
  [1076] = "Reason Tcr Rejection Reason: Missing Clearing Member Code (1076)",
  [1077] = "Reason Tcr Rejection Reason: Forbidden Clearing Member Code (1077)",
  [1081] = "Reason Tcr Rejection Reason: Market Model Not Supported On Sponsored Connection (1081)",
  [1084] = "Reason Tcr Rejection Reason: Operation Forbidden During Early Late Monitoring (1084)",
  [1085] = "Reason Tcr Rejection Reason: Invalid Clearing Member Code Length (1085)",
  [1209] = "Reason Tcr Rejection Reason: Not Authorized To Quote Instrument (1209)",
  [2001] = "Reason Tcr Rejection Reason: Unknown Trade Report (2001)",
  [2002] = "Reason Tcr Rejection Reason: Duplicate Trade Report Id (2002)",
  [2005] = "Reason Tcr Rejection Reason: Trade Report Type Not Compatible With Trade Report Trans Type (2005)",
  [2008] = "Reason Tcr Rejection Reason: Invalid Exec Type (2008)",
  [2009] = "Reason Tcr Rejection Reason: Trade Report Ref Id Not Allowed (2009)",
  [2015] = "Reason Tcr Rejection Reason: Settlement Date Cannot Be Earlier Than Minimum Settlement Date (2015)",
  [2016] = "Reason Tcr Rejection Reason: Settlement Date Cannot Be Later Than Maximum Settlement Date (2016)",
  [2017] = "Reason Tcr Rejection Reason: Settlement Date Must Be A Settlement Day (2017)",
  [2022] = "Reason Tcr Rejection Reason: Unknown Contra Firm (2022)",
  [2024] = "Reason Tcr Rejection Reason: Sent Attribute Does Not Match Original Value (2024)",
  [2026] = "Reason Tcr Rejection Reason: Request Not Allowed For Block Instrument (2026)",
  [2027] = "Reason Tcr Rejection Reason: Request Not Allowed For Clob Instrument (2027)",
  [2028] = "Reason Tcr Rejection Reason: Request Not Allowed For Cross Instrument (2028)",
  [2030] = "Reason Tcr Rejection Reason: Cross Not Allowed Outside Of Clob Instrument Spread (2030)",
  [2031] = "Reason Tcr Rejection Reason: Cross Price Not Equal To The Reference Price (2031)",
  [2032] = "Reason Tcr Rejection Reason: Cross Not Allowed During Clob Instrument Auction Or Suspension (2032)",
  [2033] = "Reason Tcr Rejection Reason: Forbidden Secondary Tradereport Id (2033)",
  [2034] = "Reason Tcr Rejection Reason: Unknown Secondary Tradereport Id (2034)",
  [2035] = "Reason Tcr Rejection Reason: No Trade For Clob Reference Instrument (2035)",
}

gpw_wse_orderentry_wats_v1_7_6_20.reason_tcr_rejection_reason.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.reason_tcr_rejection_reason.labels[value] or "Reason Tcr Rejection Reason: Unknown("..value..")"
end

-- Dissect: Reason Tcr Rejection Reason
gpw_wse_orderentry_wats_v1_7_6_20.reason_tcr_rejection_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.reason_tcr_rejection_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.reason_tcr_rejection_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reason_tcr_rejection_reason, range, value, display)

  return offset + length, value
end

-- Ref Id
gpw_wse_orderentry_wats_v1_7_6_20.ref_id = {}

-- Size: Ref Id
gpw_wse_orderentry_wats_v1_7_6_20.ref_id.size = 4

-- Display: Ref Id
gpw_wse_orderentry_wats_v1_7_6_20.ref_id.display = function(value)
  return "Ref Id: "..value
end

-- Dissect: Ref Id
gpw_wse_orderentry_wats_v1_7_6_20.ref_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.ref_id, range, value, display)

  return offset + length, value
end

-- Ref Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.ref_seq_num = {}

-- Size: Ref Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.ref_seq_num.size = 4

-- Display: Ref Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.ref_seq_num.display = function(value)
  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
gpw_wse_orderentry_wats_v1_7_6_20.ref_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.ref_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.ref_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Reject Reason
gpw_wse_orderentry_wats_v1_7_6_20.reject_reason = {}

-- Size: Reject Reason
gpw_wse_orderentry_wats_v1_7_6_20.reject_reason.size = 1

-- Display: Reject Reason
gpw_wse_orderentry_wats_v1_7_6_20.reject_reason.labels = {
  [0] = "Reject Reason: Na (0)",
  [1] = "Reject Reason: Max Throughput Exceeded (1)",
  [2] = "Reject Reason: Invalid Msg Type (2)",
  [3] = "Reject Reason: Invalid Expire Time Precision (3)",
  [4] = "Reject Reason: Invalid Settlement Date (4)",
  [5] = "Reject Reason: Settlement Date Required (5)",
  [6] = "Reject Reason: Trade Report Id Required (6)",
  [7] = "Reject Reason: Missing Report Id Secondary Trade Report Id Or Trade Report Ref Id (7)",
  [8] = "Reject Reason: Invalid Trade Id (8)",
  [9] = "Reject Reason: Invalid Algorithmic Trade Indicator (9)",
  [10] = "Reject Reason: Invalid Trade Report Id (10)",
  [11] = "Reject Reason: Invalid Gap Fill Seq Num (11)",
}

gpw_wse_orderentry_wats_v1_7_6_20.reject_reason.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.reject_reason.labels[value] or "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
gpw_wse_orderentry_wats_v1_7_6_20.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Rejection Code
gpw_wse_orderentry_wats_v1_7_6_20.rejection_code = {}

-- Size: Rejection Code
gpw_wse_orderentry_wats_v1_7_6_20.rejection_code.size = 2

-- Display: Rejection Code
gpw_wse_orderentry_wats_v1_7_6_20.rejection_code.labels = {
  [99] = "Rejection Code: Other (99)",
  [1001] = "Rejection Code: Unknown Instrument (1001)",
  [1304] = "Rejection Code: Firm Not Authorized For Mm Command (1304)",
  [1313] = "Rejection Code: Instrument Already Knocked Out (1313)",
  [1314] = "Rejection Code: Mm Cannot Revoke Market Operation Knock Out (1314)",
  [1315] = "Rejection Code: Knock Out Or Revoke Knock Out Operations Not Allowed During Instrument Suspension (1315)",
  [1316] = "Rejection Code: Revoke Knock Out Operations Not Allowed Once Barrier Is Reached (1316)",
  [1317] = "Rejection Code: Mm Command Not Allowed For Selected Market Model (1317)",
  [1318] = "Rejection Code: Revoke Knock Out Operations Not Allowed For Active Instrument (1318)",
  [2026] = "Rejection Code: Request Not Allowed For Block Instrument (2026)",
  [2027] = "Rejection Code: Request Not Allowed For Clob Instrument (2027)",
  [2028] = "Rejection Code: Request Not Allowed For Cross Instrument (2028)",
  [3002] = "Rejection Code: Exchange Closed (3002)",
  [3009] = "Rejection Code: Firm Not Authorized To Quote Instrument (3009)",
  [3020] = "Rejection Code: Command Not Allowed In Current State (3020)",
}

gpw_wse_orderentry_wats_v1_7_6_20.rejection_code.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.rejection_code.labels[value] or "Rejection Code: Unknown("..value..")"
end

-- Dissect: Rejection Code
gpw_wse_orderentry_wats_v1_7_6_20.rejection_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.rejection_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.rejection_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.rejection_code, range, value, display)

  return offset + length, value
end

-- Result Command Result
gpw_wse_orderentry_wats_v1_7_6_20.result_command_result = {}

-- Size: Result Command Result
gpw_wse_orderentry_wats_v1_7_6_20.result_command_result.size = 1

-- Display: Result Command Result
gpw_wse_orderentry_wats_v1_7_6_20.result_command_result.labels = {
  [1] = "Result Command Result: Success (1)",
  [2] = "Result Command Result: Failure (2)",
}

gpw_wse_orderentry_wats_v1_7_6_20.result_command_result.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.result_command_result.labels[value] or "Result Command Result: Unknown("..value..")"
end

-- Dissect: Result Command Result
gpw_wse_orderentry_wats_v1_7_6_20.result_command_result.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.result_command_result.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.result_command_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.result_command_result, range, value, display)

  return offset + length, value
end

-- Result Login Result
gpw_wse_orderentry_wats_v1_7_6_20.result_login_result = {}

-- Size: Result Login Result
gpw_wse_orderentry_wats_v1_7_6_20.result_login_result.size = 1

-- Display: Result Login Result
gpw_wse_orderentry_wats_v1_7_6_20.result_login_result.labels = {
  [1] = "Result Login Result: Ok (1)",
  [2] = "Result Login Result: Not Found (2)",
  [3] = "Result Login Result: Invalid Token (3)",
  [4] = "Result Login Result: Already Logged In (4)",
  [5] = "Result Login Result: Account Locked (5)",
  [6] = "Result Login Result: Login Not Allowed (6)",
  [7] = "Result Login Result: Invalid Login Parameters (7)",
  [8] = "Result Login Result: Throttling Temporary Lock (8)",
  [9] = "Result Login Result: Other (9)",
}

gpw_wse_orderentry_wats_v1_7_6_20.result_login_result.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.result_login_result.labels[value] or "Result Login Result: Unknown("..value..")"
end

-- Dissect: Result Login Result
gpw_wse_orderentry_wats_v1_7_6_20.result_login_result.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.result_login_result.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.result_login_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.result_login_result, range, value, display)

  return offset + length, value
end

-- Scenario Name
gpw_wse_orderentry_wats_v1_7_6_20.scenario_name = {}

-- Size: Scenario Name
gpw_wse_orderentry_wats_v1_7_6_20.scenario_name.size = 200

-- Display: Scenario Name
gpw_wse_orderentry_wats_v1_7_6_20.scenario_name.display = function(value)
  return "Scenario Name: "..value
end

-- Dissect: Scenario Name
gpw_wse_orderentry_wats_v1_7_6_20.scenario_name.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.scenario_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.scenario_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.scenario_name, range, value, display)

  return offset + length, value
end

-- Sequence Number
gpw_wse_orderentry_wats_v1_7_6_20.sequence_number = {}

-- Size: Sequence Number
gpw_wse_orderentry_wats_v1_7_6_20.sequence_number.size = 4

-- Display: Sequence Number
gpw_wse_orderentry_wats_v1_7_6_20.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
gpw_wse_orderentry_wats_v1_7_6_20.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
gpw_wse_orderentry_wats_v1_7_6_20.session_id = {}

-- Size: Session Id
gpw_wse_orderentry_wats_v1_7_6_20.session_id.size = 2

-- Display: Session Id
gpw_wse_orderentry_wats_v1_7_6_20.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
gpw_wse_orderentry_wats_v1_7_6_20.session_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.session_id, range, value, display)

  return offset + length, value
end

-- Settlement Date
gpw_wse_orderentry_wats_v1_7_6_20.settlement_date = {}

-- Size: Settlement Date
gpw_wse_orderentry_wats_v1_7_6_20.settlement_date.size = 4

-- Display: Settlement Date
gpw_wse_orderentry_wats_v1_7_6_20.settlement_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Settlement Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Settlement Date
gpw_wse_orderentry_wats_v1_7_6_20.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Short Code
gpw_wse_orderentry_wats_v1_7_6_20.short_code = {}

-- Size: Short Code
gpw_wse_orderentry_wats_v1_7_6_20.short_code.size = 4

-- Display: Short Code
gpw_wse_orderentry_wats_v1_7_6_20.short_code.display = function(value)
  return "Short Code: "..value
end

-- Dissect: Short Code
gpw_wse_orderentry_wats_v1_7_6_20.short_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.short_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.short_code, range, value, display)

  return offset + length, value
end

-- Side
gpw_wse_orderentry_wats_v1_7_6_20.side = {}

-- Size: Side
gpw_wse_orderentry_wats_v1_7_6_20.side.size = 1

-- Display: Side
gpw_wse_orderentry_wats_v1_7_6_20.side.labels = {
  [1] = "Side: Buy (1)",
  [2] = "Side: Sell (2)",
}

gpw_wse_orderentry_wats_v1_7_6_20.side.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
gpw_wse_orderentry_wats_v1_7_6_20.side.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.side, range, value, display)

  return offset + length, value
end

-- Source Timestamp
gpw_wse_orderentry_wats_v1_7_6_20.source_timestamp = {}

-- Size: Source Timestamp
gpw_wse_orderentry_wats_v1_7_6_20.source_timestamp.size = 8

-- Dissect: Source Timestamp
gpw_wse_orderentry_wats_v1_7_6_20.source_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.source_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.source_timestamp
  if gpw_wse_orderentry_wats_v1_7_6_20.absolute_time_base == 1 then field = omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.source_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Status Mass Quote Status
gpw_wse_orderentry_wats_v1_7_6_20.status_mass_quote_status = {}

-- Size: Status Mass Quote Status
gpw_wse_orderentry_wats_v1_7_6_20.status_mass_quote_status.size = 1

-- Display: Status Mass Quote Status
gpw_wse_orderentry_wats_v1_7_6_20.status_mass_quote_status.labels = {
  [1] = "Status Mass Quote Status: Accepted (1)",
  [2] = "Status Mass Quote Status: Rejected (2)",
}

gpw_wse_orderentry_wats_v1_7_6_20.status_mass_quote_status.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.status_mass_quote_status.labels[value] or "Status Mass Quote Status: Unknown("..value..")"
end

-- Dissect: Status Mass Quote Status
gpw_wse_orderentry_wats_v1_7_6_20.status_mass_quote_status.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.status_mass_quote_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.status_mass_quote_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.status_mass_quote_status, range, value, display)

  return offset + length, value
end

-- Status Order Status
gpw_wse_orderentry_wats_v1_7_6_20.status_order_status = {}

-- Size: Status Order Status
gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.size = 1

-- Display: Status Order Status
gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.labels = {
  [1] = "Status Order Status: New (1)",
  [2] = "Status Order Status: Cancelled (2)",
  [3] = "Status Order Status: Rejected (3)",
  [4] = "Status Order Status: Filled (4)",
  [5] = "Status Order Status: Partially Filled (5)",
  [6] = "Status Order Status: Expired (6)",
}

gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.labels[value] or "Status Order Status: Unknown("..value..")"
end

-- Dissect: Status Order Status
gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.status_order_status, range, value, display)

  return offset + length, value
end

-- Status Tcr Status
gpw_wse_orderentry_wats_v1_7_6_20.status_tcr_status = {}

-- Size: Status Tcr Status
gpw_wse_orderentry_wats_v1_7_6_20.status_tcr_status.size = 1

-- Display: Status Tcr Status
gpw_wse_orderentry_wats_v1_7_6_20.status_tcr_status.labels = {
  [1] = "Status Tcr Status: New (1)",
  [2] = "Status Tcr Status: Accepted (2)",
  [3] = "Status Tcr Status: Rejected (3)",
  [4] = "Status Tcr Status: Cancelled (4)",
}

gpw_wse_orderentry_wats_v1_7_6_20.status_tcr_status.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.status_tcr_status.labels[value] or "Status Tcr Status: Unknown("..value..")"
end

-- Dissect: Status Tcr Status
gpw_wse_orderentry_wats_v1_7_6_20.status_tcr_status.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.status_tcr_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.status_tcr_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.status_tcr_status, range, value, display)

  return offset + length, value
end

-- Stp Id
gpw_wse_orderentry_wats_v1_7_6_20.stp_id = {}

-- Size: Stp Id
gpw_wse_orderentry_wats_v1_7_6_20.stp_id.size = 1

-- Display: Stp Id
gpw_wse_orderentry_wats_v1_7_6_20.stp_id.display = function(value)
  return "Stp Id: "..value
end

-- Dissect: Stp Id
gpw_wse_orderentry_wats_v1_7_6_20.stp_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.stp_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.stp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.stp_id, range, value, display)

  return offset + length, value
end

-- Target Party Id
gpw_wse_orderentry_wats_v1_7_6_20.target_party_id = {}

-- Size: Target Party Id
gpw_wse_orderentry_wats_v1_7_6_20.target_party_id.size = 4

-- Display: Target Party Id
gpw_wse_orderentry_wats_v1_7_6_20.target_party_id.display = function(value)
  return "Target Party Id: "..value
end

-- Dissect: Target Party Id
gpw_wse_orderentry_wats_v1_7_6_20.target_party_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.target_party_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.target_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.target_party_id, range, value, display)

  return offset + length, value
end

-- Target Party Role
gpw_wse_orderentry_wats_v1_7_6_20.target_party_role = {}

-- Size: Target Party Role
gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.size = 1

-- Display: Target Party Role
gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.labels = {
  [0] = "Target Party Role: None (0)",
  [35] = "Target Party Role: Liquidity Provider (35)",
  [54] = "Target Party Role: Sender Location (54)",
  [66] = "Target Party Role: Market Maker (66)",
  [3] = "Target Party Role: Client Id (3)",
  [12] = "Target Party Role: Executing Trader (12)",
  [122] = "Target Party Role: Investment Decision Maker (122)",
}

gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.labels[value] or "Target Party Role: Unknown("..value..")"
end

-- Dissect: Target Party Role
gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.target_party_role, range, value, display)

  return offset + length, value
end

-- Target Timestamp
gpw_wse_orderentry_wats_v1_7_6_20.target_timestamp = {}

-- Size: Target Timestamp
gpw_wse_orderentry_wats_v1_7_6_20.target_timestamp.size = 8

-- Dissect: Target Timestamp
gpw_wse_orderentry_wats_v1_7_6_20.target_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.target_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.target_timestamp
  if gpw_wse_orderentry_wats_v1_7_6_20.absolute_time_base == 1 then field = omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.target_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Time In Force
gpw_wse_orderentry_wats_v1_7_6_20.time_in_force = {}

-- Size: Time In Force
gpw_wse_orderentry_wats_v1_7_6_20.time_in_force.size = 1

-- Display: Time In Force
gpw_wse_orderentry_wats_v1_7_6_20.time_in_force.labels = {
  [1] = "Time In Force: Day (1)",
  [2] = "Time In Force: Gtc (2)",
  [3] = "Time In Force: Ioc (3)",
  [4] = "Time In Force: Fok (4)",
  [5] = "Time In Force: Vfa (5)",
  [6] = "Time In Force: Gtd (6)",
  [7] = "Time In Force: Vfc (7)",
  [8] = "Time In Force: Gtt (8)",
}

gpw_wse_orderentry_wats_v1_7_6_20.time_in_force.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
gpw_wse_orderentry_wats_v1_7_6_20.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
gpw_wse_orderentry_wats_v1_7_6_20.timestamp = {}

-- Size: Timestamp
gpw_wse_orderentry_wats_v1_7_6_20.timestamp.size = 8

-- Dissect: Timestamp
gpw_wse_orderentry_wats_v1_7_6_20.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.timestamp
  if gpw_wse_orderentry_wats_v1_7_6_20.absolute_time_base == 1 then field = omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Token
gpw_wse_orderentry_wats_v1_7_6_20.token = {}

-- Size: Token
gpw_wse_orderentry_wats_v1_7_6_20.token.size = 8

-- Display: Token
gpw_wse_orderentry_wats_v1_7_6_20.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
gpw_wse_orderentry_wats_v1_7_6_20.token.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.token, range, value, display)

  return offset + length, value
end

-- Total Affected Orders
gpw_wse_orderentry_wats_v1_7_6_20.total_affected_orders = {}

-- Size: Total Affected Orders
gpw_wse_orderentry_wats_v1_7_6_20.total_affected_orders.size = 8

-- Display: Total Affected Orders
gpw_wse_orderentry_wats_v1_7_6_20.total_affected_orders.display = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
gpw_wse_orderentry_wats_v1_7_6_20.total_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.total_affected_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.total_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Total Bid Size
gpw_wse_orderentry_wats_v1_7_6_20.total_bid_size = {}

-- Size: Total Bid Size
gpw_wse_orderentry_wats_v1_7_6_20.total_bid_size.size = 8

-- Display: Total Bid Size
gpw_wse_orderentry_wats_v1_7_6_20.total_bid_size.display = function(value)
  return "Total Bid Size: "..value
end

-- Dissect: Total Bid Size
gpw_wse_orderentry_wats_v1_7_6_20.total_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.total_bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.total_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.total_bid_size, range, value, display)

  return offset + length, value
end

-- Total Offer Size
gpw_wse_orderentry_wats_v1_7_6_20.total_offer_size = {}

-- Size: Total Offer Size
gpw_wse_orderentry_wats_v1_7_6_20.total_offer_size.size = 8

-- Display: Total Offer Size
gpw_wse_orderentry_wats_v1_7_6_20.total_offer_size.display = function(value)
  return "Total Offer Size: "..value
end

-- Dissect: Total Offer Size
gpw_wse_orderentry_wats_v1_7_6_20.total_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.total_offer_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.total_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.total_offer_size, range, value, display)

  return offset + length, value
end

-- Trade Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_id = {}

-- Size: Trade Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_id.size = 4

-- Display: Trade Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Report Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id = {}

-- Size: Trade Report Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.size = 21

-- Display: Trade Report Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.display = function(value)
  return "Trade Report Id: "..value
end

-- Dissect: Trade Report Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_report_id, range, value, display)

  return offset + length, value
end

-- Trade Report Ref Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_ref_id = {}

-- Size: Trade Report Ref Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_ref_id.size = 21

-- Display: Trade Report Ref Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_ref_id.display = function(value)
  return "Trade Report Ref Id: "..value
end

-- Dissect: Trade Report Ref Id
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_ref_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_report_ref_id, range, value, display)

  return offset + length, value
end

-- Trade Report Trans Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type = {}

-- Size: Trade Report Trans Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.size = 1

-- Display: Trade Report Trans Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.labels = {
  [1] = "Trade Report Trans Type: New (1)",
  [2] = "Trade Report Trans Type: Cancel (2)",
  [3] = "Trade Report Trans Type: Replace (3)",
}

gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.labels[value] or "Trade Report Trans Type: Unknown("..value..")"
end

-- Dissect: Trade Report Trans Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_report_trans_type, range, value, display)

  return offset + length, value
end

-- Trade Report Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type = {}

-- Size: Trade Report Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.size = 1

-- Display: Trade Report Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.labels = {
  [1] = "Trade Report Type: Submit (1)",
  [2] = "Trade Report Type: Alleged (2)",
  [3] = "Trade Report Type: Accept (3)",
  [4] = "Trade Report Type: Decline (4)",
  [7] = "Trade Report Type: Trade Report Cancel (7)",
  [8] = "Trade Report Type: Trade Break (8)",
}

gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.labels[value] or "Trade Report Type: Unknown("..value..")"
end

-- Dissect: Trade Report Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_report_type, range, value, display)

  return offset + length, value
end

-- Trade Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_type = {}

-- Size: Trade Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_type.size = 1

-- Display: Trade Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_type.labels = {
  [22] = "Trade Type: Privately Negotiated Trade (22)",
  [38] = "Trade Type: Block Trade (38)",
}

gpw_wse_orderentry_wats_v1_7_6_20.trade_type.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
gpw_wse_orderentry_wats_v1_7_6_20.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Session Event
gpw_wse_orderentry_wats_v1_7_6_20.trading_session_event = {}

-- Size: Trading Session Event
gpw_wse_orderentry_wats_v1_7_6_20.trading_session_event.size = 1

-- Display: Trading Session Event
gpw_wse_orderentry_wats_v1_7_6_20.trading_session_event.labels = {
  [1] = "Trading Session Event: Previous Day Restate Start (1)",
  [2] = "Trading Session Event: Previous Day Restate End (2)",
  [3] = "Trading Session Event: Start Of Trading Session Mic (3)",
  [4] = "Trading Session Event: End Of Trading Session Mic (4)",
}

gpw_wse_orderentry_wats_v1_7_6_20.trading_session_event.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.trading_session_event.labels[value] or "Trading Session Event: Unknown("..value..")"
end

-- Dissect: Trading Session Event
gpw_wse_orderentry_wats_v1_7_6_20.trading_session_event.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.trading_session_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.trading_session_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trading_session_event, range, value, display)

  return offset + length, value
end

-- Trigger Price
gpw_wse_orderentry_wats_v1_7_6_20.trigger_price = {}

-- Size: Trigger Price
gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.size = 8

-- Display: Trigger Price
gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.display = function(value)
  return "Trigger Price: "..value
end

-- Translate: Trigger Price
gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trigger Price
gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.translate(raw)
  local display = gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trigger_price, range, value, display)

  return offset + length, value
end

-- Update Type
gpw_wse_orderentry_wats_v1_7_6_20.update_type = {}

-- Size: Update Type
gpw_wse_orderentry_wats_v1_7_6_20.update_type.size = 1

-- Display: Update Type
gpw_wse_orderentry_wats_v1_7_6_20.update_type.labels = {
  [1] = "Update Type: Ipo (1)",
  [2] = "Update Type: Tender Offer (2)",
}

gpw_wse_orderentry_wats_v1_7_6_20.update_type.display = function(value)
  return gpw_wse_orderentry_wats_v1_7_6_20.update_type.labels[value] or "Update Type: Unknown("..value..")"
end

-- Dissect: Update Type
gpw_wse_orderentry_wats_v1_7_6_20.update_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.update_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.update_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.update_type, range, value, display)

  return offset + length, value
end

-- Version
gpw_wse_orderentry_wats_v1_7_6_20.version = {}

-- Size: Version
gpw_wse_orderentry_wats_v1_7_6_20.version.size = 2

-- Display: Version
gpw_wse_orderentry_wats_v1_7_6_20.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
gpw_wse_orderentry_wats_v1_7_6_20.version.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderentry_wats_v1_7_6_20.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Gpw Wse OrderEntry Wats 1.7.6.20
-----------------------------------------------------------------------

-- Trade Bust
gpw_wse_orderentry_wats_v1_7_6_20.trade_bust = {}

-- Size: Trade Bust
gpw_wse_orderentry_wats_v1_7_6_20.trade_bust.size =
  gpw_wse_orderentry_wats_v1_7_6_20.trade_id.size

-- Display: Trade Bust
gpw_wse_orderentry_wats_v1_7_6_20.trade_bust.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust
gpw_wse_orderentry_wats_v1_7_6_20.trade_bust.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Id: TradeId
  index, trade_id = gpw_wse_orderentry_wats_v1_7_6_20.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust
gpw_wse_orderentry_wats_v1_7_6_20.trade_bust.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_bust, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.trade_bust.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.trade_bust.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.trade_bust.fields(buffer, offset, packet, parent)
  end
end

-- Secondary Trade Report Id
gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id = {}

-- Size: Secondary Trade Report Id
gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.size = 8

-- Display: Secondary Trade Report Id
gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.display = function(range, value, packet, parent)
  local flags = {}

  -- Seq Num: 28 Bits
  flags[#flags + 1] = "Seq Num: "..value:band(0x000000000FFFFFFF):rshift(0)
  -- Bulk Seq Num: 8 Bits
  flags[#flags + 1] = "Bulk Seq Num: "..value:band(0x0000000FF0000000):rshift(28)
  -- Session Id Order Id: 14 Bits
  flags[#flags + 1] = "Session Id Order Id: "..value:band(0x0003FFF000000000):rshift(36)
  -- Connection Id Order Id: 14 Bits
  flags[#flags + 1] = "Connection Id Order Id: "..value:band(UInt64(0x00000000, 0xFFFC0000)):rshift(50)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Secondary Trade Report Id
gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.bits = function(range, value, packet, parent)

  -- Seq Num: 28 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.seq_num, range, value)

  -- Bulk Seq Num: 8 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bulk_seq_num, range, value)

  -- Session Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.session_id_order_id, range, value)

  -- Connection Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_id_order_id, range, value)
end

-- Dissect: Secondary Trade Report Id
gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.display(range, value, packet, parent)
  local element = parent:add_le(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.secondary_trade_report_id, range, display)

  if show.structs then
    gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Report Response
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_response = {}

-- Size: Trade Capture Report Response
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_response.size =
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.status_tcr_status.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.reason_tcr_rejection_reason.size

-- Display: Trade Capture Report Response
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report Response
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = gpw_wse_orderentry_wats_v1_7_6_20.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: TradeReportId
  index, trade_report_id = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.dissect(buffer, index, packet, parent)

  -- Secondary Trade Report Id: Struct of 4 fields
  index, secondary_trade_report_id = gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.dissect(buffer, index, packet, parent)

  -- Status Tcr Status: TcrStatus
  index, status_tcr_status = gpw_wse_orderentry_wats_v1_7_6_20.status_tcr_status.dissect(buffer, index, packet, parent)

  -- Reason Tcr Rejection Reason: TcrRejectionReason
  index, reason_tcr_rejection_reason = gpw_wse_orderentry_wats_v1_7_6_20.reason_tcr_rejection_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Capture Report Response
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_capture_report_response, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_response.fields(buffer, offset, packet, parent)
  end
end

-- Investment Decision Maker
gpw_wse_orderentry_wats_v1_7_6_20.investment_decision_maker = {}

-- Size: Investment Decision Maker
gpw_wse_orderentry_wats_v1_7_6_20.investment_decision_maker.size =
  gpw_wse_orderentry_wats_v1_7_6_20.short_code.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.qualifier.size

-- Display: Investment Decision Maker
gpw_wse_orderentry_wats_v1_7_6_20.investment_decision_maker.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Investment Decision Maker
gpw_wse_orderentry_wats_v1_7_6_20.investment_decision_maker.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Code: ShortCode
  index, short_code = gpw_wse_orderentry_wats_v1_7_6_20.short_code.dissect(buffer, index, packet, parent)

  -- Qualifier: PartyRoleQualifier
  index, qualifier = gpw_wse_orderentry_wats_v1_7_6_20.qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Investment Decision Maker
gpw_wse_orderentry_wats_v1_7_6_20.investment_decision_maker.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.investment_decision_maker, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.investment_decision_maker.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.investment_decision_maker.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.investment_decision_maker.fields(buffer, offset, packet, parent)
  end
end

-- Executing Trader
gpw_wse_orderentry_wats_v1_7_6_20.executing_trader = {}

-- Size: Executing Trader
gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.size =
  gpw_wse_orderentry_wats_v1_7_6_20.short_code.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.qualifier.size

-- Display: Executing Trader
gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Executing Trader
gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Code: ShortCode
  index, short_code = gpw_wse_orderentry_wats_v1_7_6_20.short_code.dissect(buffer, index, packet, parent)

  -- Qualifier: PartyRoleQualifier
  index, qualifier = gpw_wse_orderentry_wats_v1_7_6_20.qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Executing Trader
gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.executing_trader, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.fields(buffer, offset, packet, parent)
  end
end

-- Client
gpw_wse_orderentry_wats_v1_7_6_20.client = {}

-- Size: Client
gpw_wse_orderentry_wats_v1_7_6_20.client.size =
  gpw_wse_orderentry_wats_v1_7_6_20.short_code.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.qualifier.size

-- Display: Client
gpw_wse_orderentry_wats_v1_7_6_20.client.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client
gpw_wse_orderentry_wats_v1_7_6_20.client.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Code: ShortCode
  index, short_code = gpw_wse_orderentry_wats_v1_7_6_20.short_code.dissect(buffer, index, packet, parent)

  -- Qualifier: PartyRoleQualifier
  index, qualifier = gpw_wse_orderentry_wats_v1_7_6_20.qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client
gpw_wse_orderentry_wats_v1_7_6_20.client.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.client, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.client.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.client.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.client.fields(buffer, offset, packet, parent)
  end
end

-- Mifid Fields
gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields = {}

-- Size: Mifid Fields
gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.size =
  gpw_wse_orderentry_wats_v1_7_6_20.client.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.investment_decision_maker.size

-- Display: Mifid Fields
gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Fields
gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client: Struct of 2 fields
  index, client = gpw_wse_orderentry_wats_v1_7_6_20.client.dissect(buffer, index, packet, parent)

  -- Executing Trader: Struct of 2 fields
  index, executing_trader = gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.dissect(buffer, index, packet, parent)

  -- Investment Decision Maker: Struct of 2 fields
  index, investment_decision_maker = gpw_wse_orderentry_wats_v1_7_6_20.investment_decision_maker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Fields
gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mifid_fields, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.fields(buffer, offset, packet, parent)
  end
end

-- Flags
gpw_wse_orderentry_wats_v1_7_6_20.flags = {}

-- Size: Flags
gpw_wse_orderentry_wats_v1_7_6_20.flags.size = 1

-- Display: Flags
gpw_wse_orderentry_wats_v1_7_6_20.flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Liquidity Provision Activity flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Liquidity Provision Activity"
  end
  -- Is Direct Or Sponsored Access flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Direct Or Sponsored Access"
  end
  -- Is Market Maker Or Specialist flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Market Maker Or Specialist"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags
gpw_wse_orderentry_wats_v1_7_6_20.flags.bits = function(range, value, packet, parent)

  -- Liquidity Provision Activity: 1 Bit
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.liquidity_provision_activity, range, value)

  -- Direct Or Sponsored Access: 1 Bit
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.direct_or_sponsored_access, range, value)

  -- Market Maker Or Specialist: 1 Bit
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.market_maker_or_specialist, range, value)

  -- Reserved 3 To 7: 5 Bit
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reserved_3_to_7, range, value)
end

-- Dissect: Flags
gpw_wse_orderentry_wats_v1_7_6_20.flags.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_orderentry_wats_v1_7_6_20.flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.flags.display(range, value, packet, parent)
  local element = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.flags, range, display)

  if show.structs then
    gpw_wse_orderentry_wats_v1_7_6_20.flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Tcr Party Sell
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_sell = {}

-- Size: Tcr Party Sell
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_sell.size =
  gpw_wse_orderentry_wats_v1_7_6_20.flags.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.account.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.account_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.interested_party.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.memo.size

-- Display: Tcr Party Sell
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_sell.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcr Party Sell
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_sell.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Flags: Struct of 4 fields
  index, flags = gpw_wse_orderentry_wats_v1_7_6_20.flags.dissect(buffer, index, packet, parent)

  -- Mifid Fields: Struct of 3 fields
  index, mifid_fields = gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.dissect(buffer, index, packet, parent)

  -- Clearing Member Code: ClearingCode
  index, clearing_member_code = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.dissect(buffer, index, packet, parent)

  -- Clearing Member Clearing Identifier: ClearingIdentifier
  index, clearing_member_clearing_identifier = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.dissect(buffer, index, packet, parent)

  -- Account: Account
  index, account = gpw_wse_orderentry_wats_v1_7_6_20.account.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = gpw_wse_orderentry_wats_v1_7_6_20.account_type.dissect(buffer, index, packet, parent)

  -- Order Capacity: Capacity
  index, order_capacity = gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.dissect(buffer, index, packet, parent)

  -- Fee Structure Id: u8
  index, fee_structure_id = gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.dissect(buffer, index, packet, parent)

  -- Interested Party: InterestedParty
  index, interested_party = gpw_wse_orderentry_wats_v1_7_6_20.interested_party.dissect(buffer, index, packet, parent)

  -- Memo: Memo
  index, memo = gpw_wse_orderentry_wats_v1_7_6_20.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tcr Party Sell
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_sell.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.tcr_party_sell, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_sell.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_sell.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_sell.fields(buffer, offset, packet, parent)
  end
end

-- Tcr Party Buy
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_buy = {}

-- Size: Tcr Party Buy
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_buy.size =
  gpw_wse_orderentry_wats_v1_7_6_20.flags.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.account.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.account_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.interested_party.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.memo.size

-- Display: Tcr Party Buy
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_buy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcr Party Buy
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_buy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Flags: Struct of 4 fields
  index, flags = gpw_wse_orderentry_wats_v1_7_6_20.flags.dissect(buffer, index, packet, parent)

  -- Mifid Fields: Struct of 3 fields
  index, mifid_fields = gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.dissect(buffer, index, packet, parent)

  -- Clearing Member Code: ClearingCode
  index, clearing_member_code = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.dissect(buffer, index, packet, parent)

  -- Clearing Member Clearing Identifier: ClearingIdentifier
  index, clearing_member_clearing_identifier = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.dissect(buffer, index, packet, parent)

  -- Account: Account
  index, account = gpw_wse_orderentry_wats_v1_7_6_20.account.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = gpw_wse_orderentry_wats_v1_7_6_20.account_type.dissect(buffer, index, packet, parent)

  -- Order Capacity: Capacity
  index, order_capacity = gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.dissect(buffer, index, packet, parent)

  -- Fee Structure Id: u8
  index, fee_structure_id = gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.dissect(buffer, index, packet, parent)

  -- Interested Party: InterestedParty
  index, interested_party = gpw_wse_orderentry_wats_v1_7_6_20.interested_party.dissect(buffer, index, packet, parent)

  -- Memo: Memo
  index, memo = gpw_wse_orderentry_wats_v1_7_6_20.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tcr Party Buy
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_buy.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.tcr_party_buy, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_buy.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_buy.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_buy.fields(buffer, offset, packet, parent)
  end
end

-- Trade Capture Report Dual
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_dual = {}

-- Size: Trade Capture Report Dual
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_dual.size =
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.exec_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_report_ref_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.last_qty.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.last_px.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.settlement_date.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_buy.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_sell.size

-- Display: Trade Capture Report Dual
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_dual.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report Dual
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_dual.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: TradeReportId
  index, trade_report_id = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.dissect(buffer, index, packet, parent)

  -- Secondary Trade Report Id: Struct of 4 fields
  index, secondary_trade_report_id = gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = gpw_wse_orderentry_wats_v1_7_6_20.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: TradeReportTransType
  index, trade_report_trans_type = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Report Type: TradeReportType
  index, trade_report_type = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Type: TradeType
  index, trade_type = gpw_wse_orderentry_wats_v1_7_6_20.trade_type.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: AlgorithmicTradeIndicator
  index, algorithmic_trade_indicator = gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Exec Type: ExecType
  index, exec_type = gpw_wse_orderentry_wats_v1_7_6_20.exec_type.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: TradeReportRefID
  index, trade_report_ref_id = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Last Qty: Quantity
  index, last_qty = gpw_wse_orderentry_wats_v1_7_6_20.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = gpw_wse_orderentry_wats_v1_7_6_20.last_px.dissect(buffer, index, packet, parent)

  -- Settlement Date: Date
  index, settlement_date = gpw_wse_orderentry_wats_v1_7_6_20.settlement_date.dissect(buffer, index, packet, parent)

  -- Tcr Party Buy: Struct of 10 fields
  index, tcr_party_buy = gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_buy.dissect(buffer, index, packet, parent)

  -- Tcr Party Sell: Struct of 10 fields
  index, tcr_party_sell = gpw_wse_orderentry_wats_v1_7_6_20.tcr_party_sell.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Capture Report Dual
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_dual.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_capture_report_dual, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_dual.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_dual.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_dual.fields(buffer, offset, packet, parent)
  end
end

-- Tcr Party
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party = {}

-- Size: Tcr Party
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party.size =
  gpw_wse_orderentry_wats_v1_7_6_20.flags.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.account.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.account_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.interested_party.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.memo.size

-- Display: Tcr Party
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcr Party
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Flags: Struct of 4 fields
  index, flags = gpw_wse_orderentry_wats_v1_7_6_20.flags.dissect(buffer, index, packet, parent)

  -- Mifid Fields: Struct of 3 fields
  index, mifid_fields = gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.dissect(buffer, index, packet, parent)

  -- Clearing Member Code: ClearingCode
  index, clearing_member_code = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.dissect(buffer, index, packet, parent)

  -- Clearing Member Clearing Identifier: ClearingIdentifier
  index, clearing_member_clearing_identifier = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.dissect(buffer, index, packet, parent)

  -- Account: Account
  index, account = gpw_wse_orderentry_wats_v1_7_6_20.account.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = gpw_wse_orderentry_wats_v1_7_6_20.account_type.dissect(buffer, index, packet, parent)

  -- Order Capacity: Capacity
  index, order_capacity = gpw_wse_orderentry_wats_v1_7_6_20.order_capacity.dissect(buffer, index, packet, parent)

  -- Fee Structure Id: u8
  index, fee_structure_id = gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.dissect(buffer, index, packet, parent)

  -- Interested Party: InterestedParty
  index, interested_party = gpw_wse_orderentry_wats_v1_7_6_20.interested_party.dissect(buffer, index, packet, parent)

  -- Memo: Memo
  index, memo = gpw_wse_orderentry_wats_v1_7_6_20.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tcr Party
gpw_wse_orderentry_wats_v1_7_6_20.tcr_party.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.tcr_party, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.tcr_party.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.tcr_party.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.tcr_party.fields(buffer, offset, packet, parent)
  end
end

-- Trade Capture Report Single
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_single = {}

-- Size: Trade Capture Report Single
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_single.size =
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.exec_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_report_ref_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.last_qty.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.last_px.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.settlement_date.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.side.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.counterparty_code.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.tcr_party.size

-- Display: Trade Capture Report Single
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_single.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Report Single
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_single.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: TradeReportId
  index, trade_report_id = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_id.dissect(buffer, index, packet, parent)

  -- Secondary Trade Report Id: Struct of 4 fields
  index, secondary_trade_report_id = gpw_wse_orderentry_wats_v1_7_6_20.secondary_trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = gpw_wse_orderentry_wats_v1_7_6_20.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: TradeReportTransType
  index, trade_report_trans_type = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Report Type: TradeReportType
  index, trade_report_type = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Type: TradeType
  index, trade_type = gpw_wse_orderentry_wats_v1_7_6_20.trade_type.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: AlgorithmicTradeIndicator
  index, algorithmic_trade_indicator = gpw_wse_orderentry_wats_v1_7_6_20.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Exec Type: ExecType
  index, exec_type = gpw_wse_orderentry_wats_v1_7_6_20.exec_type.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: TradeReportRefID
  index, trade_report_ref_id = gpw_wse_orderentry_wats_v1_7_6_20.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Last Qty: Quantity
  index, last_qty = gpw_wse_orderentry_wats_v1_7_6_20.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = gpw_wse_orderentry_wats_v1_7_6_20.last_px.dissect(buffer, index, packet, parent)

  -- Settlement Date: Date
  index, settlement_date = gpw_wse_orderentry_wats_v1_7_6_20.settlement_date.dissect(buffer, index, packet, parent)

  -- Side: OrderSide
  index, side = gpw_wse_orderentry_wats_v1_7_6_20.side.dissect(buffer, index, packet, parent)

  -- Counterparty Code: ParticipantCode
  index, counterparty_code = gpw_wse_orderentry_wats_v1_7_6_20.counterparty_code.dissect(buffer, index, packet, parent)

  -- Tcr Party: Struct of 10 fields
  index, tcr_party = gpw_wse_orderentry_wats_v1_7_6_20.tcr_party.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Capture Report Single
gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_single.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trade_capture_report_single, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_single.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_single.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_single.fields(buffer, offset, packet, parent)
  end
end

-- Bid Offer Update
gpw_wse_orderentry_wats_v1_7_6_20.bid_offer_update = {}

-- Size: Bid Offer Update
gpw_wse_orderentry_wats_v1_7_6_20.bid_offer_update.size =
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.update_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.total_bid_size.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.total_offer_size.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.bid_orders.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.offer_orders.size

-- Display: Bid Offer Update
gpw_wse_orderentry_wats_v1_7_6_20.bid_offer_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Offer Update
gpw_wse_orderentry_wats_v1_7_6_20.bid_offer_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Update Type: BidOfferUpdateType
  index, update_type = gpw_wse_orderentry_wats_v1_7_6_20.update_type.dissect(buffer, index, packet, parent)

  -- Total Bid Size: Quantity
  index, total_bid_size = gpw_wse_orderentry_wats_v1_7_6_20.total_bid_size.dissect(buffer, index, packet, parent)

  -- Total Offer Size: Quantity
  index, total_offer_size = gpw_wse_orderentry_wats_v1_7_6_20.total_offer_size.dissect(buffer, index, packet, parent)

  -- Bid Orders: u32
  index, bid_orders = gpw_wse_orderentry_wats_v1_7_6_20.bid_orders.dissect(buffer, index, packet, parent)

  -- Offer Orders: u32
  index, offer_orders = gpw_wse_orderentry_wats_v1_7_6_20.offer_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Offer Update
gpw_wse_orderentry_wats_v1_7_6_20.bid_offer_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bid_offer_update, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.bid_offer_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.bid_offer_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.bid_offer_update.fields(buffer, offset, packet, parent)
  end
end

-- Request For Execution
gpw_wse_orderentry_wats_v1_7_6_20.request_for_execution = {}

-- Size: Request For Execution
gpw_wse_orderentry_wats_v1_7_6_20.request_for_execution.size =
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.reason_request_for_execution_reason.size

-- Display: Request For Execution
gpw_wse_orderentry_wats_v1_7_6_20.request_for_execution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Execution
gpw_wse_orderentry_wats_v1_7_6_20.request_for_execution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Reason Request For Execution Reason: RequestForExecutionReason
  index, reason_request_for_execution_reason = gpw_wse_orderentry_wats_v1_7_6_20.reason_request_for_execution_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Execution
gpw_wse_orderentry_wats_v1_7_6_20.request_for_execution.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.request_for_execution, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.request_for_execution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.request_for_execution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.request_for_execution.fields(buffer, offset, packet, parent)
  end
end

-- Market Maker Command Response
gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command_response = {}

-- Size: Market Maker Command Response
gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command_response.size =
  gpw_wse_orderentry_wats_v1_7_6_20.ref_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.result_command_result.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.rejection_code.size

-- Display: Market Maker Command Response
gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Maker Command Response
gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ref Id: u32
  index, ref_id = gpw_wse_orderentry_wats_v1_7_6_20.ref_id.dissect(buffer, index, packet, parent)

  -- Result Command Result: CommandResult
  index, result_command_result = gpw_wse_orderentry_wats_v1_7_6_20.result_command_result.dissect(buffer, index, packet, parent)

  -- Rejection Code: CommandRejectionCode
  index, rejection_code = gpw_wse_orderentry_wats_v1_7_6_20.rejection_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Maker Command Response
gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.market_maker_command_response, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command_response.fields(buffer, offset, packet, parent)
  end
end

-- Market Maker Command
gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command = {}

-- Size: Market Maker Command
gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command.size =
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.action.size

-- Display: Market Maker Command
gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Maker Command
gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Action: CommandAction
  index, action = gpw_wse_orderentry_wats_v1_7_6_20.action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Maker Command
gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.market_maker_command, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command.fields(buffer, offset, packet, parent)
  end
end

-- Ask Order Id
gpw_wse_orderentry_wats_v1_7_6_20.ask_order_id = {}

-- Size: Ask Order Id
gpw_wse_orderentry_wats_v1_7_6_20.ask_order_id.size = 8

-- Display: Ask Order Id
gpw_wse_orderentry_wats_v1_7_6_20.ask_order_id.display = function(range, value, packet, parent)
  local flags = {}

  -- Seq Num: 28 Bits
  flags[#flags + 1] = "Seq Num: "..value:band(0x000000000FFFFFFF):rshift(0)
  -- Bulk Seq Num: 8 Bits
  flags[#flags + 1] = "Bulk Seq Num: "..value:band(0x0000000FF0000000):rshift(28)
  -- Session Id Order Id: 14 Bits
  flags[#flags + 1] = "Session Id Order Id: "..value:band(0x0003FFF000000000):rshift(36)
  -- Connection Id Order Id: 14 Bits
  flags[#flags + 1] = "Connection Id Order Id: "..value:band(UInt64(0x00000000, 0xFFFC0000)):rshift(50)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Ask Order Id
gpw_wse_orderentry_wats_v1_7_6_20.ask_order_id.bits = function(range, value, packet, parent)

  -- Seq Num: 28 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.seq_num, range, value)

  -- Bulk Seq Num: 8 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bulk_seq_num, range, value)

  -- Session Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.session_id_order_id, range, value)

  -- Connection Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_id_order_id, range, value)
end

-- Dissect: Ask Order Id
gpw_wse_orderentry_wats_v1_7_6_20.ask_order_id.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_orderentry_wats_v1_7_6_20.ask_order_id.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.ask_order_id.display(range, value, packet, parent)
  local element = parent:add_le(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.ask_order_id, range, display)

  if show.structs then
    gpw_wse_orderentry_wats_v1_7_6_20.ask_order_id.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Bid Order Id
gpw_wse_orderentry_wats_v1_7_6_20.bid_order_id = {}

-- Size: Bid Order Id
gpw_wse_orderentry_wats_v1_7_6_20.bid_order_id.size = 8

-- Display: Bid Order Id
gpw_wse_orderentry_wats_v1_7_6_20.bid_order_id.display = function(range, value, packet, parent)
  local flags = {}

  -- Seq Num: 28 Bits
  flags[#flags + 1] = "Seq Num: "..value:band(0x000000000FFFFFFF):rshift(0)
  -- Bulk Seq Num: 8 Bits
  flags[#flags + 1] = "Bulk Seq Num: "..value:band(0x0000000FF0000000):rshift(28)
  -- Session Id Order Id: 14 Bits
  flags[#flags + 1] = "Session Id Order Id: "..value:band(0x0003FFF000000000):rshift(36)
  -- Connection Id Order Id: 14 Bits
  flags[#flags + 1] = "Connection Id Order Id: "..value:band(UInt64(0x00000000, 0xFFFC0000)):rshift(50)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bid Order Id
gpw_wse_orderentry_wats_v1_7_6_20.bid_order_id.bits = function(range, value, packet, parent)

  -- Seq Num: 28 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.seq_num, range, value)

  -- Bulk Seq Num: 8 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bulk_seq_num, range, value)

  -- Session Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.session_id_order_id, range, value)

  -- Connection Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_id_order_id, range, value)
end

-- Dissect: Bid Order Id
gpw_wse_orderentry_wats_v1_7_6_20.bid_order_id.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_orderentry_wats_v1_7_6_20.bid_order_id.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.bid_order_id.display(range, value, packet, parent)
  local element = parent:add_le(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bid_order_id, range, display)

  if show.structs then
    gpw_wse_orderentry_wats_v1_7_6_20.bid_order_id.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Quote Order Response
gpw_wse_orderentry_wats_v1_7_6_20.quote_order_response = {}

-- Size: Quote Order Response
gpw_wse_orderentry_wats_v1_7_6_20.quote_order_response.size =
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.bid_order_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.ask_order_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.size

-- Display: Quote Order Response
gpw_wse_orderentry_wats_v1_7_6_20.quote_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Order Response
gpw_wse_orderentry_wats_v1_7_6_20.quote_order_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Order Id: Struct of 4 fields
  index, bid_order_id = gpw_wse_orderentry_wats_v1_7_6_20.bid_order_id.dissect(buffer, index, packet, parent)

  -- Ask Order Id: Struct of 4 fields
  index, ask_order_id = gpw_wse_orderentry_wats_v1_7_6_20.ask_order_id.dissect(buffer, index, packet, parent)

  -- Status Order Status: OrderStatus
  index, status_order_status = gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.dissect(buffer, index, packet, parent)

  -- Reason Order Rejection Reason: OrderRejectionReason
  index, reason_order_rejection_reason = gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Order Response
gpw_wse_orderentry_wats_v1_7_6_20.quote_order_response.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.quote_order_response, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.quote_order_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.quote_order_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.quote_order_response.fields(buffer, offset, packet, parent)
  end
end

-- Items Quote Order Response Array
gpw_wse_orderentry_wats_v1_7_6_20.items_quote_order_response_array = {}

-- Size: Items Quote Order Response Array
gpw_wse_orderentry_wats_v1_7_6_20.items_quote_order_response_array.size =
  gpw_wse_orderentry_wats_v1_7_6_20.quote_order_response.size

-- Display: Items Quote Order Response Array
gpw_wse_orderentry_wats_v1_7_6_20.items_quote_order_response_array.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Items Quote Order Response Array
gpw_wse_orderentry_wats_v1_7_6_20.items_quote_order_response_array.fields = function(buffer, offset, packet, parent, items_quote_order_response_array_index)
  local index = offset

  -- Implicit Items Quote Order Response Array Index
  if items_quote_order_response_array_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.items_quote_order_response_array_index, items_quote_order_response_array_index)
    iteration:set_generated()
  end

  -- Quote Order Response: Struct of 5 fields
  index, quote_order_response = gpw_wse_orderentry_wats_v1_7_6_20.quote_order_response.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Items Quote Order Response Array
gpw_wse_orderentry_wats_v1_7_6_20.items_quote_order_response_array.dissect = function(buffer, offset, packet, parent, items_quote_order_response_array_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.items_quote_order_response_array, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.items_quote_order_response_array.fields(buffer, offset, packet, parent, items_quote_order_response_array_index)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.items_quote_order_response_array.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.items_quote_order_response_array.fields(buffer, offset, packet, parent, items_quote_order_response_array_index)
  end
end

-- Responses
gpw_wse_orderentry_wats_v1_7_6_20.responses = {}

-- Size: Responses
gpw_wse_orderentry_wats_v1_7_6_20.responses.size =
  gpw_wse_orderentry_wats_v1_7_6_20.count.size + 
  30 * gpw_wse_orderentry_wats_v1_7_6_20.items_quote_order_response_array.size

-- Display: Responses
gpw_wse_orderentry_wats_v1_7_6_20.responses.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Responses
gpw_wse_orderentry_wats_v1_7_6_20.responses.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Count: u8
  index, count = gpw_wse_orderentry_wats_v1_7_6_20.count.dissect(buffer, index, packet, parent)

  -- Array Of: Items Quote Order Response Array
  for items_quote_order_response_array_index = 1, 30 do
    index, items_quote_order_response_array = gpw_wse_orderentry_wats_v1_7_6_20.items_quote_order_response_array.dissect(buffer, index, packet, parent, items_quote_order_response_array_index)
  end

  return index
end

-- Dissect: Responses
gpw_wse_orderentry_wats_v1_7_6_20.responses.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.responses, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.responses.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.responses.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.responses.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Id
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_id = {}

-- Size: Mass Quote Id
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_id.size = 8

-- Display: Mass Quote Id
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_id.display = function(range, value, packet, parent)
  local flags = {}

  -- Seq Num: 28 Bits
  flags[#flags + 1] = "Seq Num: "..value:band(0x000000000FFFFFFF):rshift(0)
  -- Bulk Seq Num: 8 Bits
  flags[#flags + 1] = "Bulk Seq Num: "..value:band(0x0000000FF0000000):rshift(28)
  -- Session Id Order Id: 14 Bits
  flags[#flags + 1] = "Session Id Order Id: "..value:band(0x0003FFF000000000):rshift(36)
  -- Connection Id Order Id: 14 Bits
  flags[#flags + 1] = "Connection Id Order Id: "..value:band(UInt64(0x00000000, 0xFFFC0000)):rshift(50)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mass Quote Id
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_id.bits = function(range, value, packet, parent)

  -- Seq Num: 28 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.seq_num, range, value)

  -- Bulk Seq Num: 8 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bulk_seq_num, range, value)

  -- Session Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.session_id_order_id, range, value)

  -- Connection Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_id_order_id, range, value)
end

-- Dissect: Mass Quote Id
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_id.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_id.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_id.display(range, value, packet, parent)
  local element = parent:add_le(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mass_quote_id, range, display)

  if show.structs then
    gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_id.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Quote Response
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_response = {}

-- Size: Mass Quote Response
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_response.size =
  gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.responses.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.status_mass_quote_status.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_quote_rejection_reason.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.size

-- Display: Mass Quote Response
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Response
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Quote Id: Struct of 4 fields
  index, mass_quote_id = gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_id.dissect(buffer, index, packet, parent)

  -- Responses: Struct of 2 fields
  index, responses = gpw_wse_orderentry_wats_v1_7_6_20.responses.dissect(buffer, index, packet, parent)

  -- Status Mass Quote Status: MassQuoteStatus
  index, status_mass_quote_status = gpw_wse_orderentry_wats_v1_7_6_20.status_mass_quote_status.dissect(buffer, index, packet, parent)

  -- Reason Mass Quote Rejection Reason: MassQuoteRejectionReason
  index, reason_mass_quote_rejection_reason = gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_quote_rejection_reason.dissect(buffer, index, packet, parent)

  -- Fee Structure Id: u8
  index, fee_structure_id = gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Response
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mass_quote_response, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_response.fields(buffer, offset, packet, parent)
  end
end

-- Ask
gpw_wse_orderentry_wats_v1_7_6_20.ask = {}

-- Size: Ask
gpw_wse_orderentry_wats_v1_7_6_20.ask.size =
  gpw_wse_orderentry_wats_v1_7_6_20.price.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.quantity.size

-- Display: Ask
gpw_wse_orderentry_wats_v1_7_6_20.ask.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask
gpw_wse_orderentry_wats_v1_7_6_20.ask.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: Price
  index, price = gpw_wse_orderentry_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_orderentry_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask
gpw_wse_orderentry_wats_v1_7_6_20.ask.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.ask, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.ask.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.ask.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.ask.fields(buffer, offset, packet, parent)
  end
end

-- Bid
gpw_wse_orderentry_wats_v1_7_6_20.bid = {}

-- Size: Bid
gpw_wse_orderentry_wats_v1_7_6_20.bid.size =
  gpw_wse_orderentry_wats_v1_7_6_20.price.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.quantity.size

-- Display: Bid
gpw_wse_orderentry_wats_v1_7_6_20.bid.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid
gpw_wse_orderentry_wats_v1_7_6_20.bid.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: Price
  index, price = gpw_wse_orderentry_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_orderentry_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid
gpw_wse_orderentry_wats_v1_7_6_20.bid.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bid, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.bid.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.bid.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.bid.fields(buffer, offset, packet, parent)
  end
end

-- Quote
gpw_wse_orderentry_wats_v1_7_6_20.quote = {}

-- Size: Quote
gpw_wse_orderentry_wats_v1_7_6_20.quote.size =
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.bid.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.ask.size

-- Display: Quote
gpw_wse_orderentry_wats_v1_7_6_20.quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote
gpw_wse_orderentry_wats_v1_7_6_20.quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid: Struct of 2 fields
  index, bid = gpw_wse_orderentry_wats_v1_7_6_20.bid.dissect(buffer, index, packet, parent)

  -- Ask: Struct of 2 fields
  index, ask = gpw_wse_orderentry_wats_v1_7_6_20.ask.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote
gpw_wse_orderentry_wats_v1_7_6_20.quote.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.quote, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.quote.fields(buffer, offset, packet, parent)
  end
end

-- Items Quotes Array
gpw_wse_orderentry_wats_v1_7_6_20.items_quotes_array = {}

-- Size: Items Quotes Array
gpw_wse_orderentry_wats_v1_7_6_20.items_quotes_array.size =
  gpw_wse_orderentry_wats_v1_7_6_20.quote.size

-- Display: Items Quotes Array
gpw_wse_orderentry_wats_v1_7_6_20.items_quotes_array.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Items Quotes Array
gpw_wse_orderentry_wats_v1_7_6_20.items_quotes_array.fields = function(buffer, offset, packet, parent, items_quotes_array_index)
  local index = offset

  -- Implicit Items Quotes Array Index
  if items_quotes_array_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.items_quotes_array_index, items_quotes_array_index)
    iteration:set_generated()
  end

  -- Quote: Struct of 3 fields
  index, quote = gpw_wse_orderentry_wats_v1_7_6_20.quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Items Quotes Array
gpw_wse_orderentry_wats_v1_7_6_20.items_quotes_array.dissect = function(buffer, offset, packet, parent, items_quotes_array_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.items_quotes_array, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.items_quotes_array.fields(buffer, offset, packet, parent, items_quotes_array_index)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.items_quotes_array.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.items_quotes_array.fields(buffer, offset, packet, parent, items_quotes_array_index)
  end
end

-- Quotes
gpw_wse_orderentry_wats_v1_7_6_20.quotes = {}

-- Size: Quotes
gpw_wse_orderentry_wats_v1_7_6_20.quotes.size =
  gpw_wse_orderentry_wats_v1_7_6_20.count.size + 
  30 * gpw_wse_orderentry_wats_v1_7_6_20.items_quotes_array.size

-- Display: Quotes
gpw_wse_orderentry_wats_v1_7_6_20.quotes.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes
gpw_wse_orderentry_wats_v1_7_6_20.quotes.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Count: u8
  index, count = gpw_wse_orderentry_wats_v1_7_6_20.count.dissect(buffer, index, packet, parent)

  -- Array Of: Items Quotes Array
  for items_quotes_array_index = 1, 30 do
    index, items_quotes_array = gpw_wse_orderentry_wats_v1_7_6_20.items_quotes_array.dissect(buffer, index, packet, parent, items_quotes_array_index)
  end

  return index
end

-- Dissect: Quotes
gpw_wse_orderentry_wats_v1_7_6_20.quotes.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.quotes, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.quotes.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.quotes.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.quotes.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote = {}

-- Size: Mass Quote
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote.size =
  gpw_wse_orderentry_wats_v1_7_6_20.stp_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.capacity.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.account.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.account_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.flags.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.memo.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.quotes.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.interested_party.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.quote_id.size

-- Display: Mass Quote
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stp Id: STPId
  index, stp_id = gpw_wse_orderentry_wats_v1_7_6_20.stp_id.dissect(buffer, index, packet, parent)

  -- Capacity: Capacity
  index, capacity = gpw_wse_orderentry_wats_v1_7_6_20.capacity.dissect(buffer, index, packet, parent)

  -- Account: Account
  index, account = gpw_wse_orderentry_wats_v1_7_6_20.account.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = gpw_wse_orderentry_wats_v1_7_6_20.account_type.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 4 fields
  index, flags = gpw_wse_orderentry_wats_v1_7_6_20.flags.dissect(buffer, index, packet, parent)

  -- Mifid Fields: Struct of 3 fields
  index, mifid_fields = gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.dissect(buffer, index, packet, parent)

  -- Memo: Memo
  index, memo = gpw_wse_orderentry_wats_v1_7_6_20.memo.dissect(buffer, index, packet, parent)

  -- Clearing Member Code: ClearingCode
  index, clearing_member_code = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.dissect(buffer, index, packet, parent)

  -- Clearing Member Clearing Identifier: ClearingIdentifier
  index, clearing_member_clearing_identifier = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.dissect(buffer, index, packet, parent)

  -- Quotes: Struct of 2 fields
  index, quotes = gpw_wse_orderentry_wats_v1_7_6_20.quotes.dissect(buffer, index, packet, parent)

  -- Fee Structure Id: u8
  index, fee_structure_id = gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.dissect(buffer, index, packet, parent)

  -- Interested Party: InterestedParty
  index, interested_party = gpw_wse_orderentry_wats_v1_7_6_20.interested_party.dissect(buffer, index, packet, parent)

  -- Quote Id: ClientOrderId
  index, quote_id = gpw_wse_orderentry_wats_v1_7_6_20.quote_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote
gpw_wse_orderentry_wats_v1_7_6_20.mass_quote.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mass_quote, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.mass_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.mass_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.mass_quote.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
gpw_wse_orderentry_wats_v1_7_6_20.order_id = {}

-- Size: Order Id
gpw_wse_orderentry_wats_v1_7_6_20.order_id.size = 8

-- Display: Order Id
gpw_wse_orderentry_wats_v1_7_6_20.order_id.display = function(range, value, packet, parent)
  local flags = {}

  -- Seq Num: 28 Bits
  flags[#flags + 1] = "Seq Num: "..value:band(0x000000000FFFFFFF):rshift(0)
  -- Bulk Seq Num: 8 Bits
  flags[#flags + 1] = "Bulk Seq Num: "..value:band(0x0000000FF0000000):rshift(28)
  -- Session Id Order Id: 14 Bits
  flags[#flags + 1] = "Session Id Order Id: "..value:band(0x0003FFF000000000):rshift(36)
  -- Connection Id Order Id: 14 Bits
  flags[#flags + 1] = "Connection Id Order Id: "..value:band(UInt64(0x00000000, 0xFFFC0000)):rshift(50)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Id
gpw_wse_orderentry_wats_v1_7_6_20.order_id.bits = function(range, value, packet, parent)

  -- Seq Num: 28 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.seq_num, range, value)

  -- Bulk Seq Num: 8 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bulk_seq_num, range, value)

  -- Session Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.session_id_order_id, range, value)

  -- Connection Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_id_order_id, range, value)
end

-- Dissect: Order Id
gpw_wse_orderentry_wats_v1_7_6_20.order_id.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_orderentry_wats_v1_7_6_20.order_id.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.order_id.display(range, value, packet, parent)
  local element = parent:add_le(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_id, range, display)

  if show.structs then
    gpw_wse_orderentry_wats_v1_7_6_20.order_id.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Execute
gpw_wse_orderentry_wats_v1_7_6_20.order_execute = {}

-- Size: Order Execute
gpw_wse_orderentry_wats_v1_7_6_20.order_execute.size =
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.order_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trade_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.price.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.quantity.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.leaves_qty.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.liquidity_indicator.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.currency.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.side.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size

-- Display: Order Execute
gpw_wse_orderentry_wats_v1_7_6_20.order_execute.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execute
gpw_wse_orderentry_wats_v1_7_6_20.order_execute.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: Struct of 4 fields
  index, order_id = gpw_wse_orderentry_wats_v1_7_6_20.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = gpw_wse_orderentry_wats_v1_7_6_20.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_orderentry_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_orderentry_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Quantity
  index, leaves_qty = gpw_wse_orderentry_wats_v1_7_6_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: LiquidityIndicator
  index, liquidity_indicator = gpw_wse_orderentry_wats_v1_7_6_20.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Currency: Currency
  index, currency = gpw_wse_orderentry_wats_v1_7_6_20.currency.dissect(buffer, index, packet, parent)

  -- Side: OrderSide
  index, side = gpw_wse_orderentry_wats_v1_7_6_20.side.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execute
gpw_wse_orderentry_wats_v1_7_6_20.order_execute.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_execute, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.order_execute.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.order_execute.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.order_execute.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Id
gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_id = {}

-- Size: Mass Cancel Id
gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_id.size = 8

-- Display: Mass Cancel Id
gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_id.display = function(range, value, packet, parent)
  local flags = {}

  -- Seq Num: 28 Bits
  flags[#flags + 1] = "Seq Num: "..value:band(0x000000000FFFFFFF):rshift(0)
  -- Bulk Seq Num: 8 Bits
  flags[#flags + 1] = "Bulk Seq Num: "..value:band(0x0000000FF0000000):rshift(28)
  -- Session Id Order Id: 14 Bits
  flags[#flags + 1] = "Session Id Order Id: "..value:band(0x0003FFF000000000):rshift(36)
  -- Connection Id Order Id: 14 Bits
  flags[#flags + 1] = "Connection Id Order Id: "..value:band(UInt64(0x00000000, 0xFFFC0000)):rshift(50)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mass Cancel Id
gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_id.bits = function(range, value, packet, parent)

  -- Seq Num: 28 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.seq_num, range, value)

  -- Bulk Seq Num: 8 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.bulk_seq_num, range, value)

  -- Session Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.session_id_order_id, range, value)

  -- Connection Id Order Id: 14 Bit Unsigned Fixed Width Integer
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_id_order_id, range, value)
end

-- Dissect: Mass Cancel Id
gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_id.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_id.display(range, value, packet, parent)
  local element = parent:add_le(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.mass_cancel_id, range, display)

  if show.structs then
    gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_id.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Mass Cancel Response
gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel_response = {}

-- Size: Order Mass Cancel Response
gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel_response.size =
  gpw_wse_orderentry_wats_v1_7_6_20.total_affected_orders.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.target_party_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.market_segment_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_cancel_rejection_reason.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size

-- Display: Order Mass Cancel Response
gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Response
gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Affected Orders: u64
  index, total_affected_orders = gpw_wse_orderentry_wats_v1_7_6_20.total_affected_orders.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Type: MassCancelRequestType
  index, mass_cancel_request_type = gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Struct of 4 fields
  index, mass_cancel_id = gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Target Party Role: TargetPartyRole
  index, target_party_role = gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.dissect(buffer, index, packet, parent)

  -- Target Party Id: u32
  index, target_party_id = gpw_wse_orderentry_wats_v1_7_6_20.target_party_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: ElementId
  index, market_segment_id = gpw_wse_orderentry_wats_v1_7_6_20.market_segment_id.dissect(buffer, index, packet, parent)

  -- Reason Mass Cancel Rejection Reason: MassCancelRejectionReason
  index, reason_mass_cancel_rejection_reason = gpw_wse_orderentry_wats_v1_7_6_20.reason_mass_cancel_rejection_reason.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Response
gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_mass_cancel_response, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel_response.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel
gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel = {}

-- Size: Order Mass Cancel
gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel.size =
  gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.target_party_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.market_segment_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size

-- Display: Order Mass Cancel
gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel
gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Request Type: MassCancelRequestType
  index, mass_cancel_request_type = gpw_wse_orderentry_wats_v1_7_6_20.mass_cancel_request_type.dissect(buffer, index, packet, parent)

  -- Target Party Role: TargetPartyRole
  index, target_party_role = gpw_wse_orderentry_wats_v1_7_6_20.target_party_role.dissect(buffer, index, packet, parent)

  -- Target Party Id: u32
  index, target_party_id = gpw_wse_orderentry_wats_v1_7_6_20.target_party_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: ElementId
  index, market_segment_id = gpw_wse_orderentry_wats_v1_7_6_20.market_segment_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Executing Trader: Struct of 2 fields
  index, executing_trader = gpw_wse_orderentry_wats_v1_7_6_20.executing_trader.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel
gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_mass_cancel, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Response
gpw_wse_orderentry_wats_v1_7_6_20.order_modify_response = {}

-- Size: Order Modify Response
gpw_wse_orderentry_wats_v1_7_6_20.order_modify_response.size =
  gpw_wse_orderentry_wats_v1_7_6_20.order_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.filled.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.priority_flag.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size

-- Display: Order Modify Response
gpw_wse_orderentry_wats_v1_7_6_20.order_modify_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Response
gpw_wse_orderentry_wats_v1_7_6_20.order_modify_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Struct of 4 fields
  index, order_id = gpw_wse_orderentry_wats_v1_7_6_20.order_id.dissect(buffer, index, packet, parent)

  -- Filled: Quantity
  index, filled = gpw_wse_orderentry_wats_v1_7_6_20.filled.dissect(buffer, index, packet, parent)

  -- Status Order Status: OrderStatus
  index, status_order_status = gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.dissect(buffer, index, packet, parent)

  -- Priority Flag: PriorityFlag
  index, priority_flag = gpw_wse_orderentry_wats_v1_7_6_20.priority_flag.dissect(buffer, index, packet, parent)

  -- Reason Order Rejection Reason: OrderRejectionReason
  index, reason_order_rejection_reason = gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Response
gpw_wse_orderentry_wats_v1_7_6_20.order_modify_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_modify_response, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.order_modify_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.order_modify_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.order_modify_response.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify
gpw_wse_orderentry_wats_v1_7_6_20.order_modify = {}

-- Size: Order Modify
gpw_wse_orderentry_wats_v1_7_6_20.order_modify.size =
  gpw_wse_orderentry_wats_v1_7_6_20.order_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.price.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.quantity.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.display_qty.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.expire.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size

-- Display: Order Modify
gpw_wse_orderentry_wats_v1_7_6_20.order_modify.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify
gpw_wse_orderentry_wats_v1_7_6_20.order_modify.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Struct of 4 fields
  index, order_id = gpw_wse_orderentry_wats_v1_7_6_20.order_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_orderentry_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: Price
  index, trigger_price = gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_orderentry_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  -- Display Qty: Quantity
  index, display_qty = gpw_wse_orderentry_wats_v1_7_6_20.display_qty.dissect(buffer, index, packet, parent)

  -- Expire: Timestamp
  index, expire = gpw_wse_orderentry_wats_v1_7_6_20.expire.dissect(buffer, index, packet, parent)

  -- Mifid Fields: Struct of 3 fields
  index, mifid_fields = gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify
gpw_wse_orderentry_wats_v1_7_6_20.order_modify.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_modify, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.order_modify.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.order_modify.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.order_modify.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Response
gpw_wse_orderentry_wats_v1_7_6_20.order_cancel_response = {}

-- Size: Order Cancel Response
gpw_wse_orderentry_wats_v1_7_6_20.order_cancel_response.size =
  gpw_wse_orderentry_wats_v1_7_6_20.order_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size

-- Display: Order Cancel Response
gpw_wse_orderentry_wats_v1_7_6_20.order_cancel_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Response
gpw_wse_orderentry_wats_v1_7_6_20.order_cancel_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Struct of 4 fields
  index, order_id = gpw_wse_orderentry_wats_v1_7_6_20.order_id.dissect(buffer, index, packet, parent)

  -- Status Order Status: OrderStatus
  index, status_order_status = gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.dissect(buffer, index, packet, parent)

  -- Reason Order Rejection Reason: OrderRejectionReason
  index, reason_order_rejection_reason = gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.dissect(buffer, index, packet, parent)

  -- Exec Type Reason: ExecTypeReason
  index, exec_type_reason = gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Response
gpw_wse_orderentry_wats_v1_7_6_20.order_cancel_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_cancel_response, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.order_cancel_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.order_cancel_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.order_cancel_response.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel
gpw_wse_orderentry_wats_v1_7_6_20.order_cancel = {}

-- Size: Order Cancel
gpw_wse_orderentry_wats_v1_7_6_20.order_cancel.size =
  gpw_wse_orderentry_wats_v1_7_6_20.order_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size

-- Display: Order Cancel
gpw_wse_orderentry_wats_v1_7_6_20.order_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel
gpw_wse_orderentry_wats_v1_7_6_20.order_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Struct of 4 fields
  index, order_id = gpw_wse_orderentry_wats_v1_7_6_20.order_id.dissect(buffer, index, packet, parent)

  -- Mifid Fields: Struct of 3 fields
  index, mifid_fields = gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel
gpw_wse_orderentry_wats_v1_7_6_20.order_cancel.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_cancel, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.order_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.order_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.order_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Response
gpw_wse_orderentry_wats_v1_7_6_20.order_add_response = {}

-- Size: Order Add Response
gpw_wse_orderentry_wats_v1_7_6_20.order_add_response.size =
  gpw_wse_orderentry_wats_v1_7_6_20.order_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.public_order_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.display_qty.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.filled.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size

-- Display: Order Add Response
gpw_wse_orderentry_wats_v1_7_6_20.order_add_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Response
gpw_wse_orderentry_wats_v1_7_6_20.order_add_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Struct of 4 fields
  index, order_id = gpw_wse_orderentry_wats_v1_7_6_20.order_id.dissect(buffer, index, packet, parent)

  -- Public Order Id: PublicOrderId
  index, public_order_id = gpw_wse_orderentry_wats_v1_7_6_20.public_order_id.dissect(buffer, index, packet, parent)

  -- Display Qty: Quantity
  index, display_qty = gpw_wse_orderentry_wats_v1_7_6_20.display_qty.dissect(buffer, index, packet, parent)

  -- Filled: Quantity
  index, filled = gpw_wse_orderentry_wats_v1_7_6_20.filled.dissect(buffer, index, packet, parent)

  -- Status Order Status: OrderStatus
  index, status_order_status = gpw_wse_orderentry_wats_v1_7_6_20.status_order_status.dissect(buffer, index, packet, parent)

  -- Reason Order Rejection Reason: OrderRejectionReason
  index, reason_order_rejection_reason = gpw_wse_orderentry_wats_v1_7_6_20.reason_order_rejection_reason.dissect(buffer, index, packet, parent)

  -- Exec Type Reason: ExecTypeReason
  index, exec_type_reason = gpw_wse_orderentry_wats_v1_7_6_20.exec_type_reason.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Response
gpw_wse_orderentry_wats_v1_7_6_20.order_add_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_add_response, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.order_add_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.order_add_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.order_add_response.fields(buffer, offset, packet, parent)
  end
end

-- Exec Inst
gpw_wse_orderentry_wats_v1_7_6_20.exec_inst = {}

-- Size: Exec Inst
gpw_wse_orderentry_wats_v1_7_6_20.exec_inst.size = 1

-- Display: Exec Inst
gpw_wse_orderentry_wats_v1_7_6_20.exec_inst.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Cancel On Connection Loss flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Cancel On Connection Loss"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Exec Inst
gpw_wse_orderentry_wats_v1_7_6_20.exec_inst.bits = function(range, value, packet, parent)

  -- Cancel On Connection Loss: 1 Bit
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.cancel_on_connection_loss, range, value)

  -- Reserved 1 To 7: 7 Bit
  parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reserved_1_to_7, range, value)
end

-- Dissect: Exec Inst
gpw_wse_orderentry_wats_v1_7_6_20.exec_inst.dissect = function(buffer, offset, packet, parent)
  local size = gpw_wse_orderentry_wats_v1_7_6_20.exec_inst.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = gpw_wse_orderentry_wats_v1_7_6_20.exec_inst.display(range, value, packet, parent)
  local element = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.exec_inst, range, display)

  if show.structs then
    gpw_wse_orderentry_wats_v1_7_6_20.exec_inst.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Add
gpw_wse_orderentry_wats_v1_7_6_20.order_add = {}

-- Size: Order Add
gpw_wse_orderentry_wats_v1_7_6_20.order_add.size =
  gpw_wse_orderentry_wats_v1_7_6_20.stp_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.order_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.time_in_force.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.side.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.price.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.quantity.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.display_qty.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.capacity.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.account.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.account_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.flags.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.expire.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.memo.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.exec_inst.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.interested_party.size

-- Display: Order Add
gpw_wse_orderentry_wats_v1_7_6_20.order_add.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add
gpw_wse_orderentry_wats_v1_7_6_20.order_add.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stp Id: STPId
  index, stp_id = gpw_wse_orderentry_wats_v1_7_6_20.stp_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: ElementId
  index, instrument_id = gpw_wse_orderentry_wats_v1_7_6_20.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Type: OrderType
  index, order_type = gpw_wse_orderentry_wats_v1_7_6_20.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = gpw_wse_orderentry_wats_v1_7_6_20.time_in_force.dissect(buffer, index, packet, parent)

  -- Side: OrderSide
  index, side = gpw_wse_orderentry_wats_v1_7_6_20.side.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = gpw_wse_orderentry_wats_v1_7_6_20.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: Price
  index, trigger_price = gpw_wse_orderentry_wats_v1_7_6_20.trigger_price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = gpw_wse_orderentry_wats_v1_7_6_20.quantity.dissect(buffer, index, packet, parent)

  -- Display Qty: Quantity
  index, display_qty = gpw_wse_orderentry_wats_v1_7_6_20.display_qty.dissect(buffer, index, packet, parent)

  -- Capacity: Capacity
  index, capacity = gpw_wse_orderentry_wats_v1_7_6_20.capacity.dissect(buffer, index, packet, parent)

  -- Account: Account
  index, account = gpw_wse_orderentry_wats_v1_7_6_20.account.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = gpw_wse_orderentry_wats_v1_7_6_20.account_type.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 4 fields
  index, flags = gpw_wse_orderentry_wats_v1_7_6_20.flags.dissect(buffer, index, packet, parent)

  -- Mifid Fields: Struct of 3 fields
  index, mifid_fields = gpw_wse_orderentry_wats_v1_7_6_20.mifid_fields.dissect(buffer, index, packet, parent)

  -- Expire: Timestamp
  index, expire = gpw_wse_orderentry_wats_v1_7_6_20.expire.dissect(buffer, index, packet, parent)

  -- Memo: Memo
  index, memo = gpw_wse_orderentry_wats_v1_7_6_20.memo.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = gpw_wse_orderentry_wats_v1_7_6_20.client_order_id.dissect(buffer, index, packet, parent)

  -- Clearing Member Code: ClearingCode
  index, clearing_member_code = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_code.dissect(buffer, index, packet, parent)

  -- Clearing Member Clearing Identifier: ClearingIdentifier
  index, clearing_member_clearing_identifier = gpw_wse_orderentry_wats_v1_7_6_20.clearing_member_clearing_identifier.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 2 fields
  index, exec_inst = gpw_wse_orderentry_wats_v1_7_6_20.exec_inst.dissect(buffer, index, packet, parent)

  -- Fee Structure Id: u8
  index, fee_structure_id = gpw_wse_orderentry_wats_v1_7_6_20.fee_structure_id.dissect(buffer, index, packet, parent)

  -- Interested Party: InterestedParty
  index, interested_party = gpw_wse_orderentry_wats_v1_7_6_20.interested_party.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add
gpw_wse_orderentry_wats_v1_7_6_20.order_add.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.order_add, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.order_add.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.order_add.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.order_add.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status
gpw_wse_orderentry_wats_v1_7_6_20.trading_session_status = {}

-- Size: Trading Session Status
gpw_wse_orderentry_wats_v1_7_6_20.trading_session_status.size =
  gpw_wse_orderentry_wats_v1_7_6_20.market_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.date.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.trading_session_event.size

-- Display: Trading Session Status
gpw_wse_orderentry_wats_v1_7_6_20.trading_session_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status
gpw_wse_orderentry_wats_v1_7_6_20.trading_session_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: MicCode
  index, market_id = gpw_wse_orderentry_wats_v1_7_6_20.market_id.dissect(buffer, index, packet, parent)

  -- Date: Date
  index, date = gpw_wse_orderentry_wats_v1_7_6_20.date.dissect(buffer, index, packet, parent)

  -- Trading Session Event: TradingSessionEvent
  index, trading_session_event = gpw_wse_orderentry_wats_v1_7_6_20.trading_session_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status
gpw_wse_orderentry_wats_v1_7_6_20.trading_session_status.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.trading_session_status, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.trading_session_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.trading_session_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.trading_session_status.fields(buffer, offset, packet, parent)
  end
end

-- Test Event
gpw_wse_orderentry_wats_v1_7_6_20.test_event = {}

-- Size: Test Event
gpw_wse_orderentry_wats_v1_7_6_20.test_event.size =
  gpw_wse_orderentry_wats_v1_7_6_20.scenario_name.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.event_type.size

-- Display: Test Event
gpw_wse_orderentry_wats_v1_7_6_20.test_event.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Event
gpw_wse_orderentry_wats_v1_7_6_20.test_event.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Scenario Name: ScenarioName
  index, scenario_name = gpw_wse_orderentry_wats_v1_7_6_20.scenario_name.dissect(buffer, index, packet, parent)

  -- Event Type: EventType
  index, event_type = gpw_wse_orderentry_wats_v1_7_6_20.event_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Event
gpw_wse_orderentry_wats_v1_7_6_20.test_event.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.test_event, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.test_event.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.test_event.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.test_event.fields(buffer, offset, packet, parent)
  end
end

-- Test
gpw_wse_orderentry_wats_v1_7_6_20.test = {}

-- Size: Test
gpw_wse_orderentry_wats_v1_7_6_20.test.size =
  gpw_wse_orderentry_wats_v1_7_6_20.target_timestamp.size

-- Display: Test
gpw_wse_orderentry_wats_v1_7_6_20.test.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test
gpw_wse_orderentry_wats_v1_7_6_20.test.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Target Timestamp: Timestamp
  index, target_timestamp = gpw_wse_orderentry_wats_v1_7_6_20.target_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test
gpw_wse_orderentry_wats_v1_7_6_20.test.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.test, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.test.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.test.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.test.fields(buffer, offset, packet, parent)
  end
end

-- Gap Fill
gpw_wse_orderentry_wats_v1_7_6_20.gap_fill = {}

-- Display: Gap Fill
gpw_wse_orderentry_wats_v1_7_6_20.gap_fill.display = function(packet, parent, length)
  return "Gap Fill"
end


-- Dissect: Gap Fill
gpw_wse_orderentry_wats_v1_7_6_20.gap_fill.dissect = function(buffer, offset, packet, parent)
  local display = gpw_wse_orderentry_wats_v1_7_6_20.gap_fill.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Reject
gpw_wse_orderentry_wats_v1_7_6_20.reject = {}

-- Size: Reject
gpw_wse_orderentry_wats_v1_7_6_20.reject.size =
  gpw_wse_orderentry_wats_v1_7_6_20.ref_seq_num.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.reject_reason.size

-- Display: Reject
gpw_wse_orderentry_wats_v1_7_6_20.reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject
gpw_wse_orderentry_wats_v1_7_6_20.reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ref Seq Num: SeqNum
  index, ref_seq_num = gpw_wse_orderentry_wats_v1_7_6_20.ref_seq_num.dissect(buffer, index, packet, parent)

  -- Reject Reason: RejectReason
  index, reject_reason = gpw_wse_orderentry_wats_v1_7_6_20.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject
gpw_wse_orderentry_wats_v1_7_6_20.reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.reject, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.reject.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat
gpw_wse_orderentry_wats_v1_7_6_20.heartbeat = {}

-- Display: Heartbeat
gpw_wse_orderentry_wats_v1_7_6_20.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
gpw_wse_orderentry_wats_v1_7_6_20.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = gpw_wse_orderentry_wats_v1_7_6_20.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Connection Close
gpw_wse_orderentry_wats_v1_7_6_20.connection_close = {}

-- Size: Connection Close
gpw_wse_orderentry_wats_v1_7_6_20.connection_close.size =
  gpw_wse_orderentry_wats_v1_7_6_20.reason_connection_close_reason.size

-- Display: Connection Close
gpw_wse_orderentry_wats_v1_7_6_20.connection_close.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Connection Close
gpw_wse_orderentry_wats_v1_7_6_20.connection_close.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Connection Close Reason: ConnectionCloseReason
  index, reason_connection_close_reason = gpw_wse_orderentry_wats_v1_7_6_20.reason_connection_close_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Connection Close
gpw_wse_orderentry_wats_v1_7_6_20.connection_close.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.connection_close, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.connection_close.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.connection_close.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.connection_close.fields(buffer, offset, packet, parent)
  end
end

-- Logout Response
gpw_wse_orderentry_wats_v1_7_6_20.logout_response = {}

-- Display: Logout Response
gpw_wse_orderentry_wats_v1_7_6_20.logout_response.display = function(packet, parent, length)
  return "Logout Response"
end


-- Dissect: Logout Response
gpw_wse_orderentry_wats_v1_7_6_20.logout_response.dissect = function(buffer, offset, packet, parent)
  local display = gpw_wse_orderentry_wats_v1_7_6_20.logout_response.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout
gpw_wse_orderentry_wats_v1_7_6_20.logout = {}

-- Display: Logout
gpw_wse_orderentry_wats_v1_7_6_20.logout.display = function(packet, parent, length)
  return "Logout"
end


-- Dissect: Logout
gpw_wse_orderentry_wats_v1_7_6_20.logout.dissect = function(buffer, offset, packet, parent)
  local display = gpw_wse_orderentry_wats_v1_7_6_20.logout.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Response
gpw_wse_orderentry_wats_v1_7_6_20.login_response = {}

-- Size: Login Response
gpw_wse_orderentry_wats_v1_7_6_20.login_response.size =
  gpw_wse_orderentry_wats_v1_7_6_20.result_login_result.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.next_expected_seq_num.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.last_replay_seq_num.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.session_id.size

-- Display: Login Response
gpw_wse_orderentry_wats_v1_7_6_20.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
gpw_wse_orderentry_wats_v1_7_6_20.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Result Login Result: LoginResult
  index, result_login_result = gpw_wse_orderentry_wats_v1_7_6_20.result_login_result.dissect(buffer, index, packet, parent)

  -- Next Expected Seq Num: SeqNum
  index, next_expected_seq_num = gpw_wse_orderentry_wats_v1_7_6_20.next_expected_seq_num.dissect(buffer, index, packet, parent)

  -- Last Replay Seq Num: SeqNum
  index, last_replay_seq_num = gpw_wse_orderentry_wats_v1_7_6_20.last_replay_seq_num.dissect(buffer, index, packet, parent)

  -- Session Id: SessionId
  index, session_id = gpw_wse_orderentry_wats_v1_7_6_20.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
gpw_wse_orderentry_wats_v1_7_6_20.login_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.login_response, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login
gpw_wse_orderentry_wats_v1_7_6_20.login = {}

-- Size: Login
gpw_wse_orderentry_wats_v1_7_6_20.login.size =
  gpw_wse_orderentry_wats_v1_7_6_20.version.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.token.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.connection_id.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.next_expected_seq_num.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.last_sent_seq_num.size

-- Display: Login
gpw_wse_orderentry_wats_v1_7_6_20.login.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login
gpw_wse_orderentry_wats_v1_7_6_20.login.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: MsgVersion
  index, version = gpw_wse_orderentry_wats_v1_7_6_20.version.dissect(buffer, index, packet, parent)

  -- Token: Token
  index, token = gpw_wse_orderentry_wats_v1_7_6_20.token.dissect(buffer, index, packet, parent)

  -- Connection Id: ConnectionId
  index, connection_id = gpw_wse_orderentry_wats_v1_7_6_20.connection_id.dissect(buffer, index, packet, parent)

  -- Next Expected Seq Num: SeqNum
  index, next_expected_seq_num = gpw_wse_orderentry_wats_v1_7_6_20.next_expected_seq_num.dissect(buffer, index, packet, parent)

  -- Last Sent Seq Num: SeqNum
  index, last_sent_seq_num = gpw_wse_orderentry_wats_v1_7_6_20.last_sent_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login
gpw_wse_orderentry_wats_v1_7_6_20.login.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.login, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.login.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.login.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.login.fields(buffer, offset, packet, parent)
  end
end

-- Payload
gpw_wse_orderentry_wats_v1_7_6_20.payload = {}

-- Dispatch: Payload
gpw_wse_orderentry_wats_v1_7_6_20.payload.dispatch = {
  [2] = gpw_wse_orderentry_wats_v1_7_6_20.login.dissect,
  [3] = gpw_wse_orderentry_wats_v1_7_6_20.login_response.dissect,
  [11] = gpw_wse_orderentry_wats_v1_7_6_20.logout.dissect,
  [14] = gpw_wse_orderentry_wats_v1_7_6_20.logout_response.dissect,
  [12] = gpw_wse_orderentry_wats_v1_7_6_20.connection_close.dissect,
  [13] = gpw_wse_orderentry_wats_v1_7_6_20.heartbeat.dissect,
  [15] = gpw_wse_orderentry_wats_v1_7_6_20.reject.dissect,
  [34] = gpw_wse_orderentry_wats_v1_7_6_20.gap_fill.dissect,
  [1] = gpw_wse_orderentry_wats_v1_7_6_20.test.dissect,
  [255] = gpw_wse_orderentry_wats_v1_7_6_20.test_event.dissect,
  [35] = gpw_wse_orderentry_wats_v1_7_6_20.trading_session_status.dissect,
  [4] = gpw_wse_orderentry_wats_v1_7_6_20.order_add.dissect,
  [5] = gpw_wse_orderentry_wats_v1_7_6_20.order_add_response.dissect,
  [6] = gpw_wse_orderentry_wats_v1_7_6_20.order_cancel.dissect,
  [7] = gpw_wse_orderentry_wats_v1_7_6_20.order_cancel_response.dissect,
  [8] = gpw_wse_orderentry_wats_v1_7_6_20.order_modify.dissect,
  [9] = gpw_wse_orderentry_wats_v1_7_6_20.order_modify_response.dissect,
  [29] = gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel.dissect,
  [30] = gpw_wse_orderentry_wats_v1_7_6_20.order_mass_cancel_response.dissect,
  [10] = gpw_wse_orderentry_wats_v1_7_6_20.order_execute.dissect,
  [24] = gpw_wse_orderentry_wats_v1_7_6_20.mass_quote.dissect,
  [25] = gpw_wse_orderentry_wats_v1_7_6_20.mass_quote_response.dissect,
  [32] = gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command.dissect,
  [33] = gpw_wse_orderentry_wats_v1_7_6_20.market_maker_command_response.dissect,
  [28] = gpw_wse_orderentry_wats_v1_7_6_20.request_for_execution.dissect,
  [31] = gpw_wse_orderentry_wats_v1_7_6_20.bid_offer_update.dissect,
  [18] = gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_single.dissect,
  [19] = gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_dual.dissect,
  [20] = gpw_wse_orderentry_wats_v1_7_6_20.trade_capture_report_response.dissect,
  [23] = gpw_wse_orderentry_wats_v1_7_6_20.trade_bust.dissect,
}

-- Dissect: Payload
gpw_wse_orderentry_wats_v1_7_6_20.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = gpw_wse_orderentry_wats_v1_7_6_20.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
gpw_wse_orderentry_wats_v1_7_6_20.message_header = {}

-- Size: Message Header
gpw_wse_orderentry_wats_v1_7_6_20.message_header.size =
  gpw_wse_orderentry_wats_v1_7_6_20.message_length.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.message_type.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.sequence_number.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.timestamp.size + 
  gpw_wse_orderentry_wats_v1_7_6_20.source_timestamp.size

-- Display: Message Header
gpw_wse_orderentry_wats_v1_7_6_20.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
gpw_wse_orderentry_wats_v1_7_6_20.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: MsgLength
  index, message_length = gpw_wse_orderentry_wats_v1_7_6_20.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: MsgType
  index, message_type = gpw_wse_orderentry_wats_v1_7_6_20.message_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: SeqNum
  index, sequence_number = gpw_wse_orderentry_wats_v1_7_6_20.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = gpw_wse_orderentry_wats_v1_7_6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Source Timestamp: Timestamp
  index, source_timestamp = gpw_wse_orderentry_wats_v1_7_6_20.source_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
gpw_wse_orderentry_wats_v1_7_6_20.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.message_header, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
gpw_wse_orderentry_wats_v1_7_6_20.message = {}

-- Calculate size of: Message
gpw_wse_orderentry_wats_v1_7_6_20.message.size = function(buffer, offset)
  local index = 0

  index = index + gpw_wse_orderentry_wats_v1_7_6_20.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 24, 2):le_uint()

  return index
end

-- Display: Message
gpw_wse_orderentry_wats_v1_7_6_20.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
gpw_wse_orderentry_wats_v1_7_6_20.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = gpw_wse_orderentry_wats_v1_7_6_20.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 22, 2):le_uint()

  -- Payload: Runtime Type with 30 branches
  index = gpw_wse_orderentry_wats_v1_7_6_20.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
gpw_wse_orderentry_wats_v1_7_6_20.message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20.fields.message, buffer(offset, 0))
    local index = gpw_wse_orderentry_wats_v1_7_6_20.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderentry_wats_v1_7_6_20.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderentry_wats_v1_7_6_20.message.fields(buffer, offset, packet, parent)
  end
end

-- Packet
gpw_wse_orderentry_wats_v1_7_6_20.packet = {}

-- Verify required size of Tcp packet
gpw_wse_orderentry_wats_v1_7_6_20.packet.requiredsize = function(buffer)
  return buffer:len() >= gpw_wse_orderentry_wats_v1_7_6_20.message_header.size
end

-- Dissect Packet
gpw_wse_orderentry_wats_v1_7_6_20.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = gpw_wse_orderentry_wats_v1_7_6_20.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_gpw_wse_orderentry_wats_v1_7_6_20.init()
end

-- Dissector for Gpw Wse OrderEntry Wats 1.7.6.20
function omi_gpw_wse_orderentry_wats_v1_7_6_20.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_gpw_wse_orderentry_wats_v1_7_6_20.name

  -- Dissect protocol
  local protocol = parent:add(omi_gpw_wse_orderentry_wats_v1_7_6_20, buffer(), omi_gpw_wse_orderentry_wats_v1_7_6_20.description, "("..buffer:len().." Bytes)")
  return gpw_wse_orderentry_wats_v1_7_6_20.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
gpw_wse_orderentry_wats_v1_7_6_20.packet.fingerprint = function(buffer)
  if buffer:len() < 4 then
    return false
  end

  local message_type = buffer(2, 2):le_uint()

  -- Login
  if message_type == 2 then
    return true
  end

  -- Login Response
  if message_type == 3 then
    return true
  end

  -- Logout
  if message_type == 11 then
    return true
  end

  -- Logout Response
  if message_type == 14 then
    return true
  end

  -- Connection Close
  if message_type == 12 then
    return true
  end

  -- Heartbeat
  if message_type == 13 then
    return true
  end

  -- Reject
  if message_type == 15 then
    return true
  end

  -- Gap Fill
  if message_type == 34 then
    return true
  end

  -- Test
  if message_type == 1 then
    return true
  end

  -- Test Event
  if message_type == 255 then
    return true
  end

  -- Trading Session Status
  if message_type == 35 then
    return true
  end

  -- Order Add
  if message_type == 4 then
    return true
  end

  -- Order Add Response
  if message_type == 5 then
    return true
  end

  -- Order Cancel
  if message_type == 6 then
    return true
  end

  -- Order Cancel Response
  if message_type == 7 then
    return true
  end

  -- Order Modify
  if message_type == 8 then
    return true
  end

  -- Order Modify Response
  if message_type == 9 then
    return true
  end

  -- Order Mass Cancel
  if message_type == 29 then
    return true
  end

  -- Order Mass Cancel Response
  if message_type == 30 then
    return true
  end

  -- Order Execute
  if message_type == 10 then
    return true
  end

  -- Mass Quote
  if message_type == 24 then
    return true
  end

  -- Mass Quote Response
  if message_type == 25 then
    return true
  end

  -- Market Maker Command
  if message_type == 32 then
    return true
  end

  -- Market Maker Command Response
  if message_type == 33 then
    return true
  end

  -- Request For Execution
  if message_type == 28 then
    return true
  end

  -- Bid Offer Update
  if message_type == 31 then
    return true
  end

  -- Trade Capture Report Single
  if message_type == 18 then
    return true
  end

  -- Trade Capture Report Dual
  if message_type == 19 then
    return true
  end

  -- Trade Capture Report Response
  if message_type == 20 then
    return true
  end

  -- Trade Bust
  if message_type == 23 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Gpw Wse OrderEntry Wats 1.7.6.20 (Tcp)
local function omi_gpw_wse_orderentry_wats_v1_7_6_20_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not gpw_wse_orderentry_wats_v1_7_6_20.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not gpw_wse_orderentry_wats_v1_7_6_20.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_gpw_wse_orderentry_wats_v1_7_6_20
  omi_gpw_wse_orderentry_wats_v1_7_6_20.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Gpw Wse OrderEntry Wats 1.7.6.20
omi_gpw_wse_orderentry_wats_v1_7_6_20:register_heuristic("tcp", omi_gpw_wse_orderentry_wats_v1_7_6_20_tcp_heuristic)

-- Register Gpw Wse OrderEntry Wats 1.7.6.20 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_gpw_wse_orderentry_wats_v1_7_6_20)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Giełda Papierów Wartościowych w Warszawie
--   Version: 1.7.6.20
--   Date: Monday, October 5, 2026
--   Specification: GPW_WATS_2.01_Native_Order_Gateway_Specification_v1.7.6.20.pdf
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
