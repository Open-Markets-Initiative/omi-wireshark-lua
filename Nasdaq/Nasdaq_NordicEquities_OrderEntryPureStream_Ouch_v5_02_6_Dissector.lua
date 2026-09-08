-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 Protocol
local omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6 = Proto("Omi.Nasdaq.NordicEquities.OrderEntryPureStream.Ouch.v5.02.6", "Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6")

-- Protocol table
local nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 Fields
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.add_or_remove = ProtoField.new("Add Or Remove", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.addorremove", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.algo_indicator = ProtoField.new("Algo Indicator", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.algoindicator", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.appendage_length = ProtoField.new("Appendage Length", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.appendagelength", ftypes.UINT16)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.brokentradereason", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.buysellindicator", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_pending_reason = ProtoField.new("Cancel Pending Reason", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.cancelpendingreason", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_reason = ProtoField.new("Cancel Reason", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.cancelreason", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_rejected_reason = ProtoField.new("Cancel Rejected Reason", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.cancelrejectedreason", ftypes.UINT16)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.capacity = ProtoField.new("Capacity", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.capacity", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_account = ProtoField.new("Clearing Account", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clearingaccount", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_account_type = ProtoField.new("Clearing Account Type", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clearingaccounttype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_account_type_value = ProtoField.new("Clearing Account Type Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clearingaccounttypevalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_account_value = ProtoField.new("Clearing Account Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clearingaccountvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_firm = ProtoField.new("Clearing Firm", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clearingfirm", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_firm_value = ProtoField.new("Clearing Firm Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clearingfirmvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_identification = ProtoField.new("Client Identification", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clientidentification", ftypes.UINT8, {[0]="None", [1]="Lei Firm", [3]="Natural Person"}, base.DEC, 0x03)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_identifier = ProtoField.new("Client Identifier", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clientidentifier", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clientpackettype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_reference = ProtoField.new("Client Reference", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clientreference", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_reference_value = ProtoField.new("Client Reference Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clientreferencevalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.conditional_type = ProtoField.new("Conditional Type", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.conditionaltype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.conditional_type_value = ProtoField.new("Conditional Type Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.conditionaltypevalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.contra_firm = ProtoField.new("Contra Firm", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.contrafirm", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.crosstype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cross_type_value = ProtoField.new("Cross Type Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.crosstypevalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cum_rate = ProtoField.new("Cum Rate", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.cumrate", ftypes.UINT16)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cumulative_quantity = ProtoField.new("Cumulative Quantity", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.cumulativequantity", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cumulative_quantity_value = ProtoField.new("Cumulative Quantity Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.cumulativequantityvalue", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.customer_order_capacity = ProtoField.new("Customer Order Capacity", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.customerordercapacity", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.customer_order_capacity_value = ProtoField.new("Customer Order Capacity Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.customerordercapacityvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.dea_indicator = ProtoField.new("Dea Indicator", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.deaindicator", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.dea_indicator_value = ProtoField.new("Dea Indicator Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.deaindicatorvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.decrement_quantity = ProtoField.new("Decrement Quantity", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.decrementquantity", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display = ProtoField.new("Display", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.display", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display_price = ProtoField.new("Display Price", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.displayprice", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display_price_value = ProtoField.new("Display Price Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.displaypricevalue", ftypes.DOUBLE)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display_quantity = ProtoField.new("Display Quantity", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.displayquantity", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display_quantity_value = ProtoField.new("Display Quantity Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.displayquantityvalue", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display_value = ProtoField.new("Display Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.displayvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.event_code = ProtoField.new("Event Code", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.eventcode", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.executed_quantity = ProtoField.new("Executed Quantity", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.executedquantity", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.execution_decision_within_firm = ProtoField.new("Execution Decision Within Firm", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.executiondecisionwithinfirm", ftypes.UINT8, {[0]="None", [2]="Algo", [3]="Natural Person"}, base.DEC, 0x30)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.executionprice", ftypes.DOUBLE)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.execution_within_firm = ProtoField.new("Execution Within Firm", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.executionwithinfirm", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.expire_time = ProtoField.new("Expire Time", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.expiretime", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.expire_time_value = ProtoField.new("Expire Time Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.expiretimevalue", ftypes.UINT16)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm = ProtoField.new("Firm", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.firm", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm_alpha_4 = ProtoField.new("Firm Alpha 4", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.firmalpha4", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm_alphanumeric_4 = ProtoField.new("Firm Alphanumeric 4", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.firmalphanumeric4", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm_up_id = ProtoField.new("Firm Up Id", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.firmupid", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm_up_id_value = ProtoField.new("Firm Up Id Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.firmupidvalue", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm_value = ProtoField.new("Firm Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.firmvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.instruction = ProtoField.new("Instruction", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.instruction", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.instruction_status = ProtoField.new("Instruction Status", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.instructionstatus", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.investment_decision_within_firm = ProtoField.new("Investment Decision Within Firm", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.investmentdecisionwithinfirm", ftypes.UINT8, {[0]="None", [2]="Algo", [3]="Natural Person"}, base.DEC, 0x0C)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.investment_decision_within_firm_integer_4 = ProtoField.new("Investment Decision Within Firm Integer 4", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.investmentdecisionwithinfirminteger4", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.last_market = ProtoField.new("Last Market", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.lastmarket", ftypes.UINT8)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.length = ProtoField.new("Length", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.length", ftypes.UINT8)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_attributes = ProtoField.new("Liquidity Attributes", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.liquidityattributes", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.liquidityflag", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.liquidityindicator", ftypes.UINT8, {[0]="Added Liquidity", [1]="Removed Liquidity", [2]="Auction Liquidity", [3]="Reserved"}, base.DEC, 0x18)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_internalized = ProtoField.new("Liquidity Internalized", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.liquidityinternalized", ftypes.UINT8, {[0]="Not Internalized", [1]="Internalized"}, base.DEC, 0x20)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_provision_indicator = ProtoField.new("Liquidity Provision Indicator", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.liquidityprovisionindicator", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_provision_indicator_value = ProtoField.new("Liquidity Provision Indicator Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.liquidityprovisionindicatorvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_self_trade = ProtoField.new("Liquidity Self Trade", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.liquidityselftrade", ftypes.UINT8, {[0]="Non Self Trade", [1]="Self Trade"}, base.DEC, 0x80)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_top_of_book = ProtoField.new("Liquidity Top Of Book", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.liquiditytopofbook", ftypes.UINT8, {[0]="Not Top Of Book", [1]="Top Of Book"}, base.DEC, 0x40)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.match_number = ProtoField.new("Match Number", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.matchnumber", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.max_floor = ProtoField.new("Max Floor", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.maxfloor", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.max_floor_value = ProtoField.new("Max Floor Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.maxfloorvalue", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.max_rate = ProtoField.new("Max Rate", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.maxrate", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.max_rate_value = ProtoField.new("Max Rate Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.maxratevalue", ftypes.UINT16)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.min_rate = ProtoField.new("Min Rate", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.minrate", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.min_rate_value = ProtoField.new("Min Rate Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.minratevalue", ftypes.UINT16)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.minimumquantity", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.minimum_quantity_value = ProtoField.new("Minimum Quantity Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.minimumquantityvalue", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.mmo_refresh_reason = ProtoField.new("Mmo Refresh Reason", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.mmorefreshreason", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.new_user_ref_num = ProtoField.new("New User Ref Num", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.newuserrefnum", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.next_user_ref_num = ProtoField.new("Next User Ref Num", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.nextuserrefnum", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_book = ProtoField.new("Order Book", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.orderbook", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_condition = ProtoField.new("Order Condition", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.ordercondition", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_condition_value = ProtoField.new("Order Condition Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.orderconditionvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_reference = ProtoField.new("Order Reference", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.orderreference", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_reference_value = ProtoField.new("Order Reference Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.orderreferencevalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.orig_user_ref_num = ProtoField.new("Orig User Ref Num", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.origuserrefnum", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.original_order_entry_date = ProtoField.new("Original Order Entry Date", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.originalorderentrydate", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.original_order_entry_date_value = ProtoField.new("Original Order Entry Date Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.originalorderentrydatevalue", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.originalorderreferencenumber", ftypes.UINT64)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.original_order_reference_number_value = ProtoField.new("Original Order Reference Number Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.originalorderreferencenumbervalue", ftypes.UINT64)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.packetlength", ftypes.UINT16)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.party_role_qualifier = ProtoField.new("Party Role Qualifier", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.partyrolequalifier", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.password = ProtoField.new("Password", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.password", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.peg_difference = ProtoField.new("Peg Difference", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.pegdifference", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.peg_difference_value = ProtoField.new("Peg Difference Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.pegdifferencevalue", ftypes.INT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.peg_type = ProtoField.new("Peg Type", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.pegtype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.peg_type_value = ProtoField.new("Peg Type Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.pegtypevalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.pending_order_reason = ProtoField.new("Pending Order Reason", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.pendingorderreason", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.price = ProtoField.new("Price", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.price", ftypes.DOUBLE)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.quantity = ProtoField.new("Quantity", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.quantity", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.random_reserve = ProtoField.new("Random Reserve", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.randomreserve", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.random_reserve_value = ProtoField.new("Random Reserve Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.randomreservevalue", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.reason = ProtoField.new("Reason", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.reason", ftypes.UINT16)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.rejectreasoncode", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.rejected_order_reason = ProtoField.new("Rejected Order Reason", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.rejectedorderreason", ftypes.UINT16)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.replace_pending_reason = ProtoField.new("Replace Pending Reason", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.replacependingreason", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.requestedsession", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.reserved_13 = ProtoField.new("Reserved 13", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.reserved13", ftypes.UINT8, nil, base.DEC, 0x07)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.reserved_78 = ProtoField.new("Reserved 78", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.reserved78", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.restate_reason = ProtoField.new("Restate Reason", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.restatereason", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.secondary_order_reference_number = ProtoField.new("Secondary Order Reference Number", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.secondaryorderreferencenumber", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.secondary_order_reference_number_value = ProtoField.new("Secondary Order Reference Number Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.secondaryorderreferencenumbervalue", ftypes.UINT64)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.sequencenumber", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.serverpackettype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.session = ProtoField.new("Session", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.session", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.status = ProtoField.new("Status", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.status", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_action = ProtoField.new("Stp Action", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.stpaction", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_action_value = ProtoField.new("Stp Action Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.stpactionvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_level = ProtoField.new("Stp Level", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.stplevel", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_level_value = ProtoField.new("Stp Level Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.stplevelvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_trader_group = ProtoField.new("Stp Trader Group", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.stptradergroup", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_trader_group_value = ProtoField.new("Stp Trader Group Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.stptradergroupvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.tag = ProtoField.new("Tag", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.tag", ftypes.UINT8)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.tagvalue = ProtoField.new("TagValue", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.tagvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.target_strategy = ProtoField.new("Target Strategy", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.targetstrategy", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.target_strategy_value = ProtoField.new("Target Strategy Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.targetstrategyvalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.text = ProtoField.new("Text", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.text", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.timeinforce", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.time_in_force_value = ProtoField.new("Time In Force Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.timeinforcevalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.timestamp", ftypes.UINT64)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.trading_at_closing_price = ProtoField.new("Trading At Closing Price", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.tradingatclosingprice", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.trading_at_closing_price_value = ProtoField.new("Trading At Closing Price Value", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.tradingatclosingpricevalue", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.trading_mode = ProtoField.new("Trading Mode", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.tradingmode", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.transaction_category = ProtoField.new("Transaction Category", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.transactioncategory", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.transaction_type_algo_indicator = ProtoField.new("Transaction Type Algo Indicator", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.transactiontypealgoindicator", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.user = ProtoField.new("User", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.user", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.user_ref_num = ProtoField.new("User Ref Num", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.userrefnum", ftypes.UINT32)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.username = ProtoField.new("Username", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.username", ftypes.STRING)

-- Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 Headers
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_packet = ProtoField.new("Packet", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clientpacket", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clientpacketheader", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.server_packet = ProtoField.new("Packet", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.serverpacket", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.serverpacketheader", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq NordicEquities OrderEntryPureStream 5.02.6 Application Messages
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.account_query_message = ProtoField.new("Account Query Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.accountquerymessage", ftypes.BYTES)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.account_query_response_message = ProtoField.new("Account Query Response Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.accountqueryresponsemessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.brokentrademessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.cancelordermessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_pending_message = ProtoField.new("Cancel Pending Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.cancelpendingmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_rejected_message = ProtoField.new("Cancel Rejected Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.cancelrejectedmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancelled_order_message = ProtoField.new("Cancelled Order Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.cancelledordermessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.enterordermessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.executed_order_message = ProtoField.new("Executed Order Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.executedordermessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.gtc_cancelled_message = ProtoField.new("Gtc Cancelled Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.gtccancelledmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.mmi_notification_request_message = ProtoField.new("Mmi Notification Request Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.mminotificationrequestmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.mmo_refresh_request_message = ProtoField.new("Mmo Refresh Request Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.mmorefreshrequestmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.orderacceptedmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.orderreplacedmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_restated_message = ProtoField.new("Order Restated Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.orderrestatedmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.pending_order_message = ProtoField.new("Pending Order Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.pendingordermessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.rejectedordermessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.replace_order_message = ProtoField.new("Replace Order Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.replaceordermessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.replace_pending_message = ProtoField.new("Replace Pending Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.replacependingmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.response_to_mmi_notification_message = ProtoField.new("Response To Mmi Notification Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.responsetomminotificationmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stream_status_message = ProtoField.new("Stream Status Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.streamstatusmessage", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.systemeventmessage", ftypes.STRING)

-- Nasdaq NordicEquities OrderEntryPureStream 5.02.6 Session Messages
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.debugpacket", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.loginrequestpacket", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 generated fields
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nordicequities.orderentrypurestream.ouch.v5.02.6.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp_format = 2

-- Hours behind UTC (UTC) for midnight calculation
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.utc_offset_hours = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 0, "Hours behind UTC (UTC) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_application_messages
  end
  if show.session_messages ~= omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_structs then
    show.structs = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_sequences then
    show.sequences = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.show_sequences
  end
  if nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp_format ~= omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.timestamp_format then
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp_format = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.timestamp_format
  end
  if nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.utc_offset_hours ~= omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.utc_offset_hours then
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.utc_offset_hours = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation = {}
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_frame = nil
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.data = function(packet)
  local key = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.key(packet)
  local data = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.flows[key]
  if data == nil then
    data = { sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.current = nil


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 Fields
-----------------------------------------------------------------------

-- Add Or Remove
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.add_or_remove = {}

-- Size: Add Or Remove
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.add_or_remove.size = 1

-- Display: Add Or Remove
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.add_or_remove.display = function(value)
  return "Add Or Remove: "..value
end

-- Dissect: Add Or Remove
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.add_or_remove.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.add_or_remove.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.add_or_remove.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.add_or_remove, range, value, display)

  return offset + length, value
end

-- Algo Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.algo_indicator = {}

-- Size: Algo Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.algo_indicator.size = 1

-- Display: Algo Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.algo_indicator.display = function(value)
  if value == "-" then
    return "Algo Indicator: No Algo (-)"
  end
  if value == "H" then
    return "Algo Indicator: Algo (H)"
  end

  return "Algo Indicator: Unknown("..value..")"
end

-- Dissect: Algo Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.algo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.algo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.algo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.algo_indicator, range, value, display)

  return offset + length, value
end

-- Appendage Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length = {}

-- Size: Appendage Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length.size = 2

-- Display: Appendage Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length.display = function(value)
  return "Appendage Length: "..value
end

-- Dissect: Appendage Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.appendage_length, range, value, display)

  return offset + length, value
end

-- Broken Trade Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_reason = {}

-- Size: Broken Trade Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_reason.size = 1

-- Display: Broken Trade Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_reason.display = function(value)
  if value == "E" then
    return "Broken Trade Reason: Erroneous (E)"
  end
  if value == "C" then
    return "Broken Trade Reason: Consent (C)"
  end
  if value == "S" then
    return "Broken Trade Reason: Supervisory (S)"
  end

  return "Broken Trade Reason: Unknown("..value..")"
end

-- Dissect: Broken Trade Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell Order (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Cancel Pending Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_reason = {}

-- Size: Cancel Pending Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_reason.size = 1

-- Display: Cancel Pending Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_reason.display = function(value)
  if value == "A" then
    return "Cancel Pending Reason: Cancel Pending Completion Of Auction On Demand (A)"
  end

  return "Cancel Pending Reason: Unknown("..value..")"
end

-- Dissect: Cancel Pending Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_pending_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_reason = {}

-- Size: Cancel Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_reason.size = 1

-- Display: Cancel Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_reason.display = function(value)
  if value == "U" then
    return "Cancel Reason: User Requested Cancel (U)"
  end
  if value == "I" then
    return "Cancel Reason: Immediate Or Cancel Order (I)"
  end
  if value == "T" then
    return "Cancel Reason: Timeout (T)"
  end
  if value == "S" then
    return "Cancel Reason: Supervisory (S)"
  end
  if value == "Q" then
    return "Cancel Reason: Self Match Prevention (Q)"
  end
  if value == "L" then
    return "Cancel Reason: Hidden Peg Not Lis (L)"
  end
  if value == "N" then
    return "Cancel Reason: Bad Quote (N)"
  end
  if value == "R" then
    return "Cancel Reason: State Management (R)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Rejected Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_reason = {}

-- Size: Cancel Rejected Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_reason.size = 2

-- Display: Cancel Rejected Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_reason.display = function(value)
  return "Cancel Rejected Reason: "..value
end

-- Dissect: Cancel Rejected Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_rejected_reason, range, value, display)

  return offset + length, value
end

-- Capacity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.capacity = {}

-- Size: Capacity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.capacity.size = 1

-- Display: Capacity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.capacity.display = function(value)
  if value == "1" then
    return "Capacity: Client (1)"
  end
  if value == "2" then
    return "Capacity: Own Account (2)"
  end
  if value == "3" then
    return "Capacity: Market Maker (3)"
  end
  if value == "4" then
    return "Capacity: Issuer Holding (4)"
  end
  if value == "6" then
    return "Capacity: Issue Price Stabilizing (6)"
  end
  if value == "7" then
    return "Capacity: Riskless Principal (7)"
  end
  if value == "8" then
    return "Capacity: Issuer Holding Deal (8)"
  end
  if value == "9" then
    return "Capacity: Issue Price Stabilizing Deal (9)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.capacity, range, value, display)

  return offset + length, value
end

-- Clearing Account Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type_value = {}

-- Size: Clearing Account Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type_value.size = 1

-- Display: Clearing Account Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type_value.display = function(value)
  if value == "1" then
    return "Clearing Account Type Value: Customer Client (1)"
  end
  if value == "2" then
    return "Clearing Account Type Value: Firm House (2)"
  end

  return "Clearing Account Type Value: Unknown("..value..")"
end

-- Dissect: Clearing Account Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_account_type_value, range, value, display)

  return offset + length, value
end

-- Clearing Account Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_value = {}

-- Size: Clearing Account Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_value.size = 12

-- Display: Clearing Account Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_value.display = function(value)
  return "Clearing Account Value: "..value
end

-- Dissect: Clearing Account Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_account_value, range, value, display)

  return offset + length, value
end

-- Clearing Firm Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm_value = {}

-- Size: Clearing Firm Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm_value.size = 4

-- Display: Clearing Firm Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm_value.display = function(value)
  return "Clearing Firm Value: "..value
end

-- Dissect: Clearing Firm Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_firm_value, range, value, display)

  return offset + length, value
end

-- Client Identifier
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_identifier = {}

-- Size: Client Identifier
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_identifier.size = 4

-- Display: Client Identifier
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_identifier.display = function(value)
  return "Client Identifier: "..value
end

-- Dissect: Client Identifier
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_identifier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_identifier, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_type.display = function(value)
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
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Client Reference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference_value = {}

-- Size: Client Reference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference_value.size = 15

-- Display: Client Reference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference_value.display = function(value)
  return "Client Reference Value: "..value
end

-- Dissect: Client Reference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_reference_value, range, value, display)

  return offset + length, value
end

-- Conditional Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type_value = {}

-- Size: Conditional Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type_value.size = 1

-- Display: Conditional Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type_value.display = function(value)
  if value == "C" then
    return "Conditional Type Value: Conditional Order (C)"
  end
  if value == "F" then
    return "Conditional Type Value: Firm Up Order (F)"
  end

  return "Conditional Type Value: Unknown("..value..")"
end

-- Dissect: Conditional Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.conditional_type_value, range, value, display)

  return offset + length, value
end

-- Contra Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.contra_firm = {}

-- Size: Contra Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.contra_firm.size = 4

-- Display: Contra Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.contra_firm.display = function(value)
  return "Contra Firm: "..value
end

-- Dissect: Contra Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.contra_firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.contra_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.contra_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.contra_firm, range, value, display)

  return offset + length, value
end

-- Cross Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type_value = {}

-- Size: Cross Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type_value.size = 1

-- Display: Cross Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type_value.display = function(value)
  if value == "C" then
    return "Cross Type Value: Closing Cross (C)"
  end
  if value == "O" then
    return "Cross Type Value: Opening Cross (O)"
  end
  if value == "I" then
    return "Cross Type Value: Scheduled Intraday Cross (I)"
  end
  if value == "H" then
    return "Cross Type Value: Halt Cross (H)"
  end
  if value == "A" then
    return "Cross Type Value: Auction On Demand (A)"
  end

  return "Cross Type Value: Unknown("..value..")"
end

-- Dissect: Cross Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cross_type_value, range, value, display)

  return offset + length, value
end

-- Cum Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cum_rate = {}

-- Size: Cum Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cum_rate.size = 2

-- Display: Cum Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cum_rate.display = function(value)
  return "Cum Rate: "..value
end

-- Dissect: Cum Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cum_rate.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cum_rate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cum_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cum_rate, range, value, display)

  return offset + length, value
end

-- Cumulative Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity_value = {}

-- Size: Cumulative Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity_value.size = 4

-- Display: Cumulative Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity_value.display = function(value)
  return "Cumulative Quantity Value: "..value
end

-- Dissect: Cumulative Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cumulative_quantity_value, range, value, display)

  return offset + length, value
end

-- Customer Order Capacity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity_value = {}

-- Size: Customer Order Capacity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity_value.size = 1

-- Display: Customer Order Capacity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity_value.display = function(value)
  if value == "5" then
    return "Customer Order Capacity Value: Retail Customer (5)"
  end

  return "Customer Order Capacity Value: Unknown("..value..")"
end

-- Dissect: Customer Order Capacity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.customer_order_capacity_value, range, value, display)

  return offset + length, value
end

-- Dea Indicator Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator_value = {}

-- Size: Dea Indicator Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator_value.size = 1

-- Display: Dea Indicator Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator_value.display = function(value)
  if value == "1" then
    return "Dea Indicator Value: Order Received From A Customer (1)"
  end
  if value == "2" then
    return "Dea Indicator Value: Order Received From Within The Firm (2)"
  end
  if value == "3" then
    return "Dea Indicator Value: Order Received From Another Broker Dealer (3)"
  end
  if value == "4" then
    return "Dea Indicator Value: Order Received From A Customer Or Originated With The Firm (4)"
  end
  if value == "5" then
    return "Dea Indicator Value: Order Received From A Direct Access Or Sponsored Access Customer (5)"
  end

  return "Dea Indicator Value: Unknown("..value..")"
end

-- Dissect: Dea Indicator Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.dea_indicator_value, range, value, display)

  return offset + length, value
end

-- Decrement Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.decrement_quantity = {}

-- Size: Decrement Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.decrement_quantity.size = 4

-- Display: Decrement Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.decrement_quantity.display = function(value)
  return "Decrement Quantity: "..value
end

-- Dissect: Decrement Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.decrement_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.decrement_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.decrement_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.decrement_quantity, range, value, display)

  return offset + length, value
end

-- Display Price Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price_value = {}

-- Size: Display Price Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price_value.size = 4

-- Display: Display Price Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price_value.display = function(value)
  return "Display Price Value: "..value
end

-- Translate: Display Price Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price_value.translate = function(raw)
  return raw/10000
end

-- Dissect: Display Price Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price_value.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price_value.translate(raw)
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display_price_value, range, value, display)

  return offset + length, value
end

-- Display Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity_value = {}

-- Size: Display Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity_value.size = 4

-- Display: Display Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity_value.display = function(value)
  return "Display Quantity Value: "..value
end

-- Dissect: Display Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display_quantity_value, range, value, display)

  return offset + length, value
end

-- Display Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_value = {}

-- Size: Display Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_value.size = 1

-- Display: Display Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_value.display = function(value)
  if value == "Y" then
    return "Display Value: Display (Y)"
  end
  if value == "N" then
    return "Display Value: Non Display (N)"
  end
  if value == "A" then
    return "Display Value: Auction On Demand (A)"
  end
  if value == "M" then
    return "Display Value: Nordic Mid (M)"
  end
  if value == "S" then
    return "Display Value: Pure Stream (S)"
  end

  return "Display Value: Unknown("..value..")"
end

-- Dissect: Display Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display_value, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.event_code = {}

-- Size: Event Code
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.event_code.size = 1

-- Display: Event Code
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.event_code.display = function(value)
  if value == "S" then
    return "Event Code: Start Of Day (S)"
  end
  if value == "E" then
    return "Event Code: End Of Day (E)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_quantity = {}

-- Size: Executed Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_quantity.size = 4

-- Display: Executed Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_price = {}

-- Size: Execution Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_price.size = 4

-- Display: Execution Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_price.translate(raw)
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Execution Within Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_within_firm = {}

-- Size: Execution Within Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_within_firm.size = 4

-- Display: Execution Within Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_within_firm.display = function(value)
  return "Execution Within Firm: "..value
end

-- Dissect: Execution Within Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_within_firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_within_firm.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_within_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.execution_within_firm, range, value, display)

  return offset + length, value
end

-- Expire Time Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time_value = {}

-- Size: Expire Time Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time_value.size = 2

-- Display: Expire Time Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time_value.display = function(value)
  return "Expire Time Value: "..value
end

-- Dissect: Expire Time Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.expire_time_value, range, value, display)

  return offset + length, value
end

-- Firm Alpha 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alpha_4 = {}

-- Size: Firm Alpha 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alpha_4.size = 4

-- Display: Firm Alpha 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alpha_4.display = function(value)
  return "Firm Alpha 4: "..value
end

-- Dissect: Firm Alpha 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alpha_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alpha_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alpha_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm_alpha_4, range, value, display)

  return offset + length, value
end

-- Firm Alphanumeric 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alphanumeric_4 = {}

-- Size: Firm Alphanumeric 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alphanumeric_4.size = 4

-- Display: Firm Alphanumeric 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alphanumeric_4.display = function(value)
  return "Firm Alphanumeric 4: "..value
end

-- Dissect: Firm Alphanumeric 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alphanumeric_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alphanumeric_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alphanumeric_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm_alphanumeric_4, range, value, display)

  return offset + length, value
end

-- Firm Up Id Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id_value = {}

-- Size: Firm Up Id Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id_value.size = 4

-- Display: Firm Up Id Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id_value.display = function(value)
  return "Firm Up Id Value: "..value
end

-- Dissect: Firm Up Id Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm_up_id_value, range, value, display)

  return offset + length, value
end

-- Firm Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_value = {}

-- Size: Firm Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_value.size = 4

-- Display: Firm Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_value.display = function(value)
  return "Firm Value: "..value
end

-- Dissect: Firm Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm_value, range, value, display)

  return offset + length, value
end

-- Instruction
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction = {}

-- Size: Instruction
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction.size = 1

-- Display: Instruction
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction.display = function(value)
  return "Instruction: "..value
end

-- Dissect: Instruction
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.instruction, range, value, display)

  return offset + length, value
end

-- Instruction Status
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction_status = {}

-- Size: Instruction Status
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction_status.size = 1

-- Display: Instruction Status
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction_status.display = function(value)
  return "Instruction Status: "..value
end

-- Dissect: Instruction Status
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction_status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.instruction_status, range, value, display)

  return offset + length, value
end

-- Investment Decision Within Firm Integer 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.investment_decision_within_firm_integer_4 = {}

-- Size: Investment Decision Within Firm Integer 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.investment_decision_within_firm_integer_4.size = 4

-- Display: Investment Decision Within Firm Integer 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.investment_decision_within_firm_integer_4.display = function(value)
  return "Investment Decision Within Firm Integer 4: "..value
end

-- Dissect: Investment Decision Within Firm Integer 4
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.investment_decision_within_firm_integer_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.investment_decision_within_firm_integer_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.investment_decision_within_firm_integer_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.investment_decision_within_firm_integer_4, range, value, display)

  return offset + length, value
end

-- Last Market
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.last_market = {}

-- Size: Last Market
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.last_market.size = 1

-- Display: Last Market
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.last_market.display = function(value)
  return "Last Market: "..value
end

-- Dissect: Last Market
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.last_market.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.last_market.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.last_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.last_market, range, value, display)

  return offset + length, value
end

-- Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.length = {}

-- Size: Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.length.size = 1

-- Display: Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.length, range, value, display)

  return offset + length, value
end

-- Liquidity Flag
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_flag = {}

-- Size: Liquidity Flag
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_flag.size = 1

-- Display: Liquidity Flag
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_flag.display = function(value)
  return "Liquidity Flag: "..value
end

-- Dissect: Liquidity Flag
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Liquidity Provision Indicator Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator_value = {}

-- Size: Liquidity Provision Indicator Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator_value.size = 1

-- Display: Liquidity Provision Indicator Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator_value.display = function(value)
  if value == "N" then
    return "Liquidity Provision Indicator Value: No Liquidity Provision (N)"
  end
  if value == "Y" then
    return "Liquidity Provision Indicator Value: Liquidity Provision (Y)"
  end

  return "Liquidity Provision Indicator Value: Unknown("..value..")"
end

-- Dissect: Liquidity Provision Indicator Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_provision_indicator_value, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.match_number = {}

-- Size: Match Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.match_number.size = 4

-- Display: Match Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.match_number, range, value, display)

  return offset + length, value
end

-- Max Floor Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor_value = {}

-- Size: Max Floor Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor_value.size = 4

-- Display: Max Floor Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor_value.display = function(value)
  return "Max Floor Value: "..value
end

-- Dissect: Max Floor Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.max_floor_value, range, value, display)

  return offset + length, value
end

-- Max Rate Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate_value = {}

-- Size: Max Rate Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate_value.size = 2

-- Display: Max Rate Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate_value.display = function(value)
  return "Max Rate Value: "..value
end

-- Dissect: Max Rate Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.max_rate_value, range, value, display)

  return offset + length, value
end

-- Min Rate Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate_value = {}

-- Size: Min Rate Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate_value.size = 2

-- Display: Min Rate Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate_value.display = function(value)
  return "Min Rate Value: "..value
end

-- Dissect: Min Rate Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.min_rate_value, range, value, display)

  return offset + length, value
end

-- Minimum Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity_value = {}

-- Size: Minimum Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity_value.size = 4

-- Display: Minimum Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity_value.display = function(value)
  return "Minimum Quantity Value: "..value
end

-- Dissect: Minimum Quantity Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.minimum_quantity_value, range, value, display)

  return offset + length, value
end

-- Mmo Refresh Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_reason = {}

-- Size: Mmo Refresh Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_reason.size = 1

-- Display: Mmo Refresh Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_reason.display = function(value)
  return "Mmo Refresh Reason: "..value
end

-- Dissect: Mmo Refresh Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.mmo_refresh_reason, range, value, display)

  return offset + length, value
end

-- New User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.new_user_ref_num = {}

-- Size: New User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.new_user_ref_num.size = 4

-- Display: New User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.new_user_ref_num.display = function(value)
  return "New User Ref Num: "..value
end

-- Dissect: New User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.new_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.new_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.new_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.new_user_ref_num, range, value, display)

  return offset + length, value
end

-- Next User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.next_user_ref_num = {}

-- Size: Next User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.next_user_ref_num.size = 4

-- Display: Next User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.next_user_ref_num.display = function(value)
  return "Next User Ref Num: "..value
end

-- Dissect: Next User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.next_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.next_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.next_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.next_user_ref_num, range, value, display)

  return offset + length, value
end

-- Order Book
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book = {}

-- Size: Order Book
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.size = 4

-- Display: Order Book
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.display = function(value)
  return "Order Book: "..value
end

-- Dissect: Order Book
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_book, range, value, display)

  return offset + length, value
end

-- Order Condition Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition_value = {}

-- Size: Order Condition Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition_value.size = 1

-- Display: Order Condition Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition_value.display = function(value)
  if value == "W" then
    return "Order Condition Value: Market Maker Order (W)"
  end
  if value == "U" then
    return "Order Condition Value: Market Maker Order Refresh (U)"
  end
  if value == "P" then
    return "Order Condition Value: Topof Book (P)"
  end
  if value == "Q" then
    return "Order Condition Value: Darklit Sweep (Q)"
  end
  if value == "T" then
    return "Order Condition Value: Trade Now (T)"
  end

  return "Order Condition Value: Unknown("..value..")"
end

-- Dissect: Order Condition Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_condition_value, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Reference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_value = {}

-- Size: Order Reference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_value.size = 10

-- Display: Order Reference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_value.display = function(value)
  return "Order Reference Value: "..value
end

-- Dissect: Order Reference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_reference_value, range, value, display)

  return offset + length, value
end

-- Orig User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.orig_user_ref_num = {}

-- Size: Orig User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.orig_user_ref_num.size = 4

-- Display: Orig User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.orig_user_ref_num.display = function(value)
  return "Orig User Ref Num: "..value
end

-- Dissect: Orig User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.orig_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.orig_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.orig_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.orig_user_ref_num, range, value, display)

  return offset + length, value
end

-- Original Order Entry Date Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date_value = {}

-- Size: Original Order Entry Date Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date_value.size = 4

-- Display: Original Order Entry Date Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date_value.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Original Order Entry Date Value: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Original Order Entry Date Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.original_order_entry_date_value, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number_value = {}

-- Size: Original Order Reference Number Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number_value.size = 8

-- Display: Original Order Reference Number Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number_value.display = function(value)
  return "Original Order Reference Number Value: "..value
end

-- Dissect: Original Order Reference Number Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.original_order_reference_number_value, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.packet_length = {}

-- Size: Packet Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.packet_length.size = 2

-- Display: Packet Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.password = {}

-- Size: Password
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.password.size = 10

-- Display: Password
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Difference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference_value = {}

-- Size: Peg Difference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference_value.size = 4

-- Display: Peg Difference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference_value.display = function(value)
  return "Peg Difference Value: "..value
end

-- Dissect: Peg Difference Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.peg_difference_value, range, value, display)

  return offset + length, value
end

-- Peg Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type_value = {}

-- Size: Peg Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type_value.size = 1

-- Display: Peg Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type_value.display = function(value)
  if value == "M" then
    return "Peg Type Value: Midpoint (M)"
  end
  if value == "P" then
    return "Peg Type Value: Market (P)"
  end
  if value == "R" then
    return "Peg Type Value: Primary (R)"
  end

  return "Peg Type Value: Unknown("..value..")"
end

-- Dissect: Peg Type Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.peg_type_value, range, value, display)

  return offset + length, value
end

-- Pending Order Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_reason = {}

-- Size: Pending Order Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_reason.size = 1

-- Display: Pending Order Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_reason.display = function(value)
  if value == "S" then
    return "Pending Order Reason: System Processing (S)"
  end

  return "Pending Order Reason: Unknown("..value..")"
end

-- Dissect: Pending Order Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.pending_order_reason, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price = {}

-- Size: Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.size = 4

-- Display: Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.translate(raw)
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity = {}

-- Size: Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.size = 4

-- Display: Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.quantity, range, value, display)

  return offset + length, value
end

-- Random Reserve Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve_value = {}

-- Size: Random Reserve Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve_value.size = 4

-- Display: Random Reserve Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve_value.display = function(value)
  return "Random Reserve Value: "..value
end

-- Dissect: Random Reserve Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.random_reserve_value, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reason = {}

-- Size: Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reason.size = 2

-- Display: Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Rejected Order Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_reason = {}

-- Size: Rejected Order Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_reason.size = 2

-- Display: Rejected Order Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_reason.display = function(value)
  return "Rejected Order Reason: "..value
end

-- Dissect: Rejected Order Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.rejected_order_reason, range, value, display)

  return offset + length, value
end

-- Replace Pending Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_reason = {}

-- Size: Replace Pending Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_reason.size = 1

-- Display: Replace Pending Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_reason.display = function(value)
  return "Replace Pending Reason: "..value
end

-- Dissect: Replace Pending Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.replace_pending_reason, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_session = {}

-- Size: Requested Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_session.size = 10

-- Display: Requested Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Restate Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.restate_reason = {}

-- Size: Restate Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.restate_reason.size = 1

-- Display: Restate Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.restate_reason.display = function(value)
  if value == "R" then
    return "Restate Reason: Refresh Of Display (R)"
  end
  if value == "P" then
    return "Restate Reason: Update Of Displayed Price (P)"
  end

  return "Restate Reason: Unknown("..value..")"
end

-- Dissect: Restate Reason
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.restate_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.restate_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.restate_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.restate_reason, range, value, display)

  return offset + length, value
end

-- Secondary Order Reference Number Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number_value = {}

-- Size: Secondary Order Reference Number Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number_value.size = 8

-- Display: Secondary Order Reference Number Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number_value.display = function(value)
  return "Secondary Order Reference Number Value: "..value
end

-- Dissect: Secondary Order Reference Number Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.secondary_order_reference_number_value, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number = {}

-- Size: Sequence Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_message_type.display = function(value)
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
    return "Sequenced Message Type: Cancelled Order Message (C)"
  end
  if value == "P" then
    return "Sequenced Message Type: Cancel Pending Message (P)"
  end
  if value == "N" then
    return "Sequenced Message Type: Replace Pending Message (N)"
  end
  if value == "E" then
    return "Sequenced Message Type: Executed Order Message (E)"
  end
  if value == "B" then
    return "Sequenced Message Type: Broken Trade Message (B)"
  end
  if value == "J" then
    return "Sequenced Message Type: Rejected Order Message (J)"
  end
  if value == "I" then
    return "Sequenced Message Type: Cancel Rejected Message (I)"
  end
  if value == "T" then
    return "Sequenced Message Type: Order Restated Message (T)"
  end
  if value == "W" then
    return "Sequenced Message Type: Mmo Refresh Request Message (W)"
  end
  if value == "Q" then
    return "Sequenced Message Type: Account Query Response Message (Q)"
  end
  if value == "G" then
    return "Sequenced Message Type: Gtc Cancelled Message (G)"
  end
  if value == "R" then
    return "Sequenced Message Type: Response To Mmi Notification Message (R)"
  end
  if value == "M" then
    return "Sequenced Message Type: Pending Order Message (M)"
  end
  if value == "D" then
    return "Sequenced Message Type: Stream Status Message (D)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_type.display = function(value)
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
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.session = {}

-- Size: Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.session.size = 10

-- Display: Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.session, range, value, display)

  return offset + length, value
end

-- Status
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.status = {}

-- Size: Status
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.status.size = 1

-- Display: Status
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.status.display = function(value)
  if value == "O" then
    return "Status: Stream On (O)"
  end
  if value == "X" then
    return "Status: Stream Off (X)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.status, range, value, display)

  return offset + length, value
end

-- Stp Action Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action_value = {}

-- Size: Stp Action Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action_value.size = 1

-- Display: Stp Action Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action_value.display = function(value)
  if value == "1" then
    return "Stp Action Value: Cancel Passive Order (1)"
  end
  if value == "2" then
    return "Stp Action Value: Cancel Aggressive Order (2)"
  end
  if value == "3" then
    return "Stp Action Value: Cancel Both Orders (3)"
  end
  if value == "4" then
    return "Stp Action Value: Create A Transfer Transaction (4)"
  end

  return "Stp Action Value: Unknown("..value..")"
end

-- Dissect: Stp Action Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_action_value, range, value, display)

  return offset + length, value
end

-- Stp Level Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level_value = {}

-- Size: Stp Level Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level_value.size = 1

-- Display: Stp Level Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level_value.display = function(value)
  if value == "1" then
    return "Stp Level Value: Mpid And Trader (1)"
  end
  if value == "2" then
    return "Stp Level Value: Mpid (2)"
  end
  if value == "3" then
    return "Stp Level Value: Specified Trader Group (3)"
  end

  return "Stp Level Value: Unknown("..value..")"
end

-- Dissect: Stp Level Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_level_value, range, value, display)

  return offset + length, value
end

-- Stp Trader Group Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group_value = {}

-- Size: Stp Trader Group Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group_value.size = 2

-- Display: Stp Trader Group Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group_value.display = function(value)
  return "Stp Trader Group Value: "..value
end

-- Dissect: Stp Trader Group Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group_value.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_trader_group_value, range, value, display)

  return offset + length, value
end

-- Tag
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tag = {}

-- Size: Tag
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tag.size = 1

-- Display: Tag
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tag.display = function(value)
  return "Tag: "..value
end

-- Dissect: Tag
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.tag, range, value, display)

  return offset + length, value
end

-- Target Strategy Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy_value = {}

-- Size: Target Strategy Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy_value.size = 1

-- Display: Target Strategy Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy_value.display = function(value)
  if value == "0" then
    return "Target Strategy Value: Rate 5 To 15 Percent (0)"
  end
  if value == "1" then
    return "Target Strategy Value: Rate 5 To 30 Percent (1)"
  end
  if value == "5" then
    return "Target Strategy Value: Rate 10 To 200 Percent (5)"
  end
  if value == "C" then
    return "Target Strategy Value: Custom (C)"
  end

  return "Target Strategy Value: Unknown("..value..")"
end

-- Dissect: Target Strategy Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.target_strategy_value, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.text = {}

-- Size: Text
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.text.size = 1

-- Display: Text
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force_value = {}

-- Size: Time In Force Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force_value.size = 1

-- Display: Time In Force Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force_value.display = function(value)
  if value == "0" then
    return "Time In Force Value: Day (0)"
  end
  if value == "1" then
    return "Time In Force Value: Gtc Good Till Cancelled (1)"
  end
  if value == "3" then
    return "Time In Force Value: Ioc Immediate Or Cancel (3)"
  end
  if value == "6" then
    return "Time In Force Value: Gtt Good Till Time (6)"
  end
  if value == "B" then
    return "Time In Force Value: Gfa Good For Auction (B)"
  end

  return "Time In Force Value: Unknown("..value..")"
end

-- Dissect: Time In Force Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.time_in_force_value, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp = {}

-- Size: Timestamp
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size = 8

-- Display: Timestamp
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading At Closing Price Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price_value = {}

-- Size: Trading At Closing Price Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price_value.size = 1

-- Display: Trading At Closing Price Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price_value.display = function(value)
  if value == "Y" then
    return "Trading At Closing Price Value: Participate In Trading At Closing Price (Y)"
  end
  if value == "N" then
    return "Trading At Closing Price Value: Do Not Participate In Trading At Closing Price (N)"
  end

  return "Trading At Closing Price Value: Unknown("..value..")"
end

-- Dissect: Trading At Closing Price Value
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.trading_at_closing_price_value, range, value, display)

  return offset + length, value
end

-- Trading Mode
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_mode = {}

-- Size: Trading Mode
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_mode.size = 1

-- Display: Trading Mode
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_mode.display = function(value)
  if value == "O" then
    return "Trading Mode: Opening Auction (O)"
  end
  if value == "I" then
    return "Trading Mode: Scheduled Intraday Auction (I)"
  end
  if value == "U" then
    return "Trading Mode: Unscheduled Auction (U)"
  end
  if value == "2" then
    return "Trading Mode: Continuous Trading (2)"
  end
  if value == "3" then
    return "Trading Mode: At Market Close Trading (3)"
  end
  if value == "P" then
    return "Trading Mode: On Demand Auction (P)"
  end

  return "Trading Mode: Unknown("..value..")"
end

-- Dissect: Trading Mode
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Transaction Category
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_category = {}

-- Size: Transaction Category
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_category.size = 1

-- Display: Transaction Category
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_category.display = function(value)
  if value == "D" then
    return "Transaction Category: Dark Trade (D)"
  end
  if value == "-" then
    return "Transaction Category: None Apply (-)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Type Algo Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_type_algo_indicator = {}

-- Size: Transaction Type Algo Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_type_algo_indicator.size = 1

-- Display: Transaction Type Algo Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_type_algo_indicator.display = function(value)
  if value == "H" then
    return "Transaction Type Algo Indicator: Algorithmic Trade (H)"
  end
  if value == "-" then
    return "Transaction Type Algo Indicator: No Algorithmic Trade (-)"
  end

  return "Transaction Type Algo Indicator: Unknown("..value..")"
end

-- Dissect: Transaction Type Algo Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_type_algo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_type_algo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_type_algo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.transaction_type_algo_indicator, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_message_type.display = function(value)
  if value == "O" then
    return "Unsequenced Message Type: Enter Order Message (O)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Replace Order Message (U)"
  end
  if value == "X" then
    return "Unsequenced Message Type: Cancel Order Message (X)"
  end
  if value == "Q" then
    return "Unsequenced Message Type: Account Query Message (Q)"
  end
  if value == "M" then
    return "Unsequenced Message Type: Mmi Notification Request Message (M)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- User
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user = {}

-- Size: User
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.size = 6

-- Display: User
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.user, range, value, display)

  return offset + length, value
end

-- User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num = {}

-- Size: User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size = 4

-- Display: User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.display = function(value)
  return "User Ref Num: "..value
end

-- Dissect: User Ref Num
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.user_ref_num, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.username = {}

-- Size: Username
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.username.size = 6

-- Display: Username
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6
-----------------------------------------------------------------------

-- End Of Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.end_of_session = {}

-- Display: End Of Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Stream Status Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_status_message = {}

-- Size: Stream Status Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_status_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cum_rate.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.status.size

-- Display: Stream Status Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Status Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Cum Rate: Integer
  index, cum_rate = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cum_rate.dissect(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Status Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stream_status_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Pending Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_message = {}

-- Size: Pending Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_reason.size

-- Display: Pending Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Pending Order Reason: Alpha
  index, pending_order_reason = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.pending_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Response To Mmi Notification Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.response_to_mmi_notification_message = {}

-- Size: Response To Mmi Notification Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.response_to_mmi_notification_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.add_or_remove.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alphanumeric_4.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction_status.size

-- Display: Response To Mmi Notification Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.response_to_mmi_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response To Mmi Notification Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.response_to_mmi_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.dissect(buffer, index, packet, parent)

  -- Instruction: Alpha-numeric
  index, instruction = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction.dissect(buffer, index, packet, parent)

  -- Add Or Remove: Alpha
  index, add_or_remove = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.add_or_remove.dissect(buffer, index, packet, parent)

  -- Firm Alphanumeric 4: Alpha-numeric
  index, firm_alphanumeric_4 = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alphanumeric_4.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.dissect(buffer, index, packet, parent)

  -- Instruction Status: Alpha-numeric
  index, instruction_status = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Response To Mmi Notification Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.response_to_mmi_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.response_to_mmi_notification_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.response_to_mmi_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.response_to_mmi_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.response_to_mmi_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Original Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number_value.size

-- Display: Original Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number.display = function(buffer, offset, value, packet, parent)
  return ""..value
end

-- Dissect Fields: Original Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Original Order Reference Number Value: Integer
  index, original_order_reference_number_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.original_order_reference_number, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number.display(packet, parent, length)
    parent:append_text(display)

    return index, value
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number.fields(buffer, offset, packet, parent)
  end
end

-- Original Order Entry Date
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date = {}

-- Size: Original Order Entry Date
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date_value.size

-- Display: Original Order Entry Date
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date.display = function(buffer, offset, value, packet, parent)
  return ""..value
end

-- Dissect Fields: Original Order Entry Date
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Original Order Entry Date Value: Date
  index, original_order_entry_date_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Order Entry Date
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.original_order_entry_date, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date.display(packet, parent, length)
    parent:append_text(display)

    return index, value
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date.fields(buffer, offset, packet, parent)
  end
end

-- Gtc Cancelled Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.gtc_cancelled_message = {}

-- Size: Gtc Cancelled Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.gtc_cancelled_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reason.size

-- Display: Gtc Cancelled Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.gtc_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gtc Cancelled Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.gtc_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Entry Date: Struct of 1 fields
  index, original_order_entry_date = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Struct of 1 fields
  index, original_order_reference_number = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- Reason: Integer
  index, reason = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gtc Cancelled Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.gtc_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.gtc_cancelled_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.gtc_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.gtc_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.gtc_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Account Query Response Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.account_query_response_message = {}

-- Size: Account Query Response Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.account_query_response_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.next_user_ref_num.size

-- Display: Account Query Response Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.account_query_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Response Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.account_query_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- Next User Ref Num: UserRefNum
  index, next_user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.next_user_ref_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Account Query Response Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.account_query_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.account_query_response_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.account_query_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.account_query_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.account_query_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Mmo Refresh Request Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_request_message = {}

-- Size: Mmo Refresh Request Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_request_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alpha_4.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_reason.size

-- Display: Mmo Refresh Request Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mmo Refresh Request Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Alpha 4: Alpha
  index, firm_alpha_4 = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alpha_4.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.dissect(buffer, index, packet, parent)

  -- Mmo Refresh Reason: Alpha
  index, mmo_refresh_reason = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mmo Refresh Request Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.mmo_refresh_request_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Firm Up Id
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id = {}

-- Size: Firm Up Id
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id_value.size

-- Display: Firm Up Id
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Up Id
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Up Id Value: Integer
  index, firm_up_id_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Firm Up Id
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm_up_id, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id.fields(buffer, offset, packet, parent)
  end
end

-- Conditional Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type = {}

-- Size: Conditional Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type_value.size

-- Display: Conditional Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Conditional Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Conditional Type Value: Alpha
  index, conditional_type_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Conditional Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.conditional_type, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type.fields(buffer, offset, packet, parent)
  end
end

-- Max Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate = {}

-- Size: Max Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate_value.size

-- Display: Max Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Max Rate Value: Integer
  index, max_rate_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.max_rate, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate.fields(buffer, offset, packet, parent)
  end
end

-- Min Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate = {}

-- Size: Min Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate_value.size

-- Display: Min Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Min Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Min Rate Value: Integer
  index, min_rate_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Min Rate
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.min_rate, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate.fields(buffer, offset, packet, parent)
  end
end

-- Target Strategy
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy = {}

-- Size: Target Strategy
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy_value.size

-- Display: Target Strategy
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Target Strategy
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Target Strategy Value: Alpha
  index, target_strategy_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Target Strategy
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.target_strategy, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy.fields(buffer, offset, packet, parent)
  end
end

-- Customer Order Capacity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity = {}

-- Size: Customer Order Capacity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity_value.size

-- Display: Customer Order Capacity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Customer Order Capacity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Customer Order Capacity Value: Alpha
  index, customer_order_capacity_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Customer Order Capacity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.customer_order_capacity, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity.fields(buffer, offset, packet, parent)
  end
end

-- Cumulative Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity = {}

-- Size: Cumulative Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity_value.size

-- Display: Cumulative Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cumulative Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cumulative Quantity Value: Integer
  index, cumulative_quantity_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cumulative Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cumulative_quantity, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity.fields(buffer, offset, packet, parent)
  end
end

-- Order Condition
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition = {}

-- Size: Order Condition
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition_value.size

-- Display: Order Condition
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Condition
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Condition Value: Alpha
  index, order_condition_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Condition
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_condition, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition.fields(buffer, offset, packet, parent)
  end
end

-- Trading At Closing Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price = {}

-- Size: Trading At Closing Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price_value.size

-- Display: Trading At Closing Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading At Closing Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading At Closing Price Value: Alpha
  index, trading_at_closing_price_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading At Closing Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.trading_at_closing_price, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price.fields(buffer, offset, packet, parent)
  end
end

-- Time In Force
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force = {}

-- Size: Time In Force
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force_value.size

-- Display: Time In Force
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time In Force
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time In Force Value: Alphanumeric
  index, time_in_force_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time In Force
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.time_in_force, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force.fields(buffer, offset, packet, parent)
  end
end

-- Stp Trader Group
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group = {}

-- Size: Stp Trader Group
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group_value.size

-- Display: Stp Trader Group
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stp Trader Group
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stp Trader Group Value: Alphanumeric
  index, stp_trader_group_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stp Trader Group
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_trader_group, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group.fields(buffer, offset, packet, parent)
  end
end

-- Stp Level
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level = {}

-- Size: Stp Level
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level_value.size

-- Display: Stp Level
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stp Level
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stp Level Value: Alphanumeric
  index, stp_level_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stp Level
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_level, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level.fields(buffer, offset, packet, parent)
  end
end

-- Stp Action
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action = {}

-- Size: Stp Action
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action_value.size

-- Display: Stp Action
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stp Action
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stp Action Value: Alphanumeric
  index, stp_action_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stp Action
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.stp_action, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action.fields(buffer, offset, packet, parent)
  end
end

-- Secondary Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number = {}

-- Size: Secondary Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number_value.size

-- Display: Secondary Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Secondary Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Secondary Order Reference Number Value: Integer
  index, secondary_order_reference_number_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Secondary Order Reference Number
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.secondary_order_reference_number, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number.fields(buffer, offset, packet, parent)
  end
end

-- Random Reserve
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve = {}

-- Size: Random Reserve
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve_value.size

-- Display: Random Reserve
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Random Reserve
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Random Reserve Value: Integer
  index, random_reserve_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Random Reserve
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.random_reserve, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve.fields(buffer, offset, packet, parent)
  end
end

-- Peg Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type = {}

-- Size: Peg Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type_value.size

-- Display: Peg Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Peg Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Peg Type Value: Alpha
  index, peg_type_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Peg Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.peg_type, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type.fields(buffer, offset, packet, parent)
  end
end

-- Peg Difference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference = {}

-- Size: Peg Difference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference_value.size

-- Display: Peg Difference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Peg Difference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Peg Difference Value: Signed Integer
  index, peg_difference_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Peg Difference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.peg_difference, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference.fields(buffer, offset, packet, parent)
  end
end

-- Order Reference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference = {}

-- Size: Order Reference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_value.size

-- Display: Order Reference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference Value: Alpha
  index, order_reference_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_reference, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity = {}

-- Size: Minimum Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity_value.size

-- Display: Minimum Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Quantity Value: Integer
  index, minimum_quantity_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.minimum_quantity, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity.fields(buffer, offset, packet, parent)
  end
end

-- Max Floor
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor = {}

-- Size: Max Floor
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor_value.size

-- Display: Max Floor
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Floor
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Max Floor Value: Integer
  index, max_floor_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Floor
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.max_floor, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Provision Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator = {}

-- Size: Liquidity Provision Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator_value.size

-- Display: Liquidity Provision Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Provision Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Liquidity Provision Indicator Value: Alpha
  index, liquidity_provision_indicator_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Provision Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_provision_indicator, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator.fields(buffer, offset, packet, parent)
  end
end

-- Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm = {}

-- Size: Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_value.size

-- Display: Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Value: Alpha
  index, firm_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.firm, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm.fields(buffer, offset, packet, parent)
  end
end

-- Expire Time
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time = {}

-- Size: Expire Time
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time_value.size

-- Display: Expire Time
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expire Time
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Expire Time Value: Integer
  index, expire_time_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expire Time
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.expire_time, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time.fields(buffer, offset, packet, parent)
  end
end

-- Display Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity = {}

-- Size: Display Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity_value.size

-- Display: Display Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Display Quantity Value: Integer
  index, display_quantity_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Display Quantity
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display_quantity, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity.fields(buffer, offset, packet, parent)
  end
end

-- Display Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price = {}

-- Size: Display Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price_value.size

-- Display: Display Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Display Price Value: Price
  index, display_price_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Display Price
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display_price, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price.fields(buffer, offset, packet, parent)
  end
end

-- Display
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display = {}

-- Size: Display
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_value.size

-- Display: Display
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Display
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Display Value: Alpha
  index, display_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Display
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.display, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display.fields(buffer, offset, packet, parent)
  end
end

-- Dea Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator = {}

-- Size: Dea Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator_value.size

-- Display: Dea Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dea Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dea Indicator Value: Alpha
  index, dea_indicator_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dea Indicator
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.dea_indicator, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator.fields(buffer, offset, packet, parent)
  end
end

-- Cross Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type = {}

-- Size: Cross Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type_value.size

-- Display: Cross Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Type Value: Alpha
  index, cross_type_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cross_type, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type.fields(buffer, offset, packet, parent)
  end
end

-- Client Reference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference = {}

-- Size: Client Reference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference_value.size

-- Display: Client Reference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Reference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Reference Value: Alpha
  index, client_reference_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Reference
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_reference, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm = {}

-- Size: Clearing Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm_value.size

-- Display: Clearing Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Value: Alpha
  index, clearing_firm_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Firm
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_firm, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Account Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type = {}

-- Size: Clearing Account Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type_value.size

-- Display: Clearing Account Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Account Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Account Type Value: Alphanumeric
  index, clearing_account_type_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Account Type
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_account_type, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Account
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account = {}

-- Size: Clearing Account
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_value.size

-- Display: Clearing Account
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Account
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Account Value: Alpha
  index, clearing_account_value = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Account
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.clearing_account, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account.fields(buffer, offset, packet, parent)
  end
end

-- Value Payload
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.value_payload = {}

-- Dissect: Value Payload
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.value_payload.dissect = function(buffer, offset, packet, parent, tag)
  -- Dissect Clearing Account
  if tag == 1 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clearing Account Type
  if tag == 2 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_account_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clearing Firm
  if tag == 3 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.clearing_firm.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Reference
  if tag == 4 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_reference.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Type
  if tag == 5 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cross_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dea Indicator
  if tag == 6 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dea_indicator.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Display
  if tag == 7 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Display Price
  if tag == 8 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Display Quantity
  if tag == 9 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.display_quantity.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expire Time
  if tag == 10 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.expire_time.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Firm
  if tag == 11 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Liquidity Provision Indicator
  if tag == 12 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_provision_indicator.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if tag == 13 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_floor.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Quantity
  if tag == 14 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.minimum_quantity.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Reference
  if tag == 15 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Original Order Entry Date
  if tag == 16 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_entry_date.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Original Order Reference Number
  if tag == 17 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.original_order_reference_number.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Difference
  if tag == 18 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_difference.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Type
  if tag == 19 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.peg_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Random Reserve
  if tag == 20 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.random_reserve.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Secondary Order Reference Number
  if tag == 21 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.secondary_order_reference_number.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stp Action
  if tag == 22 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_action.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stp Level
  if tag == 23 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_level.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stp Trader Group
  if tag == 24 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stp_trader_group.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time In Force
  if tag == 25 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.time_in_force.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading At Closing Price
  if tag == 26 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_at_closing_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Condition
  if tag == 27 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_condition.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cumulative Quantity
  if tag == 28 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cumulative_quantity.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Order Capacity
  if tag == 29 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.customer_order_capacity.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Target Strategy
  if tag == 30 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.target_strategy.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Rate
  if tag == 31 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.min_rate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Rate
  if tag == 32 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.max_rate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Conditional Type
  if tag == 33 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conditional_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Firm Up Id
  if tag == 34 then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_up_id.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- TagValue
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue = {}

-- Display: TagValue
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: TagValue
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.fields = function(buffer, offset, packet, parent, size_of_tagvalue)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.length.dissect(buffer, index, packet, parent)

  -- Tag: 1 Byte Unsigned Fixed Width Integer
  index, tag = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tag.dissect(buffer, index, packet, parent)

  -- Value Payload: Runtime Type with 34 branches
  index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.value_payload.dissect(buffer, index, packet, parent, tag)

  return index
end

-- Dissect: TagValue
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.dissect = function(buffer, offset, packet, parent, size_of_tagvalue)
  local index = offset + size_of_tagvalue

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.tagvalue, buffer(offset, 0))
    local current = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.fields(buffer, offset, packet, parent, size_of_tagvalue)
    parent:set_len(size_of_tagvalue)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.fields(buffer, offset, packet, parent, size_of_tagvalue)

    return index
  end
end

-- Order Restated Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_restated_message = {}

-- Size: Order Restated Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_restated_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Restated Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Restate Reason: Alpha
  index, restate_reason = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.restate_reason.dissect(buffer, index, packet, parent)

  -- Appendage Length: Integer
  index, appendage_length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for TagValue
  local end_of_payload = appendage_length + index

  -- TagValue: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 1):uint()

    -- Runtime Size Of: TagValue
    local size_of_tagvalue = length + 1

    -- TagValue: Struct of 3 fields
    index, tagvalue = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.dissect(buffer, index, packet, parent, size_of_tagvalue)
  end

  return index
end

-- Dissect: Order Restated Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_restated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_restated_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_restated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_restated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_restated_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Rejected Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_message = {}

-- Size: Cancel Rejected Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_reason.size

-- Display: Cancel Rejected Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Cancel Rejected Reason: Integer
  index, cancel_rejected_reason = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_rejected_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejected Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_message = {}

-- Size: Rejected Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_reason.size

-- Display: Rejected Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Rejected Order Reason: Integer
  index, rejected_order_reason = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.rejected_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.match_number.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_reason.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_mode.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_category.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_type_algo_indicator.size

-- Display: Broken Trade Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.match_number.dissect(buffer, index, packet, parent)

  -- Broken Trade Reason: Alpha
  index, broken_trade_reason = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_reason.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alpha
  index, trading_mode = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alpha
  index, transaction_category = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Transaction Type Algo Indicator: Alpha
  index, transaction_type_algo_indicator = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_type_algo_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Attributes
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_attributes = {}

-- Size: Liquidity Attributes
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_attributes.size = 1

-- Display: Liquidity Attributes
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_attributes.display = function(range, value, packet, parent)
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
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_attributes.bits = function(range, value, packet, parent)

  -- Reserved 13: 3 Bit
  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.reserved_13, range, value)

  -- Liquidity Indicator: 2 Bit Enum with 4 values
  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_indicator, range, value)

  -- Liquidity Internalized: 1 Bit Enum with 2 values
  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_internalized, range, value)

  -- Liquidity Top Of Book: 1 Bit Enum with 2 values
  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_top_of_book, range, value)

  -- Liquidity Self Trade: 1 Bit Enum with 2 values
  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_self_trade, range, value)
