-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NordicEquities OrderEntry Ouch 5.01.14 Protocol
local omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14 = Proto("Omi.Nasdaq.NordicEquities.OrderEntry.Ouch.v5.01.14", "Nasdaq NordicEquities OrderEntry Ouch 5.01.14")

-- Protocol table
local nasdaq_nordicequities_orderentry_ouch_v5_01_14 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NordicEquities OrderEntry Ouch 5.01.14 Fields
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.add_or_remove = ProtoField.new("Add Or Remove", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.addorremove", ftypes.STRING, nil, nil, nil, "Whether the instruction is added or removed")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.algo_indicator = ProtoField.new("Algo Indicator", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.algoindicator", ftypes.STRING, nil, nil, nil, "Whether the order resulted from algorithmic trading")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.appendage_length = ProtoField.new("Appendage Length", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.appendagelength", ftypes.UINT16, nil, nil, nil, "Remaining length of the TagValue element")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.brokentradereason", ftypes.STRING, nil, nil, nil, "The reason the trade was broken")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.buysellindicator", ftypes.STRING, nil, nil, nil, "The type of order being entered")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_pending_reason = ProtoField.new("Cancel Pending Reason", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.cancelpendingreason", ftypes.STRING, nil, nil, nil, "Reason the order was pended")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_reason = ProtoField.new("Cancel Reason", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.cancelreason", ftypes.STRING, nil, nil, nil, "Reason the order was reduced or cancelled")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_rejected_reason = ProtoField.new("Cancel Rejected Reason", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.cancelrejectedreason", ftypes.UINT16, nil, nil, nil, "The reason the cancel was rejected")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.capacity = ProtoField.new("Capacity", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.capacity", ftypes.STRING, nil, nil, nil, "Trading capacity of the order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_account = ProtoField.new("Clearing Account", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clearingaccount", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_account_type = ProtoField.new("Clearing Account Type", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clearingaccounttype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_account_type_value = ProtoField.new("Clearing Account Type Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clearingaccounttypevalue", ftypes.STRING, nil, nil, nil, "Account type used for the order when submitted to clearing")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_account_value = ProtoField.new("Clearing Account Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clearingaccountvalue", ftypes.STRING, nil, nil, nil, "Supplemental accounting information forwarded to the Ccp")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_firm = ProtoField.new("Clearing Firm", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clearingfirm", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_firm_value = ProtoField.new("Clearing Firm Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clearingfirmvalue", ftypes.STRING, nil, nil, nil, "User supplied clearing firm, pass through field")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_identification = ProtoField.new("Client Identification", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clientidentification", ftypes.UINT8, {[0]="None", [1]="Lei Firm", [3]="Natural Person"}, base.DEC, 0x03)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_identifier = ProtoField.new("Client Identifier", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clientidentifier", ftypes.UINT32, nil, nil, nil, "Short code representing the client behind the order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_reference = ProtoField.new("Client Reference", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clientreference", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_reference_value = ProtoField.new("Client Reference Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clientreferencevalue", ftypes.STRING, nil, nil, nil, "User supplied client reference, returned unchanged")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.contra_firm = ProtoField.new("Contra Firm", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.contrafirm", ftypes.STRING, nil, nil, nil, "The Mpid of the counterparty")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.crosstype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cross_type_value = ProtoField.new("Cross Type Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.crosstypevalue", ftypes.STRING, nil, nil, nil, "The cross the order is intended for")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cumulative_quantity = ProtoField.new("Cumulative Quantity", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.cumulativequantity", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cumulative_quantity_value = ProtoField.new("Cumulative Quantity Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.cumulativequantityvalue", ftypes.UINT32, nil, nil, nil, "Previously executed quantity of the good till cancel order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.customer_order_capacity = ProtoField.new("Customer Order Capacity", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.customerordercapacity", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.customer_order_capacity_value = ProtoField.new("Customer Order Capacity Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.customerordercapacityvalue", ftypes.STRING, nil, nil, nil, "Whether the order originates from a retail customer")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.dea_indicator = ProtoField.new("Dea Indicator", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.deaindicator", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.dea_indicator_value = ProtoField.new("Dea Indicator Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.deaindicatorvalue", ftypes.STRING, nil, nil, nil, "Origin of the order for direct electronic access reporting")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.decrement_quantity = ProtoField.new("Decrement Quantity", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.decrementquantity", ftypes.UINT32, nil, nil, nil, "Quantity just decremented from the order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display = ProtoField.new("Display", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.display", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display_price = ProtoField.new("Display Price", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.displayprice", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display_price_value = ProtoField.new("Display Price Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.displaypricevalue", ftypes.DOUBLE, nil, nil, nil, "Price of restated child order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display_quantity = ProtoField.new("Display Quantity", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.displayquantity", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display_quantity_value = ProtoField.new("Display Quantity Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.displayquantityvalue", ftypes.UINT32, nil, nil, nil, "Quantity of restated child order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display_value = ProtoField.new("Display Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.displayvalue", ftypes.STRING, nil, nil, nil, "How the order is displayed")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.event_code = ProtoField.new("Event Code", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.eventcode", ftypes.STRING, nil, nil, nil, "System event code")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.executed_quantity = ProtoField.new("Executed Quantity", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.executedquantity", ftypes.UINT32, nil, nil, nil, "Incremental quantity executed")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.execution_decision_within_firm = ProtoField.new("Execution Decision Within Firm", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.executiondecisionwithinfirm", ftypes.UINT8, {[0]="None", [2]="Algo", [3]="Natural Person"}, base.DEC, 0x30)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.executionprice", ftypes.DOUBLE, nil, nil, nil, "The price at which the shares executed")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.execution_within_firm = ProtoField.new("Execution Within Firm", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.executionwithinfirm", ftypes.UINT32, nil, nil, nil, "Short code for the execution decision maker")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.expire_time = ProtoField.new("Expire Time", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.expiretime", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.expire_time_value = ProtoField.new("Expire Time Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.expiretimevalue", ftypes.UINT16, nil, nil, nil, "Seconds the order should live before being cancelled")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.firm = ProtoField.new("Firm", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.firm", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.firm_value = ProtoField.new("Firm Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.firmvalue", ftypes.STRING, nil, nil, nil, "The accepted firm for the order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.instruction = ProtoField.new("Instruction", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.instruction", ftypes.STRING, nil, nil, nil, "Notification reason")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.instruction_status = ProtoField.new("Instruction Status", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.instructionstatus", ftypes.STRING, nil, nil, nil, "Whether the instruction was accepted or rejected")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.investment_decision_within_firm = ProtoField.new("Investment Decision Within Firm", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.investmentdecisionwithinfirm", ftypes.UINT8, {[0]="None", [2]="Algo", [3]="Natural Person"}, base.DEC, 0x0C)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.investment_decision_within_firm_short_code = ProtoField.new("Investment Decision Within Firm Short Code", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.investmentdecisionwithinfirmshortcode", ftypes.UINT32, nil, nil, nil, "Short code for the investment decision maker")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.last_market = ProtoField.new("Last Market", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.lastmarket", ftypes.UINT8, nil, nil, nil, "The execution venue")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.length = ProtoField.new("Length", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.length", ftypes.UINT8, nil, nil, nil, "Remaining length of this tag value element, the tag plus its value")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_attributes = ProtoField.new("Liquidity Attributes", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.liquidityattributes", ftypes.STRING, nil, nil, nil, "Packed qualifier bits")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.liquidityflag", ftypes.STRING, nil, nil, nil, "The type of trade")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.liquidityindicator", ftypes.UINT8, {[0]="Added Liquidity", [1]="Removed Liquidity", [2]="Auction Liquidity", [3]="Reserved"}, base.DEC, 0x18)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_internalized = ProtoField.new("Liquidity Internalized", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.liquidityinternalized", ftypes.UINT8, {[0]="Not Internalized", [1]="Internalized"}, base.DEC, 0x20)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_provision_indicator = ProtoField.new("Liquidity Provision Indicator", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.liquidityprovisionindicator", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_provision_indicator_value = ProtoField.new("Liquidity Provision Indicator Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.liquidityprovisionindicatorvalue", ftypes.STRING, nil, nil, nil, "Whether the order relates to liquidity provision activity")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_self_trade = ProtoField.new("Liquidity Self Trade", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.liquidityselftrade", ftypes.UINT8, {[0]="Non Self Trade", [1]="Self Trade"}, base.DEC, 0x80)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_top_of_book = ProtoField.new("Liquidity Top Of Book", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.liquiditytopofbook", ftypes.UINT8, {[0]="Not Top Of Book", [1]="Top Of Book"}, base.DEC, 0x40)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.match_number = ProtoField.new("Match Number", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.matchnumber", ftypes.UINT32, nil, nil, nil, "Day unique match number")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.max_floor = ProtoField.new("Max Floor", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.maxfloor", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.max_floor_value = ProtoField.new("Max Floor Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.maxfloorvalue", ftypes.UINT32, nil, nil, nil, "Displayed quantity for an iceberg order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.minimumquantity", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.minimum_quantity_value = ProtoField.new("Minimum Quantity Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.minimumquantityvalue", ftypes.UINT32, nil, nil, nil, "Minimum quantity that could be traded")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.mmo_refresh_reason = ProtoField.new("Mmo Refresh Reason", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.mmorefreshreason", ftypes.STRING, nil, nil, nil, "Protection that was triggered")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.new_user_ref_num = ProtoField.new("New User Ref Num", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.newuserrefnum", ftypes.UINT32, nil, nil, nil, "New sequence number for the replacement")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.next_user_ref_num = ProtoField.new("Next User Ref Num", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.nextuserrefnum", ftypes.UINT32, nil, nil, nil, "The next available UserRefNum")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_book = ProtoField.new("Order Book", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.orderbook", ftypes.UINT32, nil, nil, nil, "Order book id")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_condition = ProtoField.new("Order Condition", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.ordercondition", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_condition_value = ProtoField.new("Order Condition Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.orderconditionvalue", ftypes.STRING, nil, nil, nil, "Condition changing the behaviour of the order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_reference = ProtoField.new("Order Reference", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.orderreference", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.orderreferencenumber", ftypes.UINT64, nil, nil, nil, "Day unique order reference number")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_reference_value = ProtoField.new("Order Reference Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.orderreferencevalue", ftypes.STRING, nil, nil, nil, "User supplied order reference, returned unchanged")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.orig_user_ref_num = ProtoField.new("Orig User Ref Num", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.origuserrefnum", ftypes.UINT32, nil, nil, nil, "Sequence number of the order being replaced")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.original_order_entry_date = ProtoField.new("Original Order Entry Date", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.originalorderentrydate", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.original_order_entry_date_value = ProtoField.new("Original Order Entry Date Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.originalorderentrydatevalue", ftypes.UINT32, nil, nil, nil, "Original order entry date for a good till cancel order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.originalorderreferencenumber", ftypes.UINT64)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.original_order_reference_number_value = ProtoField.new("Original Order Reference Number Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.originalorderreferencenumbervalue", ftypes.UINT64, nil, nil, nil, "Original order reference number for a good till cancel order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.party_role_qualifier = ProtoField.new("Party Role Qualifier", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.partyrolequalifier", ftypes.STRING, nil, nil, nil, "Packed qualifier bits")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.password = ProtoField.new("Password", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.peg_difference = ProtoField.new("Peg Difference", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.pegdifference", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.peg_difference_value = ProtoField.new("Peg Difference Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.pegdifferencevalue", ftypes.INT32, nil, nil, nil, "Ticks to offset the price from the peg target")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.peg_type = ProtoField.new("Peg Type", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.pegtype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.peg_type_value = ProtoField.new("Peg Type Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.pegtypevalue", ftypes.STRING, nil, nil, nil, "The peg target, valid for any peggable order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.price = ProtoField.new("Price", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.price", ftypes.DOUBLE, nil, nil, nil, "The limit price of the order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.quantity = ProtoField.new("Quantity", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.quantity", ftypes.UINT32, nil, nil, nil, "Total quantity entered")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.random_reserve = ProtoField.new("Random Reserve", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.randomreserve", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.random_reserve_value = ProtoField.new("Random Reserve Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.randomreservevalue", ftypes.UINT32, nil, nil, nil, "Range the display size is randomized by on refresh")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.reason = ProtoField.new("Reason", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.reason", ftypes.UINT16, nil, nil, nil, "The reason the Gtc order was cancelled")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.rejected_order_reason = ProtoField.new("Rejected Order Reason", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.rejectedorderreason", ftypes.UINT16, nil, nil, nil, "The reason the order was rejected")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.replace_pending_reason = ProtoField.new("Replace Pending Reason", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.replacependingreason", ftypes.STRING, nil, nil, nil, "Reason the order was pended")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.reserved_13 = ProtoField.new("Reserved 13", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.reserved13", ftypes.UINT8, nil, base.DEC, 0x07)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.reserved_78 = ProtoField.new("Reserved 78", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.reserved78", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.restate_reason = ProtoField.new("Restate Reason", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.restatereason", ftypes.STRING, nil, nil, nil, "The reason for this order being restated")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.secondary_order_reference_number = ProtoField.new("Secondary Order Reference Number", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.secondaryorderreferencenumber", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.secondary_order_reference_number_value = ProtoField.new("Secondary Order Reference Number Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.secondaryorderreferencenumbervalue", ftypes.UINT64, nil, nil, nil, "Alternative order reference used on the market data feeds")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_action = ProtoField.new("Stp Action", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.stpaction", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_action_value = ProtoField.new("Stp Action Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.stpactionvalue", ftypes.STRING, nil, nil, nil, "Action taken when self trade prevention triggers")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_level = ProtoField.new("Stp Level", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.stplevel", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_level_value = ProtoField.new("Stp Level Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.stplevelvalue", ftypes.STRING, nil, nil, nil, "Scope of self trade prevention for the order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_trader_group = ProtoField.new("Stp Trader Group", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.stptradergroup", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_trader_group_value = ProtoField.new("Stp Trader Group Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.stptradergroupvalue", ftypes.STRING, nil, nil, nil, "Client defined trader group for self trade prevention")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.tag = ProtoField.new("Tag", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.tag", ftypes.UINT8, nil, nil, nil, "Identifies the appendage carried by this element")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.tagvalue = ProtoField.new("TagValue", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.tagvalue", ftypes.STRING, nil, nil, nil, "Additional appendage tag value")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.timeinforce", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.time_in_force_value = ProtoField.new("Time In Force Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.timeinforcevalue", ftypes.STRING, nil, nil, nil, "How long the order remains live")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.timestamp", ftypes.UINT64, nil, nil, nil, "Nanoseconds past midnight")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.trading_at_closing_price = ProtoField.new("Trading At Closing Price", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.tradingatclosingprice", ftypes.STRING)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.trading_at_closing_price_value = ProtoField.new("Trading At Closing Price Value", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.tradingatclosingpricevalue", ftypes.STRING, nil, nil, nil, "Whether the order participates in trading at closing price")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.trading_mode = ProtoField.new("Trading Mode", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.tradingmode", ftypes.STRING, nil, nil, nil, "Market model typology level 2")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.transaction_category = ProtoField.new("Transaction Category", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.transactioncategory", ftypes.STRING, nil, nil, nil, "Market model typology level 3.1")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.transaction_type_algo_indicator = ProtoField.new("Transaction Type Algo Indicator", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.transactiontypealgoindicator", ftypes.STRING, nil, nil, nil, "Market model typology level 3.9")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.user = ProtoField.new("User", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.user", ftypes.STRING, nil, nil, nil, "Name of responsible trader")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.user_ref_num = ProtoField.new("User Ref Num", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.userrefnum", ftypes.UINT32, nil, nil, nil, "Sequence number, unique and strictly increasing for the day")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.username = ProtoField.new("Username", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Nasdaq NordicEquities OrderEntry Ouch 5.01.14 Framing
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_packet = ProtoField.new("Packet", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.server_packet = ProtoField.new("Packet", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Nasdaq NordicEquities OrderEntry 5.01.14 Application Messages
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.account_query_message = ProtoField.new("Account Query Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.accountquerymessage", ftypes.BYTES, nil, nil, nil, "Requests the next available UserRefNum when recovering state")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.account_query_response_message = ProtoField.new("Account Query Response Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.accountqueryresponsemessage", ftypes.STRING, nil, nil, nil, "Indicates the next available UserRefNum")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.brokentrademessage", ftypes.STRING, nil, nil, nil, "An execution has been broken and cannot be reinstated")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.cancelordermessage", ftypes.STRING, nil, nil, nil, "Requests that an order be cancelled or reduced")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_pending_message = ProtoField.new("Cancel Pending Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.cancelpendingmessage", ftypes.STRING, nil, nil, nil, "A cancel request cannot be applied immediately")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_rejected_message = ProtoField.new("Cancel Rejected Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.cancelrejectedmessage", ftypes.STRING, nil, nil, nil, "A cancel request has been rejected")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancelled_order_message = ProtoField.new("Cancelled Order Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.cancelledordermessage", ftypes.STRING, nil, nil, nil, "An order has been reduced or cancelled")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.enterordermessage", ftypes.STRING, nil, nil, nil, "Enters a new order into Nasdaq Nordic")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.executed_order_message = ProtoField.new("Executed Order Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.executedordermessage", ftypes.STRING, nil, nil, nil, "An order has been executed in whole or in part")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.gtc_cancelled_message = ProtoField.new("Gtc Cancelled Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.gtccancelledmessage", ftypes.STRING, nil, nil, nil, "A Gtc order could not be restated in the morning")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.mmi_notification_request_message = ProtoField.new("Mmi Notification Request Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.mminotificationrequestmessage", ftypes.STRING, nil, nil, nil, "Requests a market making instruction notification")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.mmo_refresh_request_message = ProtoField.new("Mmo Refresh Request Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.mmorefreshrequestmessage", ftypes.STRING, nil, nil, nil, "Requests a market maker order refresh")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.orderacceptedmessage", ftypes.STRING, nil, nil, nil, "Acknowledges receipt and acceptance of a valid Enter Order")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.orderreplacedmessage", ftypes.STRING, nil, nil, nil, "Confirms that an order has been replaced")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_restated_message = ProtoField.new("Order Restated Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.orderrestatedmessage", ftypes.STRING, nil, nil, nil, "An order has been restated by the system")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.rejectedordermessage", ftypes.STRING, nil, nil, nil, "An order has been rejected")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.replace_order_message = ProtoField.new("Replace Order Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.replaceordermessage", ftypes.STRING, nil, nil, nil, "Alters attributes of a live order in a single message")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.replace_pending_message = ProtoField.new("Replace Pending Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.replacependingmessage", ftypes.STRING, nil, nil, nil, "A replace request cannot be applied immediately")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.response_to_mmi_notification_message = ProtoField.new("Response To Mmi Notification Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.responsetomminotificationmessage", ftypes.STRING, nil, nil, nil, "Response to a market making instruction notification")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.systemeventmessage", ftypes.STRING, nil, nil, nil, "Signals an event affecting the entire Nasdaq Nordic system")

-- Nasdaq NordicEquities OrderEntry 5.01.14 Session Messages
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.endofsession", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server signals end of session; client may now disconnect. Carries no payload")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Nasdaq NordicEquities OrderEntry Ouch 5.01.14 Generated Fields
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nordicequities.orderentry.ouch.v5.01.14.sequenceddatapacketsequencenumber", ftypes.UINT64)

-- Nasdaq NordicEquities OrderEntry Ouch 5.01.14 Expert Info
nasdaq_nordicequities_orderentry_ouch_v5_01_14.experts = {}
nasdaq_nordicequities_orderentry_ouch_v5_01_14.experts.not_a_number = ProtoExpert.new("nasdaq.nordicequities.orderentry.ouch.v5.01.14.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.experts = { nasdaq_nordicequities_orderentry_ouch_v5_01_14.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq NordicEquities OrderEntry Ouch 5.01.14 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp_format = 2

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

-- Nasdaq NordicEquities OrderEntry Ouch 5.01.14 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq NordicEquities OrderEntry Ouch 5.01.14 Show Options
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_headers then
    show.headers = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_structs then
    show.structs = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_sequences then
    show.sequences = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.show_sequences
  end
  if nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp_format ~= omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.timestamp_format then
    nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp_format = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation = {}
nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stream_frame = nil
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.data = function(packet)
  local key = nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.key(packet)
  local data = nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.current = nil


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
-- Nasdaq NordicEquities OrderEntry Ouch 5.01.14 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nordicequities_orderentry_ouch_v5_01_14.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_session = {}

-- Size: Accepted Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Add Or Remove
nasdaq_nordicequities_orderentry_ouch_v5_01_14.add_or_remove = {}

-- Size: Add Or Remove
nasdaq_nordicequities_orderentry_ouch_v5_01_14.add_or_remove.size = 1

-- Display: Add Or Remove
nasdaq_nordicequities_orderentry_ouch_v5_01_14.add_or_remove.display = function(value)
  return "Add Or Remove: "..value
end

-- Dissect: Add Or Remove
nasdaq_nordicequities_orderentry_ouch_v5_01_14.add_or_remove.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.add_or_remove.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.add_or_remove.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.add_or_remove, range, value, display)

  return offset + length, value
end

-- Algo Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.algo_indicator = {}

-- Size: Algo Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.algo_indicator.size = 1

-- Display: Algo Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.algo_indicator.labels = {
  ["-"] = "Algo Indicator: No Algo (-)",
  ["H"] = "Algo Indicator: Algo (H)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.algo_indicator.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.algo_indicator.labels[value] or "Algo Indicator: Unknown("..value..")"
end

-- Dissect: Algo Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.algo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.algo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.algo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.algo_indicator, range, value, display)

  return offset + length, value
end

-- Appendage Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length = {}

-- Size: Appendage Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length.size = 2

-- Display: Appendage Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length.display = function(value)
  return "Appendage Length: "..value
end

-- Dissect: Appendage Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.appendage_length, range, value, display)

  return offset + length, value
end

-- Broken Trade Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_reason = {}

-- Size: Broken Trade Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_reason.size = 1

-- Display: Broken Trade Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_reason.labels = {
  ["E"] = "Broken Trade Reason: Erroneous (E)",
  ["C"] = "Broken Trade Reason: Consent (C)",
  ["S"] = "Broken Trade Reason: Supervisory (S)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_reason.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_reason.labels[value] or "Broken Trade Reason: Unknown("..value..")"
end

-- Dissect: Broken Trade Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator.labels = {
  ["B"] = "Buy Sell Indicator: Buy Order (B)",
  ["S"] = "Buy Sell Indicator: Sell Order (S)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Cancel Pending Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_reason = {}

-- Size: Cancel Pending Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_reason.size = 1

-- Display: Cancel Pending Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_reason.labels = {
  ["A"] = "Cancel Pending Reason: Cancel Pending Completion Of Auction On Demand (A)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_reason.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_reason.labels[value] or "Cancel Pending Reason: Unknown("..value..")"
end

-- Dissect: Cancel Pending Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_pending_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_reason = {}

-- Size: Cancel Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_reason.size = 1

-- Display: Cancel Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_reason.labels = {
  ["U"] = "Cancel Reason: User Requested Cancel (U)",
  ["I"] = "Cancel Reason: Immediate Or Cancel Order (I)",
  ["T"] = "Cancel Reason: Timeout (T)",
  ["S"] = "Cancel Reason: Supervisory (S)",
  ["Q"] = "Cancel Reason: Self Match Prevention (Q)",
  ["L"] = "Cancel Reason: Hidden Peg Not Lis (L)",
  ["N"] = "Cancel Reason: Bad Quote (N)",
  ["R"] = "Cancel Reason: State Management (R)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_reason.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_reason.labels[value] or "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Rejected Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_reason = {}

-- Size: Cancel Rejected Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_reason.size = 2

-- Display: Cancel Rejected Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_reason.display = function(value)
  return "Cancel Rejected Reason: "..value
end

-- Dissect: Cancel Rejected Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_rejected_reason, range, value, display)

  return offset + length, value
end

-- Capacity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.capacity = {}

-- Size: Capacity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.capacity.size = 1

-- Display: Capacity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.capacity.labels = {
  ["1"] = "Capacity: Client (1)",
  ["2"] = "Capacity: Own Account (2)",
  ["3"] = "Capacity: Market Maker (3)",
  ["4"] = "Capacity: Issuer Holding (4)",
  ["6"] = "Capacity: Issue Price Stabilizing (6)",
  ["7"] = "Capacity: Riskless Principal (7)",
  ["8"] = "Capacity: Issuer Holding Deal (8)",
  ["9"] = "Capacity: Issue Price Stabilizing Deal (9)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.capacity.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.capacity.labels[value] or "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.capacity, range, value, display)

  return offset + length, value
end

-- Clearing Account Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type_value = {}

-- Size: Clearing Account Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type_value.size = 1

-- Display: Clearing Account Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type_value.labels = {
  ["1"] = "Clearing Account Type Value: Customer Client (1)",
  ["2"] = "Clearing Account Type Value: Firm House (2)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type_value.labels[value] or "Clearing Account Type Value: Unknown("..value..")"
end

-- Dissect: Clearing Account Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_account_type_value, range, value, display)

  return offset + length, value
end

-- Clearing Account Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_value = {}

-- Size: Clearing Account Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_value.size = 12

-- Display: Clearing Account Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_value.display = function(value)
  return "Clearing Account Value: "..value
end

-- Dissect: Clearing Account Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_account_value, range, value, display)

  return offset + length, value
end

-- Clearing Firm Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm_value = {}

-- Size: Clearing Firm Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm_value.size = 4

-- Display: Clearing Firm Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm_value.display = function(value)
  return "Clearing Firm Value: "..value
end

-- Dissect: Clearing Firm Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_firm_value, range, value, display)

  return offset + length, value
end

-- Client Identifier
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_identifier = {}

-- Size: Client Identifier
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_identifier.size = 4

-- Display: Client Identifier
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_identifier.display = function(value)
  return "Client Identifier: "..value
end

-- Dissect: Client Identifier
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_identifier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_identifier, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_type.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Client Reference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference_value = {}

-- Size: Client Reference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference_value.size = 15

-- Display: Client Reference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference_value.display = function(value)
  return "Client Reference Value: "..value
end

-- Dissect: Client Reference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_reference_value, range, value, display)

  return offset + length, value
end

-- Contra Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.contra_firm = {}

-- Size: Contra Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.contra_firm.size = 4

-- Display: Contra Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.contra_firm.display = function(value)
  return "Contra Firm: "..value
end

-- Dissect: Contra Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.contra_firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.contra_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.contra_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.contra_firm, range, value, display)

  return offset + length, value
end

-- Cross Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type_value = {}

-- Size: Cross Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type_value.size = 1

-- Display: Cross Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type_value.labels = {
  ["C"] = "Cross Type Value: Closing Cross (C)",
  ["O"] = "Cross Type Value: Opening Cross (O)",
  ["I"] = "Cross Type Value: Scheduled Intraday Cross (I)",
  ["H"] = "Cross Type Value: Halt Cross (H)",
  ["A"] = "Cross Type Value: Auction On Demand (A)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type_value.labels[value] or "Cross Type Value: Unknown("..value..")"
end

-- Dissect: Cross Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cross_type_value, range, value, display)

  return offset + length, value
end

-- Cumulative Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity_value = {}

-- Size: Cumulative Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity_value.size = 4

-- Display: Cumulative Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity_value.display = function(value)
  return "Cumulative Quantity Value: "..value
end

-- Dissect: Cumulative Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cumulative_quantity_value, range, value, display)

  return offset + length, value
end

-- Customer Order Capacity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity_value = {}

-- Size: Customer Order Capacity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity_value.size = 1

-- Display: Customer Order Capacity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity_value.labels = {
  ["5"] = "Customer Order Capacity Value: Retail Customer (5)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity_value.labels[value] or "Customer Order Capacity Value: Unknown("..value..")"
end

-- Dissect: Customer Order Capacity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.customer_order_capacity_value, range, value, display)

  return offset + length, value
end

-- Dea Indicator Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator_value = {}

-- Size: Dea Indicator Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator_value.size = 1

-- Display: Dea Indicator Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator_value.labels = {
  ["1"] = "Dea Indicator Value: Order Received From A Customer (1)",
  ["2"] = "Dea Indicator Value: Order Received From Within The Firm (2)",
  ["3"] = "Dea Indicator Value: Order Received From Another Broker Dealer (3)",
  ["4"] = "Dea Indicator Value: Order Received From A Customer Or Originated With The Firm (4)",
  ["5"] = "Dea Indicator Value: Order Received From A Direct Access Or Sponsored Access Customer (5)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator_value.labels[value] or "Dea Indicator Value: Unknown("..value..")"
end

-- Dissect: Dea Indicator Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.dea_indicator_value, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_text = {}

-- Display: Debug Text
nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Decrement Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.decrement_quantity = {}

-- Size: Decrement Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.decrement_quantity.size = 4

-- Display: Decrement Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.decrement_quantity.display = function(value)
  return "Decrement Quantity: "..value
end

-- Dissect: Decrement Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.decrement_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.decrement_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.decrement_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.decrement_quantity, range, value, display)

  return offset + length, value
end

-- Display Price Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price_value = {}

-- Size: Display Price Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price_value.size = 4

-- Display: Display Price Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price_value.display = function(value)
  return "Display Price Value: "..value
end

-- Translate: Display Price Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price_value.translate = function(raw)
  return raw/10000
end

-- Dissect: Display Price Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price_value.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price_value.translate(raw)
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display_price_value, range, value, display)

  return offset + length, value
end

-- Display Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity_value = {}

-- Size: Display Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity_value.size = 4

-- Display: Display Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity_value.display = function(value)
  return "Display Quantity Value: "..value
end

-- Dissect: Display Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display_quantity_value, range, value, display)

  return offset + length, value
end

-- Display Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_value = {}

-- Size: Display Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_value.size = 1

-- Display: Display Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_value.labels = {
  ["Y"] = "Display Value: Display (Y)",
  ["N"] = "Display Value: Non Display (N)",
  ["A"] = "Display Value: Auction On Demand (A)",
  ["M"] = "Display Value: Nordic Mid (M)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_value.labels[value] or "Display Value: Unknown("..value..")"
end

-- Dissect: Display Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display_value, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.event_code = {}

-- Size: Event Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.event_code.size = 1

-- Display: Event Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.event_code.labels = {
  ["S"] = "Event Code: Start Of Day (S)",
  ["E"] = "Event Code: End Of Day (E)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.event_code.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_quantity = {}

-- Size: Executed Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_quantity.size = 4

-- Display: Executed Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_price = {}

-- Size: Execution Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_price.size = 4

-- Display: Execution Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_price.translate(raw)
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Execution Within Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_within_firm = {}

-- Size: Execution Within Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_within_firm.size = 4

-- Display: Execution Within Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_within_firm.display = function(value)
  return "Execution Within Firm: "..value
end

-- Dissect: Execution Within Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_within_firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_within_firm.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_within_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.execution_within_firm, range, value, display)

  return offset + length, value
end

-- Expire Time Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time_value = {}

-- Size: Expire Time Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time_value.size = 2

-- Display: Expire Time Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time_value.display = function(value)
  return "Expire Time Value: "..value
end

-- Dissect: Expire Time Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.expire_time_value, range, value, display)

  return offset + length, value
end

-- Firm Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm_value = {}

-- Size: Firm Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm_value.size = 4

-- Display: Firm Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm_value.display = function(value)
  return "Firm Value: "..value
end

-- Dissect: Firm Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.firm_value, range, value, display)

  return offset + length, value
end

-- Instruction
nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction = {}

-- Size: Instruction
nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction.size = 1

-- Display: Instruction
nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction.display = function(value)
  return "Instruction: "..value
end

-- Dissect: Instruction
nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.instruction, range, value, display)

  return offset + length, value
end

-- Instruction Status
nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction_status = {}

-- Size: Instruction Status
nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction_status.size = 1

-- Display: Instruction Status
nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction_status.display = function(value)
  return "Instruction Status: "..value
end

-- Dissect: Instruction Status
nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction_status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.instruction_status, range, value, display)

  return offset + length, value
end

-- Investment Decision Within Firm Short Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.investment_decision_within_firm_short_code = {}

-- Size: Investment Decision Within Firm Short Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.investment_decision_within_firm_short_code.size = 4

-- Display: Investment Decision Within Firm Short Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.investment_decision_within_firm_short_code.display = function(value)
  return "Investment Decision Within Firm Short Code: "..value
end

-- Dissect: Investment Decision Within Firm Short Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.investment_decision_within_firm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.investment_decision_within_firm_short_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.investment_decision_within_firm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.investment_decision_within_firm_short_code, range, value, display)

  return offset + length, value
end

-- Last Market
nasdaq_nordicequities_orderentry_ouch_v5_01_14.last_market = {}

-- Size: Last Market
nasdaq_nordicequities_orderentry_ouch_v5_01_14.last_market.size = 1

-- Display: Last Market
nasdaq_nordicequities_orderentry_ouch_v5_01_14.last_market.display = function(value)
  return "Last Market: "..value
end

-- Dissect: Last Market
nasdaq_nordicequities_orderentry_ouch_v5_01_14.last_market.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.last_market.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.last_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.last_market, range, value, display)

  return offset + length, value
end

-- Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.length = {}

-- Size: Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.length.size = 1

-- Display: Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.length, range, value, display)

  return offset + length, value
end

-- Liquidity Flag
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_flag = {}

-- Size: Liquidity Flag
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_flag.size = 1

-- Display: Liquidity Flag
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_flag.display = function(value)
  return "Liquidity Flag: "..value
end

-- Dissect: Liquidity Flag
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Liquidity Provision Indicator Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator_value = {}

-- Size: Liquidity Provision Indicator Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator_value.size = 1

-- Display: Liquidity Provision Indicator Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator_value.labels = {
  ["N"] = "Liquidity Provision Indicator Value: No Liquidity Provision (N)",
  ["Y"] = "Liquidity Provision Indicator Value: Liquidity Provision (Y)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator_value.labels[value] or "Liquidity Provision Indicator Value: Unknown("..value..")"
end

-- Dissect: Liquidity Provision Indicator Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_provision_indicator_value, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.match_number = {}

-- Size: Match Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.match_number.size = 4

-- Display: Match Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.match_number, range, value, display)

  return offset + length, value
end

-- Max Floor Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor_value = {}

-- Size: Max Floor Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor_value.size = 4

-- Display: Max Floor Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor_value.display = function(value)
  return "Max Floor Value: "..value
end

-- Dissect: Max Floor Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.max_floor_value, range, value, display)

  return offset + length, value
end

-- Minimum Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity_value = {}

-- Size: Minimum Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity_value.size = 4

-- Display: Minimum Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity_value.display = function(value)
  return "Minimum Quantity Value: "..value
end

-- Dissect: Minimum Quantity Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.minimum_quantity_value, range, value, display)

  return offset + length, value
end

-- Mmo Refresh Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_reason = {}

-- Size: Mmo Refresh Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_reason.size = 1

-- Display: Mmo Refresh Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_reason.display = function(value)
  return "Mmo Refresh Reason: "..value
end

-- Dissect: Mmo Refresh Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.mmo_refresh_reason, range, value, display)

  return offset + length, value
end

-- New User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.new_user_ref_num = {}

-- Size: New User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.new_user_ref_num.size = 4

-- Display: New User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.new_user_ref_num.display = function(value)
  return "New User Ref Num: "..value
end

-- Dissect: New User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.new_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.new_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.new_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.new_user_ref_num, range, value, display)

  return offset + length, value