end

-- Dissect: Liquidity Attributes
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_attributes.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_attributes.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_attributes.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.liquidity_attributes, range, display)

  if show.structs then
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_attributes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Executed Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_order_message = {}

-- Size: Executed Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_order_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_quantity.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_price.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_flag.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.match_number.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.contra_firm.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_mode.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_category.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_type_algo_indicator.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_attributes.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.last_market.size

-- Display: Executed Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Executed Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Price: Price
  index, execution_price = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: Alpha
  index, liquidity_flag = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.match_number.dissect(buffer, index, packet, parent)

  -- Contra Firm: Alpha
  index, contra_firm = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.contra_firm.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alpha
  index, trading_mode = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alpha
  index, transaction_category = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Transaction Type Algo Indicator: Alpha
  index, transaction_type_algo_indicator = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.transaction_type_algo_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Attributes: Struct of 5 fields
  index, liquidity_attributes = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.liquidity_attributes.dissect(buffer, index, packet, parent)

  -- Last Market: Integer
  index, last_market = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.last_market.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.executed_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Pending Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_message = {}

-- Size: Replace Pending Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.orig_user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_reason.size

-- Display: Replace Pending Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Pending Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- Orig User Ref Num: UserRefNum
  index, orig_user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Replace Pending Reason: Alpha
  index, replace_pending_reason = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Pending Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.replace_pending_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Pending Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_message = {}

-- Size: Cancel Pending Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_reason.size

-- Display: Cancel Pending Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Pending Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Cancel Pending Reason: Alpha
  index, cancel_pending_reason = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Pending Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_pending_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancelled Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancelled_order_message = {}

-- Size: Cancelled Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancelled_order_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.decrement_quantity.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_reason.size

-- Display: Cancelled Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancelled_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancelled Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancelled_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Decrement Quantity: Integer
  index, decrement_quantity = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.decrement_quantity.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alpha
  index, cancel_reason = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancelled Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancelled_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancelled_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancelled_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancelled_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancelled_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_replaced_message = {}

-- Size: Order Replaced Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_replaced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Replaced Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- Orig User Ref Num: UserRefNum
  index, orig_user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- New User Ref Num: UserRefNum
  index, new_user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.new_user_ref_num.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.dissect(buffer, index, packet, parent)

  -- Appendage Length: Integer
  index, appendage_length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for TagValue
  local end_of_payload = appendage_length + index

  -- TagValue: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 1):uint()

    -- Runtime Size Of: TagValue
    local size_of_tagvalue = length + 1

    -- TagValue: Struct of 3 fields
    index, tagvalue = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.dissect(buffer, index, packet, parent, size_of_tagvalue)
  end

  return index
end

-- Dissect: Order Replaced Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_replaced_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Party Role Qualifier
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.party_role_qualifier = {}