end

-- Next User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.next_user_ref_num = {}

-- Size: Next User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.next_user_ref_num.size = 4

-- Display: Next User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.next_user_ref_num.display = function(value)
  return "Next User Ref Num: "..value
end

-- Dissect: Next User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.next_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.next_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.next_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.next_user_ref_num, range, value, display)

  return offset + length, value
end

-- Order Book
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book = {}

-- Size: Order Book
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.size = 4

-- Display: Order Book
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.display = function(value)
  return "Order Book: "..value
end

-- Dissect: Order Book
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_book, range, value, display)

  return offset + length, value
end

-- Order Condition Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition_value = {}

-- Size: Order Condition Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition_value.size = 1

-- Display: Order Condition Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition_value.labels = {
  ["W"] = "Order Condition Value: Market Maker Order (W)",
  ["U"] = "Order Condition Value: Market Maker Order Refresh (U)",
  ["P"] = "Order Condition Value: Top Of Book (P)",
  ["Q"] = "Order Condition Value: Dark Lit Sweep (Q)",
  ["T"] = "Order Condition Value: Trade Now (T)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition_value.labels[value] or "Order Condition Value: Unknown("..value..")"
end

-- Dissect: Order Condition Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_condition_value, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Reference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_value = {}

-- Size: Order Reference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_value.size = 10

-- Display: Order Reference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_value.display = function(value)
  return "Order Reference Value: "..value
end

-- Dissect: Order Reference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_reference_value, range, value, display)

  return offset + length, value