-- Size: Party Role Qualifier
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.party_role_qualifier.size = 1

-- Display: Party Role Qualifier
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.party_role_qualifier.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Party Role Qualifier
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.party_role_qualifier.bits = function(range, value, packet, parent)

  -- Client Identification: 2 Bit Enum with 3 values
  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_identification, range, value)

  -- Investment Decision Within Firm: 2 Bit Enum with 3 values
  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.investment_decision_within_firm, range, value)

  -- Execution Decision Within Firm: 2 Bit Enum with 3 values
  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.execution_decision_within_firm, range, value)

  -- Reserved 78: 2 Bit
  parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.reserved_78, range, value)
end

-- Dissect: Party Role Qualifier
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.party_role_qualifier.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.party_role_qualifier.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.party_role_qualifier.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.party_role_qualifier, range, display)

  if show.structs then
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.party_role_qualifier.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Accepted Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_accepted_message = {}

-- Size: Order Accepted Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_accepted_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Accepted Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.dissect(buffer, index, packet, parent)

  -- Execution Within Firm: Integer
  index, execution_within_firm = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_within_firm.dissect(buffer, index, packet, parent)

  -- Investment Decision Within Firm Integer 4: Integer
  index, investment_decision_within_firm_integer_4 = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.investment_decision_within_firm_integer_4.dissect(buffer, index, packet, parent)

  -- Client Identifier: Integer
  index, client_identifier = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_identifier.dissect(buffer, index, packet, parent)

  -- Party Role Qualifier: Struct of 4 fields
  index, party_role_qualifier = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.party_role_qualifier.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha-numeric
  index, capacity = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.capacity.dissect(buffer, index, packet, parent)

  -- Algo Indicator: Alpha-numeric
  index, algo_indicator = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.algo_indicator.dissect(buffer, index, packet, parent)

  -- Appendage Length: Integer
  index, appendage_length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for TagValue
  local end_of_payload = appendage_length + index

  -- TagValue: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 1):uint()

    -- Runtime Size Of: TagValue
    local size_of_tagvalue = length + 1

    -- TagValue: Struct of 3 fields
    index, tagvalue = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.dissect(buffer, index, packet, parent, size_of_tagvalue)
  end

  return index