end

-- Orig User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.orig_user_ref_num = {}

-- Size: Orig User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.orig_user_ref_num.size = 4

-- Display: Orig User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.orig_user_ref_num.display = function(value)
  return "Orig User Ref Num: "..value
end

-- Dissect: Orig User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.orig_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.orig_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.orig_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.orig_user_ref_num, range, value, display)

  return offset + length, value
end

-- Original Order Entry Date Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date_value = {}

-- Size: Original Order Entry Date Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date_value.size = 4

-- Display: Original Order Entry Date Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date_value.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Original Order Entry Date Value: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Original Order Entry Date Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.original_order_entry_date_value, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number_value = {}

-- Size: Original Order Reference Number Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number_value.size = 8

-- Display: Original Order Reference Number Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number_value.display = function(value)
  return "Original Order Reference Number Value: "..value
end

-- Dissect: Original Order Reference Number Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.original_order_reference_number_value, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.packet_length = {}

-- Size: Packet Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.packet_length.size = 2

-- Display: Packet Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nordicequities_orderentry_ouch_v5_01_14.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nordicequities_orderentry_ouch_v5_01_14.password = {}

-- Size: Password
nasdaq_nordicequities_orderentry_ouch_v5_01_14.password.size = 10

-- Display: Password
nasdaq_nordicequities_orderentry_ouch_v5_01_14.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nordicequities_orderentry_ouch_v5_01_14.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Difference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference_value = {}