end

-- Dissect: Order Accepted Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.order_accepted_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.system_event_message = {}

-- Size: System Event Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.system_event_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.event_code.size

-- Display: System Event Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Accepted Message
  if sequenced_message_type == "A" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == "U" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancelled Order Message
  if sequenced_message_type == "C" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancelled_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Pending Message
  if sequenced_message_type == "P" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_pending_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Pending Message
  if sequenced_message_type == "N" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_pending_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Executed Order Message
  if sequenced_message_type == "E" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.executed_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if sequenced_message_type == "B" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rejected Order Message
  if sequenced_message_type == "J" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.rejected_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Message
  if sequenced_message_type == "I" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if sequenced_message_type == "T" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mmo Refresh Request Message
  if sequenced_message_type == "W" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmo_refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Account Query Response Message
  if sequenced_message_type == "Q" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.account_query_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gtc Cancelled Message
  if sequenced_message_type == "G" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.gtc_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Response To Mmi Notification Message
  if sequenced_message_type == "R" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.response_to_mmi_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pending Order Message
  if sequenced_message_type == "M" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.pending_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Status Message
  if sequenced_message_type == "D" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_frame ~= packet.number or nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_occurrence >= #memo then
          nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_frame = packet.number
          nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_occurrence = 0
        end
        nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_occurrence = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_occurrence + 1
        local value = memo[nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 17 values
  index, sequenced_message_type = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 17 branches
  index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_rejected_packet.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_accepted_packet.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.session.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Store Sequence Number Value
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.current = sequence_number

  if not packet.visited then
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.current.sequence_number.last = sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.debug_packet = {}

-- Size: Debug Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.debug_packet.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.text.size

-- Display: Debug Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_payload = {}

-- Dissect: Server Payload
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.packet_length.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header.size then
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
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.data(packet)
  if not packet.visited then
    data.sequence_number.frames[packet.number] = data.sequence_number.last
  end
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.current = data.sequence_number.frames[packet.number]
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Logout Request
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.logout_request = {}

-- Display: Logout Request
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Mmi Notification Request Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmi_notification_request_message = {}

-- Size: Mmi Notification Request Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmi_notification_request_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.add_or_remove.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alphanumeric_4.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.size

-- Display: Mmi Notification Request Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmi_notification_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mmi Notification Request Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmi_notification_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.dissect(buffer, index, packet, parent)

  -- Instruction: Alpha-numeric
  index, instruction = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.instruction.dissect(buffer, index, packet, parent)

  -- Add Or Remove: Alpha
  index, add_or_remove = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.add_or_remove.dissect(buffer, index, packet, parent)

  -- Firm Alphanumeric 4: Alpha-numeric
  index, firm_alphanumeric_4 = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.firm_alphanumeric_4.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mmi Notification Request Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmi_notification_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.mmi_notification_request_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmi_notification_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmi_notification_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmi_notification_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_order_message = {}

-- Size: Cancel Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_order_message.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.size

-- Display: Cancel Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.cancel_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_order_message = {}

-- Size: Replace Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Replace Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig User Ref Num: UserRefNum
  index, orig_user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- New User Ref Num: UserRefNum
  index, new_user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.new_user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.dissect(buffer, index, packet, parent)

  -- Appendage Length: Integer
  index, appendage_length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for TagValue
  local end_of_payload = appendage_length + index

  -- TagValue: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 1):uint()

    -- Runtime Size Of: TagValue
    local size_of_tagvalue = length + 1

    -- TagValue: Struct of 3 fields
    index, tagvalue = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.dissect(buffer, index, packet, parent, size_of_tagvalue)
  end

  return index