-- Size: Peg Difference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference_value.size = 4

-- Display: Peg Difference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference_value.display = function(value)
  return "Peg Difference Value: "..value
end

-- Dissect: Peg Difference Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.peg_difference_value, range, value, display)

  return offset + length, value
end

-- Peg Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type_value = {}

-- Size: Peg Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type_value.size = 1

-- Display: Peg Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type_value.labels = {
  ["M"] = "Peg Type Value: Midpoint (M)",
  ["P"] = "Peg Type Value: Market (P)",
  ["R"] = "Peg Type Value: Primary (R)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type_value.labels[value] or "Peg Type Value: Unknown("..value..")"
end

-- Dissect: Peg Type Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.peg_type_value, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.price = {}

-- Size: Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.size = 4

-- Display: Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.translate(raw)
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity = {}

-- Size: Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.size = 4

-- Display: Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.quantity, range, value, display)

  return offset + length, value
end

-- Random Reserve Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve_value = {}

-- Size: Random Reserve Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve_value.size = 4

-- Display: Random Reserve Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve_value.display = function(value)
  return "Random Reserve Value: "..value
end

-- Dissect: Random Reserve Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.random_reserve_value, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.reason = {}

-- Size: Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.reason.size = 2

-- Display: Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.reject_reason_code.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_nordicequities_orderentry_ouch_v5_01_14.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Rejected Order Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_reason = {}

-- Size: Rejected Order Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_reason.size = 2

-- Display: Rejected Order Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_reason.display = function(value)
  return "Rejected Order Reason: "..value
end

-- Dissect: Rejected Order Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.rejected_order_reason, range, value, display)

  return offset + length, value
end

-- Replace Pending Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_reason = {}

-- Size: Replace Pending Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_reason.size = 1

-- Display: Replace Pending Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_reason.display = function(value)
  return "Replace Pending Reason: "..value
end

-- Dissect: Replace Pending Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.replace_pending_reason, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nordicequities_orderentry_ouch_v5_01_14.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_session = {}

-- Size: Requested Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_session.size = 10

-- Display: Requested Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Restate Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.restate_reason = {}

-- Size: Restate Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.restate_reason.size = 1

-- Display: Restate Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.restate_reason.labels = {
  ["R"] = "Restate Reason: Refresh Of Display (R)",
  ["P"] = "Restate Reason: Update Of Displayed Price (P)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.restate_reason.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.restate_reason.labels[value] or "Restate Reason: Unknown("..value..")"
end

-- Dissect: Restate Reason
nasdaq_nordicequities_orderentry_ouch_v5_01_14.restate_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.restate_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.restate_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.restate_reason, range, value, display)

  return offset + length, value
end

-- Secondary Order Reference Number Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number_value = {}

-- Size: Secondary Order Reference Number Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number_value.size = 8

-- Display: Secondary Order Reference Number Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number_value.display = function(value)
  return "Secondary Order Reference Number Value: "..value
end

-- Dissect: Secondary Order Reference Number Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.secondary_order_reference_number_value, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message_type.labels = {
  ["S"] = "Sequenced Message Type: System Event Message (S)",
  ["A"] = "Sequenced Message Type: Order Accepted Message (A)",
  ["U"] = "Sequenced Message Type: Order Replaced Message (U)",
  ["C"] = "Sequenced Message Type: Cancelled Order Message (C)",
  ["P"] = "Sequenced Message Type: Cancel Pending Message (P)",
  ["N"] = "Sequenced Message Type: Replace Pending Message (N)",
  ["E"] = "Sequenced Message Type: Executed Order Message (E)",
  ["B"] = "Sequenced Message Type: Broken Trade Message (B)",
  ["J"] = "Sequenced Message Type: Rejected Order Message (J)",
  ["I"] = "Sequenced Message Type: Cancel Rejected Message (I)",
  ["T"] = "Sequenced Message Type: Order Restated Message (T)",
  ["W"] = "Sequenced Message Type: Mmo Refresh Request Message (W)",
  ["Q"] = "Sequenced Message Type: Account Query Response Message (Q)",
  ["G"] = "Sequenced Message Type: Gtc Cancelled Message (G)",
  ["R"] = "Sequenced Message Type: Response To Mmi Notification Message (R)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message_type.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_type.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Stp Action Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action_value = {}

-- Size: Stp Action Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action_value.size = 1

-- Display: Stp Action Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action_value.labels = {
  ["1"] = "Stp Action Value: Cancel Passive Order (1)",
  ["2"] = "Stp Action Value: Cancel Aggressive Order (2)",
  ["3"] = "Stp Action Value: Cancel Both Orders (3)",
  ["4"] = "Stp Action Value: Create A Transfer Transaction (4)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action_value.labels[value] or "Stp Action Value: Unknown("..value..")"
end

-- Dissect: Stp Action Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_action_value, range, value, display)

  return offset + length, value
end

-- Stp Level Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level_value = {}

-- Size: Stp Level Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level_value.size = 1

-- Display: Stp Level Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level_value.labels = {
  ["1"] = "Stp Level Value: Mpid And Trader (1)",
  ["2"] = "Stp Level Value: Mpid (2)",
  ["3"] = "Stp Level Value: Specified Trader Group (3)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level_value.labels[value] or "Stp Level Value: Unknown("..value..")"
end

-- Dissect: Stp Level Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_level_value, range, value, display)

  return offset + length, value
end

-- Stp Trader Group Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group_value = {}

-- Size: Stp Trader Group Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group_value.size = 2

-- Display: Stp Trader Group Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group_value.display = function(value)
  return "Stp Trader Group Value: "..value
end

-- Dissect: Stp Trader Group Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_trader_group_value, range, value, display)

  return offset + length, value
end

-- Tag
nasdaq_nordicequities_orderentry_ouch_v5_01_14.tag = {}

-- Size: Tag
nasdaq_nordicequities_orderentry_ouch_v5_01_14.tag.size = 1

-- Display: Tag
nasdaq_nordicequities_orderentry_ouch_v5_01_14.tag.display = function(value)
  return "Tag: "..value
end

-- Dissect: Tag
nasdaq_nordicequities_orderentry_ouch_v5_01_14.tag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.tag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.tag, range, value, display)

  return offset + length, value
end

-- Time In Force Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force_value = {}

-- Size: Time In Force Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force_value.size = 1