end

-- Dissect: Replace Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.replace_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.enter_order_message = {}

-- Size: Enter Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.enter_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Enter Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user_ref_num.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.quantity.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.order_book.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.price.dissect(buffer, index, packet, parent)

  -- User: Alpha-numeric
  index, user = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.user.dissect(buffer, index, packet, parent)

  -- Execution Within Firm: Integer
  index, execution_within_firm = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.execution_within_firm.dissect(buffer, index, packet, parent)

  -- Investment Decision Within Firm Integer 4: Integer
  index, investment_decision_within_firm_integer_4 = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.investment_decision_within_firm_integer_4.dissect(buffer, index, packet, parent)

  -- Client Identifier: Integer
  index, client_identifier = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_identifier.dissect(buffer, index, packet, parent)

  -- Party Role Qualifier: Struct of 4 fields
  index, party_role_qualifier = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.party_role_qualifier.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha-numeric
  index, capacity = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.capacity.dissect(buffer, index, packet, parent)

  -- Algo Indicator: Alpha-numeric
  index, algo_indicator = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.algo_indicator.dissect(buffer, index, packet, parent)

  -- Appendage Length: Integer
  index, appendage_length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for TagValue
  local end_of_payload = appendage_length + index

  -- TagValue: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 1):uint()

    -- Runtime Size Of: TagValue
    local size_of_tagvalue = length + 1

    -- TagValue: Struct of 3 fields
    index, tagvalue = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.tagvalue.dissect(buffer, index, packet, parent, size_of_tagvalue)
  end

  return index