-- Display: Time In Force Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force_value.labels = {
  ["0"] = "Time In Force Value: Day (0)",
  ["1"] = "Time In Force Value: Gtc Good Till Cancelled (1)",
  ["3"] = "Time In Force Value: Ioc Immediate Or Cancel (3)",
  ["6"] = "Time In Force Value: Gtt Good Till Time (6)",
  ["B"] = "Time In Force Value: Gfa Good For Auction (B)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force_value.labels[value] or "Time In Force Value: Unknown("..value..")"
end

-- Dissect: Time In Force Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.time_in_force_value, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp = {}

-- Size: Timestamp
nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size = 8

-- Display: Timestamp
nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp_format == 2 and packet then
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
nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading At Closing Price Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price_value = {}

-- Size: Trading At Closing Price Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price_value.size = 1

-- Display: Trading At Closing Price Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price_value.labels = {
  ["Y"] = "Trading At Closing Price Value: Participate In Trading At Closing Price (Y)",
  ["N"] = "Trading At Closing Price Value: Do Not Participate In Trading At Closing Price (N)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price_value.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price_value.labels[value] or "Trading At Closing Price Value: Unknown("..value..")"
end

-- Dissect: Trading At Closing Price Value
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.trading_at_closing_price_value, range, value, display)

  return offset + length, value
end

-- Trading Mode
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode = {}

-- Size: Trading Mode
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.size = 1

-- Display: Trading Mode
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.labels = {
  ["O"] = "Trading Mode: Opening Auction (O)",
  ["I"] = "Trading Mode: Scheduled Intraday Auction (I)",
  ["U"] = "Trading Mode: Unscheduled Auction (U)",
  ["2"] = "Trading Mode: Continuous Trading (2)",
  ["3"] = "Trading Mode: At Market Close Trading (3)",
  ["P"] = "Trading Mode: On Demand Auction (P)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.labels[value] or "Trading Mode: Unknown("..value..")"
end

-- Dissect: Trading Mode
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Transaction Category
nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category = {}

-- Size: Transaction Category
nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.size = 1

-- Display: Transaction Category
nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.labels = {
  ["D"] = "Transaction Category: Dark Trade (D)",
  ["-"] = "Transaction Category: None Apply (-)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.labels[value] or "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Type Algo Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator = {}

-- Size: Transaction Type Algo Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.size = 1

-- Display: Transaction Type Algo Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.labels = {
  ["H"] = "Transaction Type Algo Indicator: Algorithmic Trade (H)",
  ["-"] = "Transaction Type Algo Indicator: No Algorithmic Trade (-)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.labels[value] or "Transaction Type Algo Indicator: Unknown("..value..")"
end

-- Dissect: Transaction Type Algo Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.transaction_type_algo_indicator, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message_type.labels = {
  ["O"] = "Unsequenced Message Type: Enter Order Message (O)",
  ["U"] = "Unsequenced Message Type: Replace Order Message (U)",
  ["X"] = "Unsequenced Message Type: Cancel Order Message (X)",
  ["Q"] = "Unsequenced Message Type: Account Query Message (Q)",
  ["M"] = "Unsequenced Message Type: Mmi Notification Request Message (M)",
}

nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message_type.display = function(value)
  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- User
nasdaq_nordicequities_orderentry_ouch_v5_01_14.user = {}

-- Size: User
nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.size = 6

-- Display: User
nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.user, range, value, display)

  return offset + length, value
end

-- User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num = {}

-- Size: User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size = 4

-- Display: User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.display = function(value)
  return "User Ref Num: "..value
end

-- Dissect: User Ref Num
nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.user_ref_num, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nordicequities_orderentry_ouch_v5_01_14.username = {}

-- Size: Username
nasdaq_nordicequities_orderentry_ouch_v5_01_14.username.size = 6

-- Display: Username
nasdaq_nordicequities_orderentry_ouch_v5_01_14.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nordicequities_orderentry_ouch_v5_01_14.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NordicEquities OrderEntry Ouch 5.01.14
-----------------------------------------------------------------------

-- End Of Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.end_of_session = {}

-- Display: End Of Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nordicequities_orderentry_ouch_v5_01_14.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm = {}

-- Size: Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm_value.size

-- Display: Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.display = function(packet, parent, value, length)
  -- Check if struct has text
  if value == nil or value == '' then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Value: Alpha
  index, firm_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm_value.dissect(buffer, index, packet, parent)

  -- Struct text: the bytes the fields covered, trimmed at the first null
  local firm = ''
  if index > offset then
    local text = buffer(offset, index - offset)
    local tail = buffer(index - 1, 1):uint()
    if tail == 0 then
      firm = text:stringz()
    else
      firm = text:string()
    end
  end

  return index, firm
end

-- Dissect: Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.firm, buffer(offset, 0))
    local index, value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.fields(buffer, offset, packet, parent)
  end
end

-- Response To Mmi Notification Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.response_to_mmi_notification_message = {}

-- Size: Response To Mmi Notification Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.response_to_mmi_notification_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.add_or_remove.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction_status.size

-- Display: Response To Mmi Notification Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.response_to_mmi_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response To Mmi Notification Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.response_to_mmi_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.dissect(buffer, index, packet, parent)

  -- Instruction: Alpha-numeric
  index, instruction = nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction.dissect(buffer, index, packet, parent)

  -- Add Or Remove: Alpha
  index, add_or_remove = nasdaq_nordicequities_orderentry_ouch_v5_01_14.add_or_remove.dissect(buffer, index, packet, parent)

  -- Firm: Struct of 1 fields
  index, firm = nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.dissect(buffer, index, packet, parent)

  -- Instruction Status: Alpha-numeric
  index, instruction_status = nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Response To Mmi Notification Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.response_to_mmi_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.response_to_mmi_notification_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.response_to_mmi_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.response_to_mmi_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.response_to_mmi_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Original Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number_value.size

-- Display: Original Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Original Order Reference Number Value: Integer
  index, original_order_reference_number_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.original_order_reference_number, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number.fields(buffer, offset, packet, parent)
  end
end

-- Original Order Entry Date
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date = {}

-- Size: Original Order Entry Date
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date_value.size

-- Display: Original Order Entry Date
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Order Entry Date
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Original Order Entry Date Value: Date
  index, original_order_entry_date_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Order Entry Date
nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.original_order_entry_date, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date.fields(buffer, offset, packet, parent)
  end
end

-- Gtc Cancelled Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.gtc_cancelled_message = {}

-- Size: Gtc Cancelled Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.gtc_cancelled_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.reason.size

-- Display: Gtc Cancelled Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.gtc_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gtc Cancelled Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.gtc_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Entry Date: Struct of 1 fields
  index, original_order_entry_date = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Struct of 1 fields
  index, original_order_reference_number = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- Reason: Integer
  index, reason = nasdaq_nordicequities_orderentry_ouch_v5_01_14.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gtc Cancelled Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.gtc_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.gtc_cancelled_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.gtc_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.gtc_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.gtc_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Account Query Response Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_response_message = {}

-- Size: Account Query Response Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_response_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.next_user_ref_num.size

-- Display: Account Query Response Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Response Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- Next User Ref Num: UserRefNum
  index, next_user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.next_user_ref_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Account Query Response Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.account_query_response_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Mmo Refresh Request Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_request_message = {}

-- Size: Mmo Refresh Request Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_request_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_reason.size

-- Display: Mmo Refresh Request Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mmo Refresh Request Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- Firm: Struct of 1 fields
  index, firm = nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.dissect(buffer, index, packet, parent)

  -- Mmo Refresh Reason: Alpha
  index, mmo_refresh_reason = nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mmo Refresh Request Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.mmo_refresh_request_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Customer Order Capacity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity = {}

-- Size: Customer Order Capacity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity_value.size

-- Display: Customer Order Capacity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Customer Order Capacity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Customer Order Capacity Value: Alpha
  index, customer_order_capacity_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Customer Order Capacity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.customer_order_capacity, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity.fields(buffer, offset, packet, parent)
  end
end

-- Cumulative Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity = {}

-- Size: Cumulative Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity_value.size

-- Display: Cumulative Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cumulative Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cumulative Quantity Value: Integer
  index, cumulative_quantity_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cumulative Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cumulative_quantity, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity.fields(buffer, offset, packet, parent)
  end
end

-- Order Condition
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition = {}

-- Size: Order Condition
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition_value.size

-- Display: Order Condition
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Condition
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Condition Value: Alpha
  index, order_condition_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Condition
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_condition, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition.fields(buffer, offset, packet, parent)
  end
end

-- Trading At Closing Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price = {}

-- Size: Trading At Closing Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price_value.size

-- Display: Trading At Closing Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading At Closing Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading At Closing Price Value: Alpha
  index, trading_at_closing_price_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading At Closing Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.trading_at_closing_price, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price.fields(buffer, offset, packet, parent)
  end
end

-- Time In Force
nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force = {}

-- Size: Time In Force
nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force_value.size

-- Display: Time In Force
nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time In Force
nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time In Force Value: Alphanumeric
  index, time_in_force_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time In Force
nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.time_in_force, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force.fields(buffer, offset, packet, parent)
  end
end

-- Stp Trader Group
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group = {}

-- Size: Stp Trader Group
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group_value.size

-- Display: Stp Trader Group
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stp Trader Group
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stp Trader Group Value: Alphanumeric
  index, stp_trader_group_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stp Trader Group
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_trader_group, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group.fields(buffer, offset, packet, parent)
  end
end

-- Stp Level
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level = {}

-- Size: Stp Level
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level_value.size

-- Display: Stp Level
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stp Level
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stp Level Value: Alphanumeric
  index, stp_level_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stp Level
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_level, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level.fields(buffer, offset, packet, parent)
  end
end

-- Stp Action
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action = {}

-- Size: Stp Action
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action_value.size

-- Display: Stp Action
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stp Action
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stp Action Value: Alphanumeric
  index, stp_action_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stp Action
nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.stp_action, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action.fields(buffer, offset, packet, parent)
  end
end

-- Secondary Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number = {}

-- Size: Secondary Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number_value.size

-- Display: Secondary Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Secondary Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Secondary Order Reference Number Value: Integer
  index, secondary_order_reference_number_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Secondary Order Reference Number
nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.secondary_order_reference_number, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number.fields(buffer, offset, packet, parent)
  end
end

-- Random Reserve
nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve = {}

-- Size: Random Reserve
nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve_value.size

-- Display: Random Reserve
nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Random Reserve
nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Random Reserve Value: Integer
  index, random_reserve_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Random Reserve
nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.random_reserve, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve.fields(buffer, offset, packet, parent)
  end
end

-- Peg Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type = {}

-- Size: Peg Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type_value.size

-- Display: Peg Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Peg Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Peg Type Value: Alpha
  index, peg_type_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Peg Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.peg_type, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type.fields(buffer, offset, packet, parent)
  end
end

-- Peg Difference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference = {}

-- Size: Peg Difference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference_value.size

-- Display: Peg Difference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Peg Difference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Peg Difference Value: Signed Integer
  index, peg_difference_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Peg Difference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.peg_difference, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference.fields(buffer, offset, packet, parent)
  end
end

-- Order Reference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference = {}

-- Size: Order Reference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_value.size

-- Display: Order Reference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference Value: Alpha
  index, order_reference_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_reference, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity = {}

-- Size: Minimum Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity_value.size

-- Display: Minimum Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Quantity Value: Integer
  index, minimum_quantity_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.minimum_quantity, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity.fields(buffer, offset, packet, parent)
  end
end

-- Max Floor
nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor = {}

-- Size: Max Floor
nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor_value.size

-- Display: Max Floor
nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Floor
nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Max Floor Value: Integer
  index, max_floor_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Floor
nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.max_floor, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Provision Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator = {}

-- Size: Liquidity Provision Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator_value.size

-- Display: Liquidity Provision Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Provision Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Liquidity Provision Indicator Value: Alpha
  index, liquidity_provision_indicator_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Provision Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_provision_indicator, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator.fields(buffer, offset, packet, parent)
  end
end

-- Expire Time
nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time = {}

-- Size: Expire Time
nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time_value.size

-- Display: Expire Time
nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expire Time
nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Expire Time Value: Integer
  index, expire_time_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expire Time
nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.expire_time, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time.fields(buffer, offset, packet, parent)
  end
end

-- Display Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity = {}

-- Size: Display Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity_value.size

-- Display: Display Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Display Quantity Value: Integer
  index, display_quantity_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Display Quantity
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display_quantity, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity.fields(buffer, offset, packet, parent)
  end
end

-- Display Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price = {}

-- Size: Display Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price_value.size

-- Display: Display Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Display Price Value: Price
  index, display_price_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Display Price
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display_price, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price.fields(buffer, offset, packet, parent)
  end
end

-- Display
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display = {}

-- Size: Display
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_value.size

-- Display: Display
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Display Value: Alpha
  index, display_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Display
nasdaq_nordicequities_orderentry_ouch_v5_01_14.display.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.display, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.display.fields(buffer, offset, packet, parent)
  end
end

-- Dea Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator = {}

-- Size: Dea Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator_value.size

-- Display: Dea Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dea Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dea Indicator Value: Alpha
  index, dea_indicator_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dea Indicator
nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.dea_indicator, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator.fields(buffer, offset, packet, parent)
  end
end

-- Cross Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type = {}

-- Size: Cross Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type_value.size

-- Display: Cross Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Type Value: Alpha
  index, cross_type_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cross_type, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type.fields(buffer, offset, packet, parent)
  end
end

-- Client Reference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference = {}

-- Size: Client Reference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference_value.size

-- Display: Client Reference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Reference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Reference Value: Alpha
  index, client_reference_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Reference
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_reference, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm = {}

-- Size: Clearing Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm_value.size

-- Display: Clearing Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Value: Alpha
  index, clearing_firm_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Firm
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_firm, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Account Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type = {}

-- Size: Clearing Account Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type_value.size

-- Display: Clearing Account Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Account Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Account Type Value: Alphanumeric
  index, clearing_account_type_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Account Type
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_account_type, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Account
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account = {}

-- Size: Clearing Account
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_value.size

-- Display: Clearing Account
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Account
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Account Value: Alpha
  index, clearing_account_value = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Account
nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.clearing_account, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account.fields(buffer, offset, packet, parent)
  end
end

-- Value Payload
nasdaq_nordicequities_orderentry_ouch_v5_01_14.value_payload = {}

-- Dispatch: Value Payload
nasdaq_nordicequities_orderentry_ouch_v5_01_14.value_payload.dispatch = {
  [1] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account.dissect,
  [2] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_account_type.dissect,
  [3] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.clearing_firm.dissect,
  [4] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_reference.dissect,
  [5] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cross_type.dissect,
  [6] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.dea_indicator.dissect,
  [7] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display.dissect,
  [8] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_price.dissect,
  [9] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.display_quantity.dissect,
  [10] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.expire_time.dissect,
  [11] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.dissect,
  [12] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_provision_indicator.dissect,
  [13] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.max_floor.dissect,
  [14] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.minimum_quantity.dissect,
  [15] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference.dissect,
  [16] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_entry_date.dissect,
  [17] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.original_order_reference_number.dissect,
  [18] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_difference.dissect,
  [19] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.peg_type.dissect,
  [20] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.random_reserve.dissect,
  [21] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.secondary_order_reference_number.dissect,
  [22] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_action.dissect,
  [23] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_level.dissect,
  [24] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stp_trader_group.dissect,
  [25] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.time_in_force.dissect,
  [26] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_at_closing_price.dissect,
  [27] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_condition.dissect,
  [28] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cumulative_quantity.dissect,
  [29] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.customer_order_capacity.dissect,
}

-- Dissect: Value Payload
nasdaq_nordicequities_orderentry_ouch_v5_01_14.value_payload.dissect = function(buffer, offset, packet, parent, tag)
  local dissect = nasdaq_nordicequities_orderentry_ouch_v5_01_14.value_payload.dispatch[tag]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- TagValue
nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue = {}

-- Display: TagValue
nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: TagValue
nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.fields = function(buffer, offset, packet, parent, size_of_tagvalue)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.length.dissect(buffer, index, packet, parent)

  -- Tag: 1 Byte Unsigned Fixed Width Integer
  index, tag = nasdaq_nordicequities_orderentry_ouch_v5_01_14.tag.dissect(buffer, index, packet, parent)

  -- Value Payload: Runtime Type with 29 branches
  index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.value_payload.dissect(buffer, index, packet, parent, tag)

  return index
end

-- Dissect: TagValue
nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.dissect = function(buffer, offset, packet, parent, size_of_tagvalue)
  local index = offset + size_of_tagvalue

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.tagvalue, buffer(offset, 0))
    local current = nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.fields(buffer, offset, packet, parent, size_of_tagvalue)
    parent:set_len(size_of_tagvalue)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.fields(buffer, offset, packet, parent, size_of_tagvalue)

    return index
  end
end

-- Order Restated Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_restated_message = {}

-- Size: Order Restated Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_restated_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Restated Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Restate Reason: Alpha
  index, restate_reason = nasdaq_nordicequities_orderentry_ouch_v5_01_14.restate_reason.dissect(buffer, index, packet, parent)

  -- Appendage Length: Integer
  index, appendage_length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for TagValue
  local end_of_payload = index + appendage_length

  -- TagValue: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 1):uint()

    -- Runtime Size Of: TagValue
    local size_of_tagvalue = length + 1

    -- TagValue: Struct of 3 fields
    index, tagvalue = nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.dissect(buffer, index, packet, parent, size_of_tagvalue)
  end

  return index
end

-- Dissect: Order Restated Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_restated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_restated_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_restated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_restated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_restated_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Rejected Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_message = {}

-- Size: Cancel Rejected Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_reason.size

-- Display: Cancel Rejected Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Cancel Rejected Reason: Integer
  index, cancel_rejected_reason = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_rejected_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejected Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_message = {}

-- Size: Rejected Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_reason.size

-- Display: Rejected Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Rejected Order Reason: Integer
  index, rejected_order_reason = nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.rejected_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.match_number.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_reason.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.size

-- Display: Broken Trade Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nordicequities_orderentry_ouch_v5_01_14.match_number.dissect(buffer, index, packet, parent)

  -- Broken Trade Reason: Alpha
  index, broken_trade_reason = nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_reason.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alpha
  index, trading_mode = nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alpha
  index, transaction_category = nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.dissect(buffer, index, packet, parent)

  -- Transaction Type Algo Indicator: Alpha
  index, transaction_type_algo_indicator = nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Attributes
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_attributes = {}

-- Size: Liquidity Attributes
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_attributes.size = 1

-- Display: Liquidity Attributes
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_attributes.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Liquidity Internalized flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Liquidity Internalized"
  end
  -- Is Liquidity Top Of Book flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Liquidity Top Of Book"
  end
  -- Is Liquidity Self Trade flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Liquidity Self Trade"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Liquidity Attributes
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_attributes.bits = function(range, value, packet, parent)

  -- Reserved 13: 3 Bit
  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.reserved_13, range, value)

  -- Liquidity Indicator: 2 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_indicator, range, value)

  -- Liquidity Internalized: 1 Bit Enum with 2 values
  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_internalized, range, value)

  -- Liquidity Top Of Book: 1 Bit Enum with 2 values
  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_top_of_book, range, value)

  -- Liquidity Self Trade: 1 Bit Enum with 2 values
  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_self_trade, range, value)
end

-- Dissect: Liquidity Attributes
nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_attributes.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_attributes.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_attributes.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.liquidity_attributes, range, display)

  if show.structs then
    nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_attributes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Executed Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_order_message = {}

-- Size: Executed Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_order_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_quantity.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_price.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_flag.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.match_number.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.contra_firm.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_attributes.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.last_market.size

-- Display: Executed Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Executed Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Price: Price
  index, execution_price = nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nordicequities_orderentry_ouch_v5_01_14.match_number.dissect(buffer, index, packet, parent)

  -- Contra Firm: Alpha
  index, contra_firm = nasdaq_nordicequities_orderentry_ouch_v5_01_14.contra_firm.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alpha
  index, trading_mode = nasdaq_nordicequities_orderentry_ouch_v5_01_14.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alpha
  index, transaction_category = nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_category.dissect(buffer, index, packet, parent)

  -- Transaction Type Algo Indicator: Alpha
  index, transaction_type_algo_indicator = nasdaq_nordicequities_orderentry_ouch_v5_01_14.transaction_type_algo_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Attributes: Struct of 5 fields
  index, liquidity_attributes = nasdaq_nordicequities_orderentry_ouch_v5_01_14.liquidity_attributes.dissect(buffer, index, packet, parent)

  -- Last Market: Integer
  index, last_market = nasdaq_nordicequities_orderentry_ouch_v5_01_14.last_market.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.executed_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Pending Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_message = {}

-- Size: Replace Pending Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.orig_user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_reason.size

-- Display: Replace Pending Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Pending Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- Orig User Ref Num: UserRefNum
  index, orig_user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Replace Pending Reason: Alpha
  index, replace_pending_reason = nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Pending Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.replace_pending_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Pending Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_message = {}

-- Size: Cancel Pending Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_reason.size

-- Display: Cancel Pending Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Pending Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Cancel Pending Reason: Alpha
  index, cancel_pending_reason = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Pending Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_pending_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancelled Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancelled_order_message = {}

-- Size: Cancelled Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancelled_order_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.decrement_quantity.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_reason.size

-- Display: Cancelled Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancelled_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancelled Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancelled_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Decrement Quantity: Integer
  index, decrement_quantity = nasdaq_nordicequities_orderentry_ouch_v5_01_14.decrement_quantity.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alpha
  index, cancel_reason = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancelled Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancelled_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancelled_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancelled_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancelled_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancelled_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_replaced_message = {}

-- Size: Order Replaced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_replaced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Replaced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- Orig User Ref Num: UserRefNum
  index, orig_user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- New User Ref Num: UserRefNum
  index, new_user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.new_user_ref_num.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.dissect(buffer, index, packet, parent)

  -- Appendage Length: Integer
  index, appendage_length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for TagValue
  local end_of_payload = index + appendage_length

  -- TagValue: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 1):uint()

    -- Runtime Size Of: TagValue
    local size_of_tagvalue = length + 1

    -- TagValue: Struct of 3 fields
    index, tagvalue = nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.dissect(buffer, index, packet, parent, size_of_tagvalue)
  end

  return index
end

-- Dissect: Order Replaced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_replaced_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Party Role Qualifier
nasdaq_nordicequities_orderentry_ouch_v5_01_14.party_role_qualifier = {}

-- Size: Party Role Qualifier
nasdaq_nordicequities_orderentry_ouch_v5_01_14.party_role_qualifier.size = 1

-- Display: Party Role Qualifier
nasdaq_nordicequities_orderentry_ouch_v5_01_14.party_role_qualifier.display = function(range, value, packet, parent)
  local flags = {}

  -- Client Identification: 2 Bits
  flags[#flags + 1] = "Client Identification: "..bit.rshift(bit.band(value, 0x03), 0)
  -- Investment Decision Within Firm: 2 Bits
  flags[#flags + 1] = "Investment Decision Within Firm: "..bit.rshift(bit.band(value, 0x0C), 2)
  -- Execution Decision Within Firm: 2 Bits
  flags[#flags + 1] = "Execution Decision Within Firm: "..bit.rshift(bit.band(value, 0x30), 4)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Party Role Qualifier
nasdaq_nordicequities_orderentry_ouch_v5_01_14.party_role_qualifier.bits = function(range, value, packet, parent)

  -- Client Identification: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_identification, range, value)

  -- Investment Decision Within Firm: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.investment_decision_within_firm, range, value)

  -- Execution Decision Within Firm: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.execution_decision_within_firm, range, value)

  -- Reserved 78: 2 Bit
  parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.reserved_78, range, value)
end

-- Dissect: Party Role Qualifier
nasdaq_nordicequities_orderentry_ouch_v5_01_14.party_role_qualifier.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_orderentry_ouch_v5_01_14.party_role_qualifier.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.party_role_qualifier.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.party_role_qualifier, range, display)

  if show.structs then
    nasdaq_nordicequities_orderentry_ouch_v5_01_14.party_role_qualifier.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Accepted Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_accepted_message = {}

-- Size: Order Accepted Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_accepted_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Accepted Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.dissect(buffer, index, packet, parent)

  -- Execution Within Firm: Integer
  index, execution_within_firm = nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_within_firm.dissect(buffer, index, packet, parent)

  -- Investment Decision Within Firm Short Code: Integer
  index, investment_decision_within_firm_short_code = nasdaq_nordicequities_orderentry_ouch_v5_01_14.investment_decision_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identifier: Integer
  index, client_identifier = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_identifier.dissect(buffer, index, packet, parent)

  -- Party Role Qualifier: Struct of 4 fields
  index, party_role_qualifier = nasdaq_nordicequities_orderentry_ouch_v5_01_14.party_role_qualifier.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha-numeric
  index, capacity = nasdaq_nordicequities_orderentry_ouch_v5_01_14.capacity.dissect(buffer, index, packet, parent)

  -- Algo Indicator: Alpha-numeric
  index, algo_indicator = nasdaq_nordicequities_orderentry_ouch_v5_01_14.algo_indicator.dissect(buffer, index, packet, parent)

  -- Appendage Length: Integer
  index, appendage_length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for TagValue
  local end_of_payload = index + appendage_length

  -- TagValue: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 1):uint()

    -- Runtime Size Of: TagValue
    local size_of_tagvalue = length + 1

    -- TagValue: Struct of 3 fields
    index, tagvalue = nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.dissect(buffer, index, packet, parent, size_of_tagvalue)
  end

  return index