end

-- Dissect: Enter Order Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.enter_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_message = {}

-- Dissect: Unsequenced Message
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "U" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "X" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Account Query Message
  if unsequenced_message_type == "Q" then
    return offset
  end
  -- Dissect Mmi Notification Request Message
  if unsequenced_message_type == "M" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.mmi_notification_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 5 values
  index, unsequenced_message_type = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 5 branches
  index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_request_packet.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.username.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.password.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_session.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_payload = {}

-- Dissect: Client Payload
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header.size =
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.packet_length.size + 
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header.size then
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
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.init()
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.sequence_number.current = nil
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.current = nil
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.conversation.flows = {}
end

-- Connection roles for Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6: Client is the initiator, Server is the acceptor
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
  local a = endpoint(packet.src, packet.src_port)
  local b = endpoint(packet.dst, packet.dst_port)
  if a < b then
    return a.." "..b
  end
  return b.." "..a
end


-- Connection role of the frame's sender
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.role = function(packet)
  if omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.acceptor_port
  if port ~= 0 and packet.dst_port == port then
    return "initiator"
  end
  if port ~= 0 and packet.src_port == port then
    return "acceptor"
  end
  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)
  if initiators[key] == nil then
    initiators[key] = sender
  end
  local first = initiators[key] == sender
  if omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.prefs.swap_sides then
    first = not first
  end
  if swapped[key] then
    first = not first
  end
  if first then
    return "initiator"
  end
  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6
function omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6, buffer(), omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.role(packet)
  if role == "initiator" then
    return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet.dissect(buffer, packet, protocol)
  end
  return nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet.fingerprint = function(buffer)
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
nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 (Tcp)
local function omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6
  omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 (Tcp)
local function omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6
  omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.role(packet)
  local first, second = omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6_tcp_initiator_heuristic, omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6
omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6:register_heuristic("tcp", omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6_tcp_heuristic)
-- Register Nasdaq NordicEquities OrderEntryPureStream Ouch 5.02.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nordicequities_orderentrypurestream_ouch_v5_02_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 5.02.6
--   Date: Wednesday, November 12, 2025
--   Specification: Nasdaq Nordic INET OUCH5 PureStream (5.02.6).pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
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