end

-- Dissect: Order Accepted Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.order_accepted_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.system_event_message = {}

-- Size: System Event Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.system_event_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.event_code.size

-- Display: System Event Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentry_ouch_v5_01_14.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nordicequities_orderentry_ouch_v5_01_14.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message = {}

-- Dispatch: Sequenced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message.dispatch = {
  ["S"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.system_event_message.dissect,
  ["A"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_accepted_message.dissect,
  ["U"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_replaced_message.dissect,
  ["C"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancelled_order_message.dissect,
  ["P"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_pending_message.dissect,
  ["N"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_pending_message.dissect,
  ["E"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.executed_order_message.dissect,
  ["B"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.broken_trade_message.dissect,
  ["J"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.rejected_order_message.dissect,
  ["I"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_rejected_message.dissect,
  ["T"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_restated_message.dissect,
  ["W"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmo_refresh_request_message.dissect,
  ["Q"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_response_message.dissect,
  ["G"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.gtc_cancelled_message.dissect,
  ["R"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.response_to_mmi_notification_message.dissect,
}

-- Dissect: Sequenced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_nordicequities_orderentry_ouch_v5_01_14.stream_frame ~= packet.number or nasdaq_nordicequities_orderentry_ouch_v5_01_14.stream_occurrence >= #memo then
          nasdaq_nordicequities_orderentry_ouch_v5_01_14.stream_frame = packet.number
          nasdaq_nordicequities_orderentry_ouch_v5_01_14.stream_occurrence = 0
        end
        nasdaq_nordicequities_orderentry_ouch_v5_01_14.stream_occurrence = nasdaq_nordicequities_orderentry_ouch_v5_01_14.stream_occurrence + 1
        local value = memo[nasdaq_nordicequities_orderentry_ouch_v5_01_14.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 15 values
  index, sequenced_message_type = nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 15 branches
  index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_rejected_packet.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_nordicequities_orderentry_ouch_v5_01_14.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_accepted_packet.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_session.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_payload = {}

-- Dispatch: Server Payload
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_payload.dispatch = {
  ["+"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_packet.dissect,
  ["A"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_accepted_packet.dissect,
  ["J"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_rejected_packet.dissect,
  ["S"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.sequenced_data_packet.dissect,
  ["H"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_heartbeat.dissect,
  ["Z"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.end_of_session.dissect,
}

-- Dissect: Server Payload
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.packet_length.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header.size then
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
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.current = data

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
      index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
nasdaq_nordicequities_orderentry_ouch_v5_01_14.logout_request = {}

-- Display: Logout Request
nasdaq_nordicequities_orderentry_ouch_v5_01_14.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_nordicequities_orderentry_ouch_v5_01_14.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Mmi Notification Request Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmi_notification_request_message = {}

-- Size: Mmi Notification Request Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmi_notification_request_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.add_or_remove.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.size

-- Display: Mmi Notification Request Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmi_notification_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mmi Notification Request Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmi_notification_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.dissect(buffer, index, packet, parent)

  -- Instruction: Alpha-numeric
  index, instruction = nasdaq_nordicequities_orderentry_ouch_v5_01_14.instruction.dissect(buffer, index, packet, parent)

  -- Add Or Remove: Alpha
  index, add_or_remove = nasdaq_nordicequities_orderentry_ouch_v5_01_14.add_or_remove.dissect(buffer, index, packet, parent)

  -- Firm: Struct of 1 fields
  index, firm = nasdaq_nordicequities_orderentry_ouch_v5_01_14.firm.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mmi Notification Request Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmi_notification_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.mmi_notification_request_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmi_notification_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmi_notification_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmi_notification_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Account Query Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_message = {}

-- Display: Account Query Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_message.display = function(packet, parent, length)
  return "Account Query Message"
end


-- Dissect: Account Query Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_message.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Cancel Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_order_message = {}

-- Size: Cancel Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_order_message.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.size

-- Display: Cancel Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.cancel_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_order_message = {}

-- Size: Replace Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Replace Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig User Ref Num: UserRefNum
  index, orig_user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- New User Ref Num: UserRefNum
  index, new_user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.new_user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.dissect(buffer, index, packet, parent)

  -- Appendage Length: Integer
  index, appendage_length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for TagValue
  local end_of_payload = index + appendage_length

  -- TagValue: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 1):uint()

    -- Runtime Size Of: TagValue
    local size_of_tagvalue = length + 1

    -- TagValue: Struct of 3 fields
    index, tagvalue = nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.dissect(buffer, index, packet, parent, size_of_tagvalue)
  end

  return index
end

-- Dissect: Replace Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.replace_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.enter_order_message = {}

-- Size: Enter Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.enter_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Enter Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user_ref_num.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nordicequities_orderentry_ouch_v5_01_14.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_orderentry_ouch_v5_01_14.quantity.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentry_ouch_v5_01_14.order_book.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicequities_orderentry_ouch_v5_01_14.price.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentry_ouch_v5_01_14.user.dissect(buffer, index, packet, parent)

  -- Execution Within Firm: Integer
  index, execution_within_firm = nasdaq_nordicequities_orderentry_ouch_v5_01_14.execution_within_firm.dissect(buffer, index, packet, parent)

  -- Investment Decision Within Firm Short Code: Integer
  index, investment_decision_within_firm_short_code = nasdaq_nordicequities_orderentry_ouch_v5_01_14.investment_decision_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identifier: Integer
  index, client_identifier = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_identifier.dissect(buffer, index, packet, parent)

  -- Party Role Qualifier: Struct of 4 fields
  index, party_role_qualifier = nasdaq_nordicequities_orderentry_ouch_v5_01_14.party_role_qualifier.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha-numeric
  index, capacity = nasdaq_nordicequities_orderentry_ouch_v5_01_14.capacity.dissect(buffer, index, packet, parent)

  -- Algo Indicator: Alpha-numeric
  index, algo_indicator = nasdaq_nordicequities_orderentry_ouch_v5_01_14.algo_indicator.dissect(buffer, index, packet, parent)

  -- Appendage Length: Integer
  index, appendage_length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for TagValue
  local end_of_payload = index + appendage_length

  -- TagValue: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 1):uint()

    -- Runtime Size Of: TagValue
    local size_of_tagvalue = length + 1

    -- TagValue: Struct of 3 fields
    index, tagvalue = nasdaq_nordicequities_orderentry_ouch_v5_01_14.tagvalue.dissect(buffer, index, packet, parent, size_of_tagvalue)
  end

  return index
end

-- Dissect: Enter Order Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.enter_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message = {}

-- Dispatch: Unsequenced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message.dispatch = {
  ["O"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.enter_order_message.dissect,
  ["U"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.replace_order_message.dissect,
  ["X"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.cancel_order_message.dissect,
  ["Q"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.account_query_message.dissect,
  ["M"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.mmi_notification_request_message.dissect,
}

-- Dissect: Unsequenced Message
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 5 values
  index, unsequenced_message_type = nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 5 branches
  index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_request_packet.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.username.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.password.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_session.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nordicequities_orderentry_ouch_v5_01_14.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nordicequities_orderentry_ouch_v5_01_14.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nordicequities_orderentry_ouch_v5_01_14.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_payload = {}

-- Dispatch: Client Payload
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_payload.dispatch = {
  ["+"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.debug_packet.dissect,
  ["L"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.login_request_packet.dissect,
  ["U"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.unsequenced_data_packet.dissect,
  ["R"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_heartbeat.dissect,
  ["O"] = nasdaq_nordicequities_orderentry_ouch_v5_01_14.logout_request.dissect,
}

-- Dissect: Client Payload
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header.size =
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.packet_length.size + 
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nordicequities_orderentry_ouch_v5_01_14.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header.size then
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
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet.dissect = function(buffer, packet, parent)
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
      index = nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.init()
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.accepted_sequence_number.current = nil
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.current = nil
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.conversation.flows = {}
end

-- Connection roles for Nasdaq NordicEquities OrderEntry Ouch 5.01.14: Client is the initiator, Server is the acceptor
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
nasdaq_nordicequities_orderentry_ouch_v5_01_14.role = function(packet)
  if omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.acceptor_port

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

  if omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.prefs.swap_sides then
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
nasdaq_nordicequities_orderentry_ouch_v5_01_14.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NordicEquities OrderEntry Ouch 5.01.14
function omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14, buffer(), omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_nordicequities_orderentry_ouch_v5_01_14.role(packet)

  if role == "initiator" then
    return nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet.fingerprint = function(buffer)
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
nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Nasdaq NordicEquities OrderEntry Ouch 5.01.14 (Tcp)
local function omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nasdaq_nordicequities_orderentry_ouch_v5_01_14.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14
  omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NordicEquities OrderEntry Ouch 5.01.14 (Tcp)
local function omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nasdaq_nordicequities_orderentry_ouch_v5_01_14.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14
  omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NordicEquities OrderEntry Ouch 5.01.14 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nordicequities_orderentry_ouch_v5_01_14.role(packet)
  local initiator = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nordicequities_orderentry_ouch_v5_01_14.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nordicequities_orderentry_ouch_v5_01_14.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NordicEquities OrderEntry Ouch 5.01.14
omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14:register_heuristic("tcp", omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14_tcp_heuristic)

-- Register Nasdaq NordicEquities OrderEntry Ouch 5.01.14 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nordicequities_orderentry_ouch_v5_01_14)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 5.01.14
--   Date: Wednesday, November 12, 2025
--   Specification: OUCH5-for-Nasdaq-Nordic-5.01.14.pdf
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
