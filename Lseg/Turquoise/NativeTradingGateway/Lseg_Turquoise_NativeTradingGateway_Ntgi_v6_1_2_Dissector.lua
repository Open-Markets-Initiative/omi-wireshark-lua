-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Turquoise NativeTradingGateway Ntgi 6.1.2 Protocol
local omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2 = Proto("Omi.Lseg.Turquoise.NativeTradingGateway.Ntgi.v6.1.2", "Lseg Turquoise NativeTradingGateway Ntgi 6.1.2")

-- Protocol table
local lseg_turquoise_nativetradinggateway_ntgi_v6_1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Turquoise NativeTradingGateway Ntgi 6.1.2 Fields
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.account = ProtoField.new("Account", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.account", ftypes.STRING, nil, nil, nil, "Optional reference of the desk the order is submitted for.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.algo = ProtoField.new("Algo", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.algo", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Algorithmic trading activity")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.app_id = ProtoField.new("App Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.appid", ftypes.INT8, nil, nil, nil, "Partition ID.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.auto_cancel = ProtoField.new("Auto Cancel", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.autocancel", ftypes.INT8, nil, nil, nil, "Checks Participant preferences on logout/disconnection of session.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_client_id = ProtoField.new("Buy Client Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buyclientid", ftypes.UINT32, nil, nil, nil, "Identifier of the client. Short codes 4 - 4294967295.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_executing_trader = ProtoField.new("Buy Executing Trader", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buyexecutingtrader", ftypes.UINT32, nil, nil, nil, "Identifier of the trading member/participant who made the execution decision.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_investment_decision_maker = ProtoField.new("Buy Investment Decision Maker", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buyinvestmentdecisionmaker", ftypes.UINT32, nil, nil, nil, "Identifier of the trading member/participant who made investment decision.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_mi_fid_flags = ProtoField.new("Buy Mi Fid Flags", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buymifidflags", ftypes.STRING, nil, nil, nil, "Buy side flags identifying DEA involvement, Algo and liquidity provision activity")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_party_role_qualifiers = ProtoField.new("Buy Party Role Qualifiers", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buypartyrolequalifiers", ftypes.STRING, nil, nil, nil, "Further qualification for the buy side Client ID, Investment Decision Maker and Executing Trader identifiers")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_cl_ord_id = ProtoField.new("Buy Side Cl Ord Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buysideclordid", ftypes.STRING, nil, nil, nil, "Client specified identifier of the buy side.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_clearing_account = ProtoField.new("Buy Side Clearing Account", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buysideclearingaccount", ftypes.UINT8, nil, nil, nil, "Clearing Account Type.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_firm_id = ProtoField.new("Buy Side Firm Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buysidefirmid", ftypes.STRING, nil, nil, nil, "Identifier of the Buy Side Firm.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_order_capacity = ProtoField.new("Buy Side Order Capacity", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buysideordercapacity", ftypes.UINT8, nil, nil, nil, "Capacity of the buy side.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_order_quantity = ProtoField.new("Buy Side Order Quantity", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buysideorderquantity", ftypes.INT32, nil, nil, nil, "Total quantity of the BTF pre-arranged Trade.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_original_cl_ord_id = ProtoField.new("Buy Side Original Cl Ord Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buysideoriginalclordid", ftypes.STRING, nil, nil, nil, "The Buy Side ClOrdID of the BTF pre-arranged Trade to be cancelled.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_party_role = ProtoField.new("Buy Side Party Role", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.buysidepartyrole", ftypes.UINT8, nil, nil, nil, "Role of the specified Firm.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.cancelrejectreason", ftypes.INT32, nil, nil, nil, "Code specifying the reason for the reject.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.capacity = ProtoField.new("Capacity", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.capacity", ftypes.INT8, nil, nil, nil, "Capacity of the order.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.cl_ord_link_id = ProtoField.new("Cl Ord Link Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.clordlinkid", ftypes.STRING, nil, nil, nil, "Identifier linking the Order to the OSR. Must be populated with the Order ID of the OSR.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.clearing_account = ProtoField.new("Clearing Account", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.clearingaccount", ftypes.UINT8, nil, nil, nil, "Clearing Account Type.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.client_id = ProtoField.new("Client Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.clientid", ftypes.UINT32, nil, nil, nil, "Identifier of the client. Short codes 4 - 4,294,967,295.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.client_id_qualifier = ProtoField.new("Client Id Qualifier", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.clientidqualifier", ftypes.UINT8, {[0]="None", [1]="Lei Firm", [2]="Algo", [3]="Natural Person"}, base.DEC, 0x03, "Qualifies the Client ID")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.client_order_id = ProtoField.new("Client Order Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.clientorderid", ftypes.STRING, nil, nil, nil, "Participant specified identifier of the rejected message if it is available.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.common_symbol = ProtoField.new("Common Symbol", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.commonsymbol", ftypes.STRING, nil, nil, nil, "MTF Common Symbol of the instrument.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.comp_id = ProtoField.new("Comp Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.compid", ftypes.STRING, nil, nil, nil, "Participant name.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.counterparty = ProtoField.new("Counterparty", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.counterparty", ftypes.STRING, nil, nil, nil, "Own Firm ID if internalised, Contra Party Firm ID if not cleared, else the CCP (ECCP, LCH, X-Clear).")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.cross_id = ProtoField.new("Cross Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.crossid", ftypes.STRING, nil, nil, nil, "An identifier of the BTF pre-arranged Trade.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.cross_type = ProtoField.new("Cross Type", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.crosstype", ftypes.UINT8, nil, nil, nil, "The type of the BTF pre-arranged Trade.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.dea_flag = ProtoField.new("Dea Flag", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.deaflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Direct electronic access involvement")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.display_qty = ProtoField.new("Display Qty", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.displayqty", ftypes.INT32, nil, nil, nil, "Maximum quantity that may be displayed.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.exec_instruction = ProtoField.new("Exec Instruction", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.execinstruction", ftypes.INT8, nil, nil, nil, "Indicates if the order should participate only in Turquoise Dark Uncross events, or in continuous trading as well.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.exec_type = ProtoField.new("Exec Type", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.exectype", ftypes.STRING, nil, nil, nil, "The reason the Execution Report is being sent.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.executed_price = ProtoField.new("Executed Price", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.executedprice", ftypes.DOUBLE, nil, nil, nil, "Value of this fill. Required if ExecType is Trade.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.executed_qty = ProtoField.new("Executed Qty", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.executedqty", ftypes.INT32, nil, nil, nil, "Quantity that was executed in this fill.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.executing_trader_qualifier = ProtoField.new("Executing Trader Qualifier", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.executingtraderqualifier", ftypes.UINT8, {[0]="None", [1]="Lei Firm", [2]="Algo", [3]="Natural Person"}, base.DEC, 0x30, "Qualifies the Executing Trader")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.executing_within_firm = ProtoField.new("Executing Within Firm", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.executingwithinfirm", ftypes.UINT32, nil, nil, nil, "Identifier of the trading member/participant who made the execution decision. Short codes 4 - 4,294,967,295.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.execution_id = ProtoField.new("Execution Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.executionid", ftypes.STRING, nil, nil, nil, "Unique ID of the Execution Report. Unique across all partitions.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.execution_report_ref_id = ProtoField.new("Execution Report Ref Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.executionreportrefid", ftypes.STRING, nil, nil, nil, "Execution ID of the trade being cancelled or corrected. Populated if ExecType is Trade Cancel.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.expire_date_time_utc = ProtoField.new("Expire Date Time", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.expiredatetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the order expires on, in Unix (Posix) time: seconds since midnight 1 January 1970 UTC, not counting leap seconds. Ignored if the TIF is not GTT.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.expire_date_time = ProtoField.new("Expire Date Time", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.expiredatetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the order expires on, in Unix (Posix) time: seconds since midnight 1 January 1970 UTC, not counting leap seconds. Ignored if the TIF is not GTT.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.investment_decision_maker = ProtoField.new("Investment Decision Maker", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.investmentdecisionmaker", ftypes.UINT32, nil, nil, nil, "Identifier of the trading member/participant who made investment decision. Short codes 4 - 4,294,967,295.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.investor_information_qualifier = ProtoField.new("Investor Information Qualifier", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.investorinformationqualifier", ftypes.UINT8, {[0]="None", [1]="Lei Firm", [2]="Algo", [3]="Natural Person"}, base.DEC, 0x0C, "Qualifies the Investment Decision Maker")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.last_market = ProtoField.new("Last Market", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.lastmarket", ftypes.UINT8, nil, nil, nil, "Market (Segment MIC) where execution took place.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.leaves_qty = ProtoField.new("Leaves Qty", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.leavesqty", ftypes.INT32, nil, nil, nil, "Quantity available for further execution.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.limit_price = ProtoField.new("Limit Price", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.limitprice", ftypes.DOUBLE, nil, nil, nil, "Limit Price. Required if OrderType is Limit. Else this field will be ignored.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.liquidity_provision = ProtoField.new("Liquidity Provision", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.liquidityprovision", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Liquidity provision activity")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.logout_reason = ProtoField.new("Logout Reason", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.logoutreason", ftypes.STRING, nil, nil, nil, "Reason for the logout.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.masscancelrejectreason", ftypes.INT32, nil, nil, nil, "The code that identifies the reason the order mass cancel was rejected.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.mass_cancel_response = ProtoField.new("Mass Cancel Response", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.masscancelresponse", ftypes.INT8, nil, nil, nil, "Whether the Mass Cancel Request was accepted or rejected.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.mass_cancel_type = ProtoField.new("Mass Cancel Type", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.masscanceltype", ftypes.INT8, nil, nil, nil, "Type of Mass Cancellation.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.message_length = ProtoField.new("Message Length", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.messagelength", ftypes.INT16, nil, nil, nil, "Length of the message from the Message Type field onwards")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.message_type = ProtoField.new("Message Type", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.messagetype", ftypes.STRING, nil, nil, nil, "Type of message")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.message_version = ProtoField.new("Message Version", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.messageversion", ftypes.INT8, nil, nil, nil, "Message Version that will be used in this session. Always set to one (1).")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.mi_fid_flags = ProtoField.new("Mi Fid Flags", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.mifidflags", ftypes.STRING, nil, nil, nil, "Flags identifying DEA involvement, Algo and liquidity provision activity")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.min_qty = ProtoField.new("Min Qty", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.minqty", ftypes.INT32, nil, nil, nil, "Minimum Fill size. Set to zero if there is no minimum fill size.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.minimumquantity", ftypes.INT32, nil, nil, nil, "Minimum Fill size. Set to zero if there is no minimum fill size.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.mtf_common_symbol = ProtoField.new("Mtf Common Symbol", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.mtfcommonsymbol", ftypes.STRING, nil, nil, nil, "MTF Common Symbol of the instrument.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.nanoseconds", ftypes.UINT32, nil, nil, nil, "Nanosecond portion of the Transact Time")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.new_password = ProtoField.new("New Password", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.newpassword", ftypes.STRING, nil, nil, nil, "New Password.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_id = ProtoField.new("Order Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.orderid", ftypes.STRING, nil, nil, nil, "Unique identifier of the order assigned by the matching system.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_qty = ProtoField.new("Order Qty", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.orderqty", ftypes.INT32, nil, nil, nil, "Total order quantity.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_reject_code = ProtoField.new("Order Reject Code", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.orderrejectcode", ftypes.INT32, nil, nil, nil, "Code specifying the reason for the reject. See TQ801.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_status = ProtoField.new("Order Status", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.orderstatus", ftypes.INT8, nil, nil, nil, "The status of the order.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_sub_type = ProtoField.new("Order Sub Type", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.ordersubtype", ftypes.INT8, nil, nil, nil, "Used to specify the order sub type.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_type = ProtoField.new("Order Type", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.ordertype", ftypes.UINT8, nil, nil, nil, "Type of order.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.original_client_order_id = ProtoField.new("Original Client Order Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.originalclientorderid", ftypes.STRING, nil, nil, nil, "Participant Order ID of the order being amended.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.original_cross_id = ProtoField.new("Original Cross Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.originalcrossid", ftypes.STRING, nil, nil, nil, "Cross ID of the BTF being cancelled.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.owner_type = ProtoField.new("Owner Type", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.ownertype", ftypes.UINT8, nil, nil, nil, "Denotes whether the order is Retail, from a Retail Liquidity Provider (LP) or neither.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.party_role_qualifiers = ProtoField.new("Party Role Qualifiers", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.partyrolequalifiers", ftypes.STRING, nil, nil, nil, "Further qualification for the Client ID, Investment Decision Maker and Executing Trader identifiers")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.passive_only_order = ProtoField.new("Passive Only Order", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.passiveonlyorder", ftypes.INT8, nil, nil, nil, "Whether an order will rest prior to execution, and for a BI whether it matches with CBIs.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.password = ProtoField.new("Password", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.password", ftypes.STRING, nil, nil, nil, "Password.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.password_expiry_day_count = ProtoField.new("Password Expiry Day Count", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.passwordexpirydaycount", ftypes.STRING, nil, nil, nil, "The number of days before the password will expire.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.peg_price_type = ProtoField.new("Peg Price Type", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.pegpricetype", ftypes.UINT8, nil, nil, nil, "Pegged Price Type of the Order.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.price = ProtoField.new("Price", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.price", ftypes.DOUBLE, nil, nil, nil, "Price of the BTF.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.public_order_id = ProtoField.new("Public Order Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.publicorderid", ftypes.STRING, nil, nil, nil, "Unique for each replenishment of a particular iceberg order. Base 62 in ASCII.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reject_code = ProtoField.new("Reject Code", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.rejectcode", ftypes.INT32, nil, nil, nil, "Code specifying the reason for the reject.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reject_reason = ProtoField.new("Reject Reason", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.rejectreason", ftypes.STRING, nil, nil, nil, "Reject Reason.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.rejected_message_type = ProtoField.new("Rejected Message Type", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.rejectedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the rejected message.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reputational_score = ProtoField.new("Reputational Score", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.reputationalscore", ftypes.INT8, nil, nil, nil, "Reputational Score for a BI Participant at the time of the Turquoise Block Discovery match.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_10 = ProtoField.new("Reserved 10", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.reserved10", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_21 = ProtoField.new("Reserved 21", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.reserved21", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_3 = ProtoField.new("Reserved 3", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.reserved3", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_37 = ProtoField.new("Reserved 37", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.reserved37", ftypes.UINT8, nil, base.DEC, 0xF8, "Reserved for future use")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_67 = ProtoField.new("Reserved 67", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.reserved67", ftypes.UINT8, nil, base.DEC, 0xC0, "Reserved for future use")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_8 = ProtoField.new("Reserved 8", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_9 = ProtoField.new("Reserved 9", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.reserved9", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.second_reserved_4 = ProtoField.new("Second Reserved 4", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.secondreserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.secondaryorderid", ftypes.UINT64, nil, nil, nil, "GTP Order ID.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.seconds_utc = ProtoField.new("Seconds", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds elapsed since midnight 1 January 1970 UTC, not counting leap seconds")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.seconds = ProtoField.new("Seconds", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds elapsed since midnight 1 January 1970 UTC, not counting leap seconds")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.segment = ProtoField.new("Segment", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.segment", ftypes.STRING, nil, nil, nil, "The segment for which the orders will be cancelled. Required if MassCancelType = 4 or 15.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_client_id = ProtoField.new("Sell Client Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellclientid", ftypes.UINT32, nil, nil, nil, "Identifier of the client. Short codes 4 - 4294967295.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_executing_trader = ProtoField.new("Sell Executing Trader", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellexecutingtrader", ftypes.UINT32, nil, nil, nil, "Identifier of the trading member/participant who made the execution decision.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_investment_decision_maker = ProtoField.new("Sell Investment Decision Maker", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellinvestmentdecisionmaker", ftypes.UINT32, nil, nil, nil, "Identifier of the trading member/participant who made investment decision.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_mi_fid_flags = ProtoField.new("Sell Mi Fid Flags", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellmifidflags", ftypes.STRING, nil, nil, nil, "Sell side flags identifying DEA involvement, Algo and liquidity provision activity")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_party_role_qualifiers = ProtoField.new("Sell Party Role Qualifiers", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellpartyrolequalifiers", ftypes.STRING, nil, nil, nil, "Further qualification for the sell side Client ID, Investment Decision Maker and Executing Trader identifiers")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_cl_ord_id = ProtoField.new("Sell Side Cl Ord Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellsideclordid", ftypes.STRING, nil, nil, nil, "Client specified identifier of the sell side.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_clearing_account = ProtoField.new("Sell Side Clearing Account", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellsideclearingaccount", ftypes.UINT8, nil, nil, nil, "Clearing Account Type.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_firm_id = ProtoField.new("Sell Side Firm Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellsidefirmid", ftypes.STRING, nil, nil, nil, "Identifier of the Sell Side Firm.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_order_capacity = ProtoField.new("Sell Side Order Capacity", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellsideordercapacity", ftypes.UINT8, nil, nil, nil, "Capacity of the sell side.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_order_quantity = ProtoField.new("Sell Side Order Quantity", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellsideorderquantity", ftypes.INT32, nil, nil, nil, "Total quantity of the BTF pre-arranged Trade.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_original_cl_ord_id = ProtoField.new("Sell Side Original Cl Ord Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellsideoriginalclordid", ftypes.STRING, nil, nil, nil, "The Sell Side ClOrdID of the BTF pre-arranged Trade to be cancelled.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_party_role = ProtoField.new("Sell Side Party Role", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sellsidepartyrole", ftypes.UINT8, nil, nil, nil, "Role of the specified Firm.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sequence_no = ProtoField.new("Sequence No", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.sequenceno", ftypes.INT32, nil, nil, nil, "Sequence number of the message.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.side = ProtoField.new("Side", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.side", ftypes.INT8, nil, nil, nil, "Side of the order.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.start_of_message = ProtoField.new("Start Of Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.startofmessage", ftypes.INT8, nil, nil, nil, "Indicates the start of the message; always the binary value 2")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.target_book = ProtoField.new("Target Book", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.targetbook", ftypes.UINT8, nil, nil, nil, "Indicates the target book for the order.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.tif = ProtoField.new("Tif", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.tif", ftypes.UINT8, nil, nil, nil, "Time qualifier of the order.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.trade_liquidity_indicator = ProtoField.new("Trade Liquidity Indicator", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.tradeliquidityindicator", ftypes.STRING, nil, nil, nil, "Whether the order added or removed liquidity. Only considered if Exec Type is Trade (F) or Trade Cancel (H).")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.trade_match_id = ProtoField.new("Trade Match Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.tradematchid", ftypes.UINT64, nil, nil, nil, "Contains the trade identifier sent on the GTP market data feed.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.trader_id = ProtoField.new("Trader Id", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.traderid", ftypes.STRING, nil, nil, nil, "Optional Trader ID that Participants may submit.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.transact_time_utc = ProtoField.new("Transact Time", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Composite")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.transact_time = ProtoField.new("Transact Time", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Composite")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.type_of_trade = ProtoField.new("Type Of Trade", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.typeoftrade", ftypes.INT8, nil, nil, nil, "Indicates whether the executed portion of a passive order is visible or hidden.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.waiver_flags = ProtoField.new("Waiver Flags", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.waiverflags", ftypes.UINT8, nil, nil, nil, "Pre-trade waiver flag. Populated when Execution Type is F or H.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.waiver_flags_rfpt = ProtoField.new("RFPT", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.waiverflags.rfpt", ftypes.UINT8, {[0]="Not Set", [1]="Set"}, base.DEC, 0x20, "Bit 5: RFPT (Reference price)")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.waiver_flags_2 = ProtoField.new("Waiver Flags 2", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.waiverflags2", ftypes.UINT8, nil, nil, nil, "The pre-trade waiver flag introduced in MiFID II. Populated when ExecType is F and H.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.waiver_flags_2_pretrade_pric = ProtoField.new("Pre-trade PRIC", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.waiverflags2.pretradepric", ftypes.UINT8, {[0]="Not Set", [1]="Set"}, base.DEC, 0x01, "Bit 0: Pre-trade PRIC")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.waiver_flags_2_netw = ProtoField.new("NETW", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.waiverflags2.netw", ftypes.UINT8, {[0]="Not Set", [1]="Set"}, base.DEC, 0x02, "Bit 1: NETW, set for BTF trades (TGHL only)")

-- Lseg Turquoise NativeTradingGateway Ntgi 6.1.2 Framing
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.message = ProtoField.new("Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.message", ftypes.STRING, nil, nil, nil, "Native Trading Gateway Message")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.message_header = ProtoField.new("Message Header", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.messageheader", ftypes.STRING, nil, nil, nil, "Native Trading Gateway Message Header")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.packet = ProtoField.new("Packet", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.packet", ftypes.STRING, nil, nil, nil, "Native Trading Gateway Tcp Message Block")

-- Lseg Turquoise NativeTradingGateway 6.1.2 Application Messages
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.business_reject_message = ProtoField.new("Business Reject Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.businessrejectmessage", ftypes.STRING, nil, nil, nil, "Indicates that an application message could not be processed.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.cross_btf_cancel_request_message = ProtoField.new("Cross Btf Cancel Request Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.crossbtfcancelrequestmessage", ftypes.STRING, nil, nil, nil, "Allows the client to cancel a Committed BTF pre-arranged Trade.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.execution_report_message = ProtoField.new("Execution Report Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.executionreportmessage", ftypes.STRING, nil, nil, nil, "Indicates order accepted, rejected, executed, expired, cancelled, cancel/replaced, trade cancel, BI triggered or pending cancel.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Allows the Participant and server to exercise the communication line during periods of inactivity and verify that the interfaces at each end are available.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.logon_message = ProtoField.new("Logon Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.logonmessage", ftypes.STRING, nil, nil, nil, "Allows the Participant and server to establish a session.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.logon_reply_message = ProtoField.new("Logon Reply Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.logonreplymessage", ftypes.STRING, nil, nil, nil, "Allows the server to acknowledge a Participant's Logon.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.logout_message = ProtoField.new("Logout Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.logoutmessage", ftypes.STRING, nil, nil, nil, "Allows the Participant and server to terminate a session.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.new_cross_btf_message = ProtoField.new("New Cross Btf Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.newcrossbtfmessage", ftypes.STRING, nil, nil, nil, "Allows the client to submit a BTF pre-arranged Trade.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.new_order_message = ProtoField.new("New Order Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.newordermessage", ftypes.STRING, nil, nil, nil, "Allows the Participant to submit a new order.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.ordercancelrejectmessage", ftypes.STRING, nil, nil, nil, "Indicates that an Order Cancel Request or Order Cancel/Replace Request has been rejected.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.ordercancelreplacerequestmessage", ftypes.STRING, nil, nil, nil, "Allows the Participant to cancel/replace a live order.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.ordercancelrequestmessage", ftypes.STRING, nil, nil, nil, "Allows the Participant to cancel a live order.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_mass_cancel_report_message = ProtoField.new("Order Mass Cancel Report Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.ordermasscancelreportmessage", ftypes.STRING, nil, nil, nil, "Indicates a mass order cancel request was accepted or rejected.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_mass_cancel_request_message = ProtoField.new("Order Mass Cancel Request Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.ordermasscancelrequestmessage", ftypes.STRING, nil, nil, nil, "Allows the Participant to mass cancel all live orders, those for an instrument or those for a segment.")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reject_message = ProtoField.new("Reject Message", "lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.rejectmessage", ftypes.STRING, nil, nil, nil, "Allows the Server to reject a message that does not comply with the Native Trading Gateway messaging protocol.")

-- Lseg Turquoise NativeTradingGateway Ntgi 6.1.2 Expert Info
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.experts = {}
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.experts.undecoded = ProtoExpert.new("lseg.turquoise.nativetradinggateway.ntgi.v6.1.2.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.experts = { lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.experts.undecoded }

-----------------------------------------------------------------------
-- Lseg Turquoise NativeTradingGateway Ntgi 6.1.2 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.timestamp_format = 3


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Turquoise NativeTradingGateway Ntgi 6.1.2 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.padding = false

-- Register Lseg Turquoise NativeTradingGateway Ntgi 6.1.2 Show Options
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")

omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_application_messages then
    show.application_messages = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_application_messages
  end
  if show.headers ~= omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_headers then
    show.headers = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_headers
  end
  if show.padding ~= omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_padding then
    show.padding = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_padding
  end
  if show.structs ~= omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_structs then
    show.structs = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.show_structs
  end
  if lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.timestamp_format ~= omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.timestamp_format then
    lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.timestamp_format = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------


-- Mark a sized group whose fields read past its end; raise any other failure as it was
local function undecoded(failure, parent, expert, text)
  if not string.find(tostring(failure), "Range is out of bounds", 1, true) then
    error(failure, 0)
  end

  parent:add_proto_expert_info(expert, text)
end
-----------------------------------------------------------------------
-- Lseg Turquoise NativeTradingGateway Ntgi 6.1.2 Fields
-----------------------------------------------------------------------

-- Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.account = {}

-- Size: Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.account.size = 10

-- Display: Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.account.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.account.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.account, range, value, display)

  return offset + length, value
end

-- App Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id = {}

-- Size: App Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.size = 1

-- Display: App Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.labels = {
  [0] = "App Id: System Suspended Unknown Instrument (0)",
  [1] = "App Id: Partition 1 (1)",
  [2] = "App Id: Partition 2 (2)",
  [3] = "App Id: Partition 3 (3)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.labels[value] or "App Id: Unknown("..value..")"
end

-- Dissect: App Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.app_id, range, value, display)

  return offset + length, value
end

-- Auto Cancel
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.auto_cancel = {}

-- Size: Auto Cancel
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.auto_cancel.size = 1

-- Display: Auto Cancel
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.auto_cancel.labels = {
  [0] = "Auto Cancel: Do Not Cancel On Disconnect (0)",
  [1] = "Auto Cancel: Check System Preference (1)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.auto_cancel.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.auto_cancel.labels[value] or "Auto Cancel: Unknown("..value..")"
end

-- Dissect: Auto Cancel
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.auto_cancel.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.auto_cancel.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.auto_cancel.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.auto_cancel, range, value, display)

  return offset + length, value
end

-- Buy Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_client_id = {}

-- Size: Buy Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_client_id.size = 4

-- Display: Buy Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_client_id.labels = {
  [0] = "Buy Client Id: None (0)",
  [1] = "Buy Client Id: Aggr (1)",
  [2] = "Buy Client Id: Pnal (2)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_client_id.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_client_id.labels[value] or "Buy Client Id: Unknown("..value..")"
end

-- Dissect: Buy Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_client_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_client_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_client_id, range, value, display)

  return offset + length, value
end

-- Buy Executing Trader
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_executing_trader = {}

-- Size: Buy Executing Trader
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_executing_trader.size = 4

-- Display: Buy Executing Trader
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_executing_trader.labels = {
  [3] = "Buy Executing Trader: Client (3)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_executing_trader.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_executing_trader.labels[value] or "Buy Executing Trader: Unknown("..value..")"
end

-- Dissect: Buy Executing Trader
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_executing_trader, range, value, display)

  return offset + length, value
end

-- Buy Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_investment_decision_maker = {}

-- Size: Buy Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_investment_decision_maker.size = 4

-- Display: Buy Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_investment_decision_maker.labels = {
  [0] = "Buy Investment Decision Maker: None (0)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_investment_decision_maker.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_investment_decision_maker.labels[value] or "Buy Investment Decision Maker: Unknown("..value..")"
end

-- Dissect: Buy Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_investment_decision_maker.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_investment_decision_maker.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_investment_decision_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_investment_decision_maker, range, value, display)

  return offset + length, value
end

-- Buy Side Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_cl_ord_id = {}

-- Size: Buy Side Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_cl_ord_id.size = 20

-- Display: Buy Side Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Side Cl Ord Id: No Value"
  end

  return "Buy Side Cl Ord Id: "..value
end

-- Dissect: Buy Side Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_cl_ord_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Buy Side Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_clearing_account = {}

-- Size: Buy Side Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_clearing_account.size = 1

-- Display: Buy Side Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_clearing_account.labels = {
  [1] = "Buy Side Clearing Account: Client (1)",
  [3] = "Buy Side Clearing Account: House (3)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_clearing_account.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_clearing_account.labels[value] or "Buy Side Clearing Account: Unknown("..value..")"
end

-- Dissect: Buy Side Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_clearing_account.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_clearing_account, range, value, display)

  return offset + length, value
end

-- Buy Side Firm Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_firm_id = {}

-- Size: Buy Side Firm Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_firm_id.size = 11

-- Display: Buy Side Firm Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Side Firm Id: No Value"
  end

  return "Buy Side Firm Id: "..value
end

-- Dissect: Buy Side Firm Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_firm_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_firm_id, range, value, display)

  return offset + length, value
end

-- Buy Side Order Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_capacity = {}

-- Size: Buy Side Order Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_capacity.size = 1

-- Display: Buy Side Order Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_capacity.labels = {
  [1] = "Buy Side Order Capacity: Matched Principal Mtch (1)",
  [2] = "Buy Side Order Capacity: Dealing On Own Account Deal (2)",
  [3] = "Buy Side Order Capacity: Any Other Trading Capacity Aotc (3)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_capacity.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_capacity.labels[value] or "Buy Side Order Capacity: Unknown("..value..")"
end

-- Dissect: Buy Side Order Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_capacity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_order_capacity, range, value, display)

  return offset + length, value
end

-- Buy Side Order Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_quantity = {}

-- Size: Buy Side Order Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_quantity.size = 4

-- Display: Buy Side Order Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_quantity.display = function(value)
  return "Buy Side Order Quantity: "..value
end

-- Dissect: Buy Side Order Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_order_quantity, range, value, display)

  return offset + length, value
end

-- Buy Side Original Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_original_cl_ord_id = {}

-- Size: Buy Side Original Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_original_cl_ord_id.size = 20

-- Display: Buy Side Original Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_original_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Side Original Cl Ord Id: No Value"
  end

  return "Buy Side Original Cl Ord Id: "..value
end

-- Dissect: Buy Side Original Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_original_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_original_cl_ord_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_original_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_original_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Buy Side Party Role
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_party_role = {}

-- Size: Buy Side Party Role
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_party_role.size = 1

-- Display: Buy Side Party Role
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_party_role.labels = {
  [1] = "Buy Side Party Role: Executing Firm (1)",
  [17] = "Buy Side Party Role: Counterparty Firm (17)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_party_role.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_party_role.labels[value] or "Buy Side Party Role: Unknown("..value..")"
end

-- Dissect: Buy Side Party Role
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_party_role.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_party_role.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_side_party_role, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cancel_reject_reason.size = 4

-- Display: Cancel Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cancel_reject_reason.display = function(value)
  return "Cancel Reject Reason: "..value
end

-- Dissect: Cancel Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity = {}

-- Size: Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.size = 1

-- Display: Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.labels = {
  [1] = "Capacity: Matched Principal Mtch (1)",
  [2] = "Capacity: Dealing On Own Account Deal (2)",
  [3] = "Capacity: Any Other Trading Capacity Aotc (3)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.labels[value] or "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cl Ord Link Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cl_ord_link_id = {}

-- Size: Cl Ord Link Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cl_ord_link_id.size = 12

-- Display: Cl Ord Link Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cl_ord_link_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord Link Id: No Value"
  end

  return "Cl Ord Link Id: "..value
end

-- Dissect: Cl Ord Link Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cl_ord_link_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cl_ord_link_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cl_ord_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.cl_ord_link_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.clearing_account = {}

-- Size: Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.clearing_account.size = 1

-- Display: Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.clearing_account.labels = {
  [1] = "Clearing Account: Client (1)",
  [3] = "Clearing Account: House (3)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.clearing_account.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.clearing_account.labels[value] or "Clearing Account: Unknown("..value..")"
end

-- Dissect: Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.clearing_account.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_id = {}

-- Size: Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_id.size = 4

-- Display: Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_id.labels = {
  [0] = "Client Id: None (0)",
  [1] = "Client Id: Aggr (1)",
  [2] = "Client Id: Pnal (2)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_id.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_id.labels[value] or "Client Id: Unknown("..value..")"
end

-- Dissect: Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.client_id, range, value, display)

  return offset + length, value
end

-- Client Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id = {}

-- Size: Client Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size = 20

-- Display: Client Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Order Id: No Value"
  end

  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Common Symbol
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol = {}

-- Size: Common Symbol
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.size = 8

-- Display: Common Symbol
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Common Symbol: No Value"
  end

  return "Common Symbol: "..value
end

-- Dissect: Common Symbol
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.common_symbol, range, value, display)

  return offset + length, value
end

-- Comp Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.comp_id = {}

-- Size: Comp Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.comp_id.size = 25

-- Display: Comp Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.comp_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Comp Id: No Value"
  end

  return "Comp Id: "..value
end

-- Dissect: Comp Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.comp_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.comp_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.comp_id, range, value, display)

  return offset + length, value
end

-- Counterparty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.counterparty = {}

-- Size: Counterparty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.counterparty.size = 11

-- Display: Counterparty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.counterparty.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Counterparty: No Value"
  end

  return "Counterparty: "..value
end

-- Dissect: Counterparty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.counterparty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.counterparty.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.counterparty, range, value, display)

  return offset + length, value
end

-- Cross Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_id = {}

-- Size: Cross Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_id.size = 20

-- Display: Cross Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cross Id: No Value"
  end

  return "Cross Id: "..value
end

-- Dissect: Cross Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type = {}

-- Size: Cross Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.size = 1

-- Display: Cross Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.labels = {
  [6] = "Cross Type: Internal Btf (6)",
  [8] = "Cross Type: Committed Btf (8)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Display Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty = {}

-- Size: Display Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.size = 4

-- Display: Display Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Exec Instruction
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction = {}

-- Size: Exec Instruction
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.size = 1

-- Display: Exec Instruction
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.labels = {
  [0] = "Exec Instruction: Apply User Level Default (0)",
  [1] = "Exec Instruction: Turquoise Dark Uncross Only (1)",
  [2] = "Exec Instruction: Continuous Only (2)",
  [5] = "Exec Instruction: Continuous And Turquoise Dark Uncross (5)",
  [6] = "Exec Instruction: Turquoise Dark Uncross Then Continuous (6)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.labels[value] or "Exec Instruction: Unknown("..value..")"
end

-- Dissect: Exec Instruction
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.exec_instruction, range, value, display)

  return offset + length, value
end

-- Exec Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_type = {}

-- Size: Exec Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_type.size = 1

-- Display: Exec Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_type.labels = {
  ["0"] = "Exec Type: New (0)",
  ["4"] = "Exec Type: Cancelled (4)",
  ["5"] = "Exec Type: Replaced (5)",
  ["6"] = "Exec Type: Pending Cancel (6)",
  ["8"] = "Exec Type: Rejected (8)",
  ["C"] = "Exec Type: Expired (C)",
  ["D"] = "Exec Type: Restated (D)",
  ["F"] = "Exec Type: Trade (F)",
  ["H"] = "Exec Type: Trade Cancel (H)",
  ["L"] = "Exec Type: Triggered (L)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_type.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_type.labels[value] or "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Executed Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_price = {}

-- Size: Executed Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_price.size = 8

-- Display: Executed Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_price.display = function(value)
  return "Executed Price: "..value
end

-- Translate: Executed Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_price.translate(raw)
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.executed_price, range, value, display)

  return offset + length, value
end

-- Executed Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_qty = {}

-- Size: Executed Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_qty.size = 4

-- Display: Executed Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_qty.display = function(value)
  return "Executed Qty: "..value
end

-- Dissect: Executed Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.executed_qty, range, value, display)

  return offset + length, value
end

-- Executing Within Firm
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executing_within_firm = {}

-- Size: Executing Within Firm
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executing_within_firm.size = 4

-- Display: Executing Within Firm
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executing_within_firm.labels = {
  [3] = "Executing Within Firm: Client (3)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executing_within_firm.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executing_within_firm.labels[value] or "Executing Within Firm: Unknown("..value..")"
end

-- Dissect: Executing Within Firm
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executing_within_firm.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executing_within_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executing_within_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.executing_within_firm, range, value, display)

  return offset + length, value
end

-- Execution Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_id = {}

-- Size: Execution Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_id.size = 12

-- Display: Execution Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Execution Id: No Value"
  end

  return "Execution Id: "..value
end

-- Dissect: Execution Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Execution Report Ref Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_ref_id = {}

-- Size: Execution Report Ref Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_ref_id.size = 12

-- Display: Execution Report Ref Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_ref_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Execution Report Ref Id: No Value"
  end

  return "Execution Report Ref Id: "..value
end

-- Dissect: Execution Report Ref Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_ref_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.execution_report_ref_id, range, value, display)

  return offset + length, value
end

-- Expire Date Time
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.expire_date_time = {}

-- Size: Expire Date Time
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.expire_date_time.size = 4

-- Dissect: Expire Date Time
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.expire_date_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.expire_date_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.expire_date_time
  if lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.timestamp_format == 3 then field = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.expire_date_time_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.investment_decision_maker = {}

-- Size: Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.investment_decision_maker.size = 4

-- Display: Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.investment_decision_maker.labels = {
  [0] = "Investment Decision Maker: None (0)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.investment_decision_maker.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.investment_decision_maker.labels[value] or "Investment Decision Maker: Unknown("..value..")"
end

-- Dissect: Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.investment_decision_maker.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.investment_decision_maker.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.investment_decision_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.investment_decision_maker, range, value, display)

  return offset + length, value
end

-- Last Market
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.last_market = {}

-- Size: Last Market
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.last_market.size = 1

-- Display: Last Market
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.last_market.labels = {
  [1] = "Last Market: Trqx Turquoise Lit Order Book (1)",
  [2] = "Last Market: Trqm Turquoise Dark Order Book (2)",
  [3] = "Last Market: Trqa Turquoise Periodic Auctions Order Book (3)",
  [5] = "Last Market: Tqex Turquoise Lit Order Book Tghe (5)",
  [6] = "Last Market: Tqem Turquoise Dark Order Book Tghe (6)",
  [7] = "Last Market: Tqea Turquoise Periodic Auctions Order Book Tghe (7)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.last_market.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.last_market.labels[value] or "Last Market: Unknown("..value..")"
end

-- Dissect: Last Market
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.last_market.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.last_market.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.last_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.last_market, range, value, display)

  return offset + length, value
end

-- Leaves Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.leaves_qty = {}

-- Size: Leaves Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.leaves_qty.size = 4

-- Display: Leaves Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Limit Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price = {}

-- Size: Limit Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.size = 8

-- Display: Limit Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Translate: Limit Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Limit Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.translate(raw)
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Logout Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_reason = {}

-- Size: Logout Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_reason.size = 20

-- Display: Logout Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logout Reason: No Value"
  end

  return "Logout Reason: "..value
end

-- Dissect: Logout Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_reason.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_reject_reason.size = 4

-- Display: Mass Cancel Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_reject_reason.display = function(value)
  return "Mass Cancel Reject Reason: "..value
end

-- Dissect: Mass Cancel Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Response
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_response = {}

-- Size: Mass Cancel Response
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_response.size = 1

-- Display: Mass Cancel Response
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_response.labels = {
  [0] = "Mass Cancel Response: Rejected (0)",
  [7] = "Mass Cancel Response: Accepted (7)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_response.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_response.labels[value] or "Mass Cancel Response: Unknown("..value..")"
end

-- Dissect: Mass Cancel Response
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_response.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_response.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.mass_cancel_response, range, value, display)

  return offset + length, value
end

-- Mass Cancel Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_type = {}

-- Size: Mass Cancel Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_type.size = 1

-- Display: Mass Cancel Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_type.labels = {
  [3] = "Mass Cancel Type: All Firm Orders For An Instrument (3)",
  [4] = "Mass Cancel Type: All Firm Orders In A Segment (4)",
  [7] = "Mass Cancel Type: All Orders Submitted By The Comp Id (7)",
  [8] = "Mass Cancel Type: All Firm Orders (8)",
  [9] = "Mass Cancel Type: All Orders Submitted By The Comp Id For An Instrument (9)",
  [15] = "Mass Cancel Type: All Orders Submitted By The Comp Id For A Segment (15)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_type.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_type.labels[value] or "Mass Cancel Type: Unknown("..value..")"
end

-- Dissect: Mass Cancel Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.mass_cancel_type, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_length = {}

-- Size: Message Length
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_length.size = 2

-- Display: Message Length
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_type = {}

-- Size: Message Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_type.size = 1

-- Display: Message Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_type.labels = {
  ["A"] = "Message Type: Logon Message (A)",
  ["B"] = "Message Type: Logon Reply Message (B)",
  ["5"] = "Message Type: Logout Message (5)",
  ["0"] = "Message Type: Heartbeat Message (0)",
  ["3"] = "Message Type: Reject Message (3)",
  ["D"] = "Message Type: New Order Message (D)",
  ["G"] = "Message Type: Order Cancel Replace Request Message (G)",
  ["F"] = "Message Type: Order Cancel Request Message (F)",
  ["q"] = "Message Type: Order Mass Cancel Request Message (q)",
  ["8"] = "Message Type: Execution Report Message (8)",
  ["9"] = "Message Type: Order Cancel Reject Message (9)",
  ["r"] = "Message Type: Order Mass Cancel Report Message (r)",
  ["C"] = "Message Type: New Cross Btf Message (C)",
  ["H"] = "Message Type: Cross Btf Cancel Request Message (H)",
  ["j"] = "Message Type: Business Reject Message (j)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_type.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Version
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_version = {}

-- Size: Message Version
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_version.size = 1

-- Display: Message Version
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_version.display = function(value)
  return "Message Version: "..value
end

-- Dissect: Message Version
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_version.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_version.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.message_version, range, value, display)

  return offset + length, value
end

-- Min Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.min_qty = {}

-- Size: Min Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.min_qty.size = 4

-- Display: Min Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.minimum_quantity = {}

-- Size: Minimum Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.minimum_quantity.size = 4

-- Display: Minimum Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Mtf Common Symbol
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol = {}

-- Size: Mtf Common Symbol
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.size = 8

-- Display: Mtf Common Symbol
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mtf Common Symbol: No Value"
  end

  return "Mtf Common Symbol: "..value
end

-- Dissect: Mtf Common Symbol
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.mtf_common_symbol, range, value, display)

  return offset + length, value
end

-- Nanoseconds
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.nanoseconds = {}

-- Size: Nanoseconds
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.nanoseconds.size = 4

-- Display: Nanoseconds
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Password
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_password = {}

-- Size: New Password
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_password.size = 25

-- Display: New Password
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "New Password: No Value"
  end

  return "New Password: "..value
end

-- Dissect: New Password
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_password.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_password.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.new_password, range, value, display)

  return offset + length, value
end

-- Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id = {}

-- Size: Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.size = 12

-- Display: Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_qty = {}

-- Size: Order Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_qty.size = 4

-- Display: Order Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reject Code
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_reject_code = {}

-- Size: Order Reject Code
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_reject_code.size = 4

-- Display: Order Reject Code
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_reject_code.display = function(value)
  return "Order Reject Code: "..value
end

-- Dissect: Order Reject Code
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_reject_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_reject_code, range, value, display)

  return offset + length, value
end

-- Order Status
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_status = {}

-- Size: Order Status
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_status.size = 1

-- Display: Order Status
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_status.labels = {
  [0] = "Order Status: New (0)",
  [1] = "Order Status: Partially Filled (1)",
  [2] = "Order Status: Filled (2)",
  [4] = "Order Status: Cancelled (4)",
  [6] = "Order Status: Expired (6)",
  [8] = "Order Status: Rejected (8)",
  [13] = "Order Status: Pending Cancel (13)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_status.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_status.labels[value] or "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Sub Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_sub_type = {}

-- Size: Order Sub Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_sub_type.size = 1

-- Display: Order Sub Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_sub_type.labels = {
  [0] = "Order Sub Type: Order (0)",
  [1] = "Order Sub Type: Bi (1)",
  [3] = "Order Sub Type: Order Bdn (3)",
  [5] = "Order Sub Type: Pegged Order (5)",
  [51] = "Order Sub Type: Random (51)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_sub_type.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_sub_type.labels[value] or "Order Sub Type: Unknown("..value..")"
end

-- Dissect: Order Sub Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_sub_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_sub_type, range, value, display)

  return offset + length, value
end

-- Order Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type = {}

-- Size: Order Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.size = 1

-- Display: Order Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.labels = {
  [1] = "Order Type: Market (1)",
  [2] = "Order Type: Limit (2)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Client Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_client_order_id = {}

-- Size: Original Client Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_client_order_id.size = 20

-- Display: Original Client Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order Id: No Value"
  end

  return "Original Client Order Id: "..value
end

-- Dissect: Original Client Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_client_order_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.original_client_order_id, range, value, display)

  return offset + length, value
end

-- Original Cross Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_cross_id = {}

-- Size: Original Cross Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_cross_id.size = 20

-- Display: Original Cross Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_cross_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Cross Id: No Value"
  end

  return "Original Cross Id: "..value
end

-- Dissect: Original Cross Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_cross_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_cross_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.original_cross_id, range, value, display)

  return offset + length, value
end

-- Owner Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type = {}

-- Size: Owner Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.size = 1

-- Display: Owner Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.labels = {
  [0] = "Owner Type: Non Retail (0)",
  [1] = "Owner Type: Retail (1)",
  [2] = "Owner Type: Retail Lp (2)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.labels[value] or "Owner Type: Unknown("..value..")"
end

-- Dissect: Owner Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.owner_type, range, value, display)

  return offset + length, value
end

-- Passive Only Order
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order = {}

-- Size: Passive Only Order
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.size = 1

-- Display: Passive Only Order
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.labels = {
  [0] = "Passive Only Order: No Constraint (0)",
  [1] = "Passive Only Order: Accept Order If Setting New Bbo Or Joining Existing Bbo (1)",
  [2] = "Passive Only Order: Accept Order If Joining Existing Bbo Or Within One Visible Price Point (2)",
  [3] = "Passive Only Order: Accept Order If Joining Existing Bbo Or Within Two Visible Price Points (3)",
  [50] = "Passive Only Order: Bi Opt Out Of Matching With Cbi (50)",
  [99] = "Passive Only Order: Accept Order Only If Passive Upon Order Entry (99)",
  [100] = "Passive Only Order: Accept Order If Setting New Bbo (100)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.labels[value] or "Passive Only Order: Unknown("..value..")"
end

-- Dissect: Passive Only Order
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.passive_only_order, range, value, display)

  return offset + length, value
end

-- Password
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password = {}

-- Size: Password
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password.size = 25

-- Display: Password
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.password, range, value, display)

  return offset + length, value
end

-- Password Expiry Day Count
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password_expiry_day_count = {}

-- Size: Password Expiry Day Count
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password_expiry_day_count.size = 30

-- Display: Password Expiry Day Count
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password_expiry_day_count.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password Expiry Day Count: No Value"
  end

  return "Password Expiry Day Count: "..value
end

-- Dissect: Password Expiry Day Count
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password_expiry_day_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password_expiry_day_count.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password_expiry_day_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.password_expiry_day_count, range, value, display)

  return offset + length, value
end

-- Peg Price Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type = {}

-- Size: Peg Price Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.size = 1

-- Display: Peg Price Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.labels = {
  [0] = "Peg Price Type: Default Midpoint (0)",
  [1] = "Peg Price Type: Closing Price Clse Tghl Only (1)",
  [2] = "Peg Price Type: Midpoint (2)",
  [10] = "Peg Price Type: Best Bid (10)",
  [11] = "Peg Price Type: Best Offer (11)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.labels[value] or "Peg Price Type: Unknown("..value..")"
end

-- Dissect: Peg Price Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.peg_price_type, range, value, display)

  return offset + length, value
end

-- Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.price = {}

-- Size: Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.price.size = 8

-- Display: Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.price.translate(raw)
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.price, range, value, display)

  return offset + length, value
end

-- Public Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.public_order_id = {}

-- Size: Public Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.public_order_id.size = 12

-- Display: Public Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.public_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Public Order Id: No Value"
  end

  return "Public Order Id: "..value
end

-- Dissect: Public Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.public_order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.public_order_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.public_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.public_order_id, range, value, display)

  return offset + length, value
end

-- Reject Code
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code = {}

-- Size: Reject Code
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.size = 4

-- Display: Reject Code
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.display = function(value)
  return "Reject Code: "..value
end

-- Dissect: Reject Code
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_reason = {}

-- Size: Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_reason.size = 30

-- Display: Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reject Reason: No Value"
  end

  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_reason.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Rejected Message Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.rejected_message_type = {}

-- Size: Rejected Message Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.rejected_message_type.size = 1

-- Display: Rejected Message Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.rejected_message_type.display = function(value)
  return "Rejected Message Type: "..value
end

-- Dissect: Rejected Message Type
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.rejected_message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.rejected_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.rejected_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.rejected_message_type, range, value, display)

  return offset + length, value
end

-- Reputational Score
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reputational_score = {}

-- Size: Reputational Score
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reputational_score.size = 1

-- Display: Reputational Score
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reputational_score.display = function(value)
  return "Reputational Score: "..value
end

-- Dissect: Reputational Score
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reputational_score.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reputational_score.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reputational_score.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reputational_score, range, value, display)

  return offset + length, value
end

-- Reserved 1
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1 = {}

-- Size: Reserved 1
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.size = 1

-- Display: Reserved 1
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 10
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10 = {}

-- Size: Reserved 10
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.size = 10

-- Display: Reserved 10
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_10, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 21
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_21 = {}

-- Size: Reserved 21
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_21.size = 21

-- Display: Reserved 21
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_21.display = function(value)
  return "Reserved 21: "..value
end

-- Dissect: Reserved 21
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_21.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_21.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_21.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_21, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 3
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_3 = {}

-- Size: Reserved 3
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_3.size = 3

-- Display: Reserved 3
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_3, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4 = {}

-- Size: Reserved 4
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.size = 4

-- Display: Reserved 4
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 8
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8 = {}

-- Size: Reserved 8
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.size = 8

-- Display: Reserved 8
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 9
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_9 = {}

-- Size: Reserved 9
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_9.size = 9

-- Display: Reserved 9
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_9, range, range:raw(), display)

  return offset + length, value
end

-- Second Reserved 1
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_1 = {}

-- Size: Second Reserved 1
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_1.size = 1

-- Display: Second Reserved 1
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.second_reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Second Reserved 4
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4 = {}

-- Size: Second Reserved 4
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.size = 4

-- Display: Second Reserved 4
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.display = function(value)
  return "Second Reserved 4: "..value
end

-- Dissect: Second Reserved 4
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.second_reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Secondary Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.secondary_order_id = {}

-- Size: Secondary Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.secondary_order_id.size = 8

-- Display: Secondary Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Seconds
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.seconds = {}

-- Size: Seconds
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.seconds.size = 4

-- Dissect: Seconds
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.seconds.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.seconds
  if lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.timestamp_format == 3 then field = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Segment
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.segment = {}

-- Size: Segment
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.segment.size = 4

-- Display: Segment
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.segment.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Segment: No Value"
  end

  return "Segment: "..value
end

-- Dissect: Segment
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.segment.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.segment, range, value, display)

  return offset + length, value
end

-- Sell Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_client_id = {}

-- Size: Sell Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_client_id.size = 4

-- Display: Sell Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_client_id.labels = {
  [0] = "Sell Client Id: None (0)",
  [1] = "Sell Client Id: Aggr (1)",
  [2] = "Sell Client Id: Pnal (2)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_client_id.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_client_id.labels[value] or "Sell Client Id: Unknown("..value..")"
end

-- Dissect: Sell Client Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_client_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_client_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_client_id, range, value, display)

  return offset + length, value
end

-- Sell Executing Trader
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_executing_trader = {}

-- Size: Sell Executing Trader
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_executing_trader.size = 4

-- Display: Sell Executing Trader
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_executing_trader.labels = {
  [3] = "Sell Executing Trader: Client (3)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_executing_trader.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_executing_trader.labels[value] or "Sell Executing Trader: Unknown("..value..")"
end

-- Dissect: Sell Executing Trader
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_executing_trader, range, value, display)

  return offset + length, value
end

-- Sell Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_investment_decision_maker = {}

-- Size: Sell Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_investment_decision_maker.size = 4

-- Display: Sell Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_investment_decision_maker.labels = {
  [0] = "Sell Investment Decision Maker: None (0)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_investment_decision_maker.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_investment_decision_maker.labels[value] or "Sell Investment Decision Maker: Unknown("..value..")"
end

-- Dissect: Sell Investment Decision Maker
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_investment_decision_maker.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_investment_decision_maker.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_investment_decision_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_investment_decision_maker, range, value, display)

  return offset + length, value
end

-- Sell Side Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_cl_ord_id = {}

-- Size: Sell Side Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_cl_ord_id.size = 20

-- Display: Sell Side Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Side Cl Ord Id: No Value"
  end

  return "Sell Side Cl Ord Id: "..value
end

-- Dissect: Sell Side Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_cl_ord_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Sell Side Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_clearing_account = {}

-- Size: Sell Side Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_clearing_account.size = 1

-- Display: Sell Side Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_clearing_account.labels = {
  [1] = "Sell Side Clearing Account: Client (1)",
  [3] = "Sell Side Clearing Account: House (3)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_clearing_account.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_clearing_account.labels[value] or "Sell Side Clearing Account: Unknown("..value..")"
end

-- Dissect: Sell Side Clearing Account
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_clearing_account.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_clearing_account, range, value, display)

  return offset + length, value
end

-- Sell Side Firm Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_firm_id = {}

-- Size: Sell Side Firm Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_firm_id.size = 11

-- Display: Sell Side Firm Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Side Firm Id: No Value"
  end

  return "Sell Side Firm Id: "..value
end

-- Dissect: Sell Side Firm Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_firm_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_firm_id, range, value, display)

  return offset + length, value
end

-- Sell Side Order Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_capacity = {}

-- Size: Sell Side Order Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_capacity.size = 1

-- Display: Sell Side Order Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_capacity.labels = {
  [1] = "Sell Side Order Capacity: Matched Principal Mtch (1)",
  [2] = "Sell Side Order Capacity: Dealing On Own Account Deal (2)",
  [3] = "Sell Side Order Capacity: Any Other Trading Capacity Aotc (3)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_capacity.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_capacity.labels[value] or "Sell Side Order Capacity: Unknown("..value..")"
end

-- Dissect: Sell Side Order Capacity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_capacity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_order_capacity, range, value, display)

  return offset + length, value
end

-- Sell Side Order Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_quantity = {}

-- Size: Sell Side Order Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_quantity.size = 4

-- Display: Sell Side Order Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_quantity.display = function(value)
  return "Sell Side Order Quantity: "..value
end

-- Dissect: Sell Side Order Quantity
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_order_quantity, range, value, display)

  return offset + length, value
end

-- Sell Side Original Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_original_cl_ord_id = {}

-- Size: Sell Side Original Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_original_cl_ord_id.size = 20

-- Display: Sell Side Original Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_original_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Side Original Cl Ord Id: No Value"
  end

  return "Sell Side Original Cl Ord Id: "..value
end

-- Dissect: Sell Side Original Cl Ord Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_original_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_original_cl_ord_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_original_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_original_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Sell Side Party Role
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_party_role = {}

-- Size: Sell Side Party Role
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_party_role.size = 1

-- Display: Sell Side Party Role
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_party_role.labels = {
  [1] = "Sell Side Party Role: Executing Firm (1)",
  [17] = "Sell Side Party Role: Counterparty Firm (17)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_party_role.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_party_role.labels[value] or "Sell Side Party Role: Unknown("..value..")"
end

-- Dissect: Sell Side Party Role
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_party_role.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_party_role.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_side_party_role, range, value, display)

  return offset + length, value
end

-- Sequence No
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no = {}

-- Size: Sequence No
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.size = 4

-- Display: Sequence No
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.display = function(value)
  return "Sequence No: "..value
end

-- Dissect: Sequence No
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sequence_no, range, value, display)

  return offset + length, value
end

-- Side
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side = {}

-- Size: Side
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.size = 1

-- Display: Side
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.labels = {
  [1] = "Side: Buy (1)",
  [2] = "Side: Sell (2)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.start_of_message = {}

-- Size: Start Of Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.start_of_message.size = 1

-- Display: Start Of Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.start_of_message.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Target Book
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book = {}

-- Size: Target Book
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.size = 1

-- Display: Target Book
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.labels = {
  [0] = "Target Book: Turquoise Dark Order Book Trqm Or Tqem (0)",
  [1] = "Target Book: Turquoise Lit Order Book Trqx Or Tqex (1)",
  [3] = "Target Book: Turquoise Dark Lit Sweep Trqm And Trqx Or Tqem And Tqex (3)",
  [4] = "Target Book: Turquoise Periodic Auctions Order Book Trqa Or Tqea (4)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.labels[value] or "Target Book: Unknown("..value..")"
end

-- Dissect: Target Book
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.target_book, range, value, display)

  return offset + length, value
end

-- Tif
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif = {}

-- Size: Tif
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.size = 1

-- Display: Tif
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.labels = {
  [0] = "Tif: Day (0)",
  [3] = "Tif: Immediate Or Cancel Ioc (3)",
  [4] = "Tif: Fill Or Kill Fok (4)",
  [8] = "Tif: Good Till Time Gtt (8)",
  [9] = "Tif: Good For Auction Gfa (9)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.labels[value] or "Tif: Unknown("..value..")"
end

-- Dissect: Tif
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.tif, range, value, display)

  return offset + length, value
end

-- Trade Liquidity Indicator
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_liquidity_indicator = {}

-- Size: Trade Liquidity Indicator
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_liquidity_indicator.size = 1

-- Display: Trade Liquidity Indicator
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_liquidity_indicator.labels = {
  ["A"] = "Trade Liquidity Indicator: Added Liquidity (A)",
  ["R"] = "Trade Liquidity Indicator: Removed Liquidity (R)",
  ["C"] = "Trade Liquidity Indicator: Turquoise Dark Uncross Or Periodic Auctions Execution (C)",
  ["S"] = "Trade Liquidity Indicator: Turquoise Block Discovery Execution Turquoise Dark Uncross (S)",
  ["B"] = "Trade Liquidity Indicator: Btf Trade (B)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_liquidity_indicator.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_liquidity_indicator.labels[value] or "Trade Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Trade Liquidity Indicator
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.trade_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Trade Match Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_match_id = {}

-- Size: Trade Match Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_match_id.size = 8

-- Display: Trade Match Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_match_id.display = function(value)
  return "Trade Match Id: "..value
end

-- Dissect: Trade Match Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_match_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.trade_match_id, range, value, display)

  return offset + length, value
end

-- Trader Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trader_id = {}

-- Size: Trader Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trader_id.size = 11

-- Display: Trader Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trader_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader Id: No Value"
  end

  return "Trader Id: "..value
end

-- Dissect: Trader Id
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trader_id.size
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

  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Type Of Trade
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.type_of_trade = {}

-- Size: Type Of Trade
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.type_of_trade.size = 1

-- Display: Type Of Trade
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.type_of_trade.labels = {
  [0] = "Type Of Trade: Visible (0)",
  [1] = "Type Of Trade: Hidden (1)",
  [2] = "Type Of Trade: Not Specified (2)",
}

lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.type_of_trade.display = function(value)
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.type_of_trade.labels[value] or "Type Of Trade: Unknown("..value..")"
end

-- Dissect: Type Of Trade
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.type_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.type_of_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.type_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.type_of_trade, range, value, display)

  return offset + length, value
end

-- Waiver Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags = {}

-- Size: Waiver Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags.size = 1

-- Display: Waiver Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags.display = function(value)
  return "Waiver Flags: "..value
end

-- Dissect: Waiver Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags.display(value, buffer, offset, packet, parent)

  local item = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.waiver_flags, range, value, display)
  item:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.waiver_flags_rfpt, range, value)

  return offset + length, value
end

-- Waiver Flags 2
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags_2 = {}

-- Size: Waiver Flags 2
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags_2.size = 1

-- Display: Waiver Flags 2
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags_2.display = function(value)
  return "Waiver Flags 2: "..value
end

-- Dissect: Waiver Flags 2
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags_2.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags_2.display(value, buffer, offset, packet, parent)

  local item = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.waiver_flags_2, range, value, display)
  item:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.waiver_flags_2_pretrade_pric, range, value)
  item:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.waiver_flags_2_netw, range, value)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Turquoise NativeTradingGateway Ntgi 6.1.2
-----------------------------------------------------------------------

-- Transact Time
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time = {}

-- Size: Transact Time
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.seconds.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.nanoseconds.size

-- Display: Transact Time
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  local format = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
  return os.date(format, seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Transact Time
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local transact_time = UInt64.new(seconds) * 1000000000 + nanoseconds

  return index, transact_time
end

-- Dissect: Transact Time
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local seconds = buffer(offset, 4):le_uint()
    local nanoseconds = buffer(offset + 4, 4):le_uint()
    local length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.transact_time_utc
    if lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.timestamp_format == 2 then field = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.transact_time end
    parent = parent:add(field, buffer(offset, length), NSTime.new(seconds, nanoseconds))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.fields(buffer, offset, packet, parent)
  end
end

-- Business Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.business_reject_message = {}

-- Size: Business Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.business_reject_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.size

-- Display: Business Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.business_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.business_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: Int8
  index, app_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.dissect(buffer, index, packet, parent)

  -- Reserved 10: String
  if show.padding then
    index, reserved_10 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.size
  end

  return index
end

-- Dissect: Business Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.business_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.business_reject_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.business_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.business_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.business_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Btf Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_btf_cancel_request_message = {}

-- Size: Cross Btf Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_btf_cancel_request_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_cross_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_original_cl_ord_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_quantity.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_original_cl_ord_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_quantity.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size

-- Display: Cross Btf Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_btf_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Btf Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_btf_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: String
  index, cross_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_id.dissect(buffer, index, packet, parent)

  -- Original Cross Id: String
  index, original_cross_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: UInt8
  index, cross_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.dissect(buffer, index, packet, parent)

  -- Buy Side Original Cl Ord Id: String
  index, buy_side_original_cl_ord_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_original_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Buy Side Order Quantity: Int32
  index, buy_side_order_quantity = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_quantity.dissect(buffer, index, packet, parent)

  -- Reserved 4: String
  if show.padding then
    index, reserved_4 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.size
  end

  -- Sell Side Original Cl Ord Id: String
  index, sell_side_original_cl_ord_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_original_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Sell Side Order Quantity: Int32
  index, sell_side_order_quantity = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_quantity.dissect(buffer, index, packet, parent)

  -- Second Reserved 4: String
  if show.padding then
    index, second_reserved_4 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.size
  end

  -- Mtf Common Symbol: String
  index, mtf_common_symbol = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Btf Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_btf_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.cross_btf_cancel_request_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_btf_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_btf_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_btf_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Sell Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_party_role_qualifiers = {}

-- Size: Sell Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_party_role_qualifiers.size = 1

-- Display: Sell Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_party_role_qualifiers.display = function(range, value, packet, parent)
  local flags = {}

  -- Client Id Qualifier: 2 Bits
  flags[#flags + 1] = "Client Id Qualifier: "..bit.rshift(bit.band(value, 0x03), 0)
  -- Investor Information Qualifier: 2 Bits
  flags[#flags + 1] = "Investor Information Qualifier: "..bit.rshift(bit.band(value, 0x0C), 2)
  -- Executing Trader Qualifier: 2 Bits
  flags[#flags + 1] = "Executing Trader Qualifier: "..bit.rshift(bit.band(value, 0x30), 4)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Sell Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_party_role_qualifiers.bits = function(range, value, packet, parent)

  -- Client Id Qualifier: 2 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.client_id_qualifier, range, value)

  -- Investor Information Qualifier: 2 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.investor_information_qualifier, range, value)

  -- Executing Trader Qualifier: 2 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.executing_trader_qualifier, range, value)

  -- Reserved 67: 2 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_67, range, value)
end

-- Dissect: Sell Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_party_role_qualifiers.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_party_role_qualifiers.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_party_role_qualifiers.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_party_role_qualifiers, range, display)

  if show.structs then
    lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_party_role_qualifiers.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Sell Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_mi_fid_flags = {}

-- Size: Sell Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_mi_fid_flags.size = 1

-- Display: Sell Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_mi_fid_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Dea Flag flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Dea Flag"
  end
  -- Is Liquidity Provision flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Liquidity Provision"
  end
  -- Is Algo flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Algo"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Sell Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_mi_fid_flags.bits = function(range, value, packet, parent)

  -- Dea Flag: 1 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.dea_flag, range, value)

  -- Liquidity Provision: 1 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.liquidity_provision, range, value)

  -- Algo: 1 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.algo, range, value)

  -- Reserved 37: 5 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_37, range, value)
end

-- Dissect: Sell Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_mi_fid_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_mi_fid_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_mi_fid_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.sell_mi_fid_flags, range, display)

  if show.structs then
    lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_mi_fid_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Buy Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_party_role_qualifiers = {}

-- Size: Buy Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_party_role_qualifiers.size = 1

-- Display: Buy Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_party_role_qualifiers.display = function(range, value, packet, parent)
  local flags = {}

  -- Client Id Qualifier: 2 Bits
  flags[#flags + 1] = "Client Id Qualifier: "..bit.rshift(bit.band(value, 0x03), 0)
  -- Investor Information Qualifier: 2 Bits
  flags[#flags + 1] = "Investor Information Qualifier: "..bit.rshift(bit.band(value, 0x0C), 2)
  -- Executing Trader Qualifier: 2 Bits
  flags[#flags + 1] = "Executing Trader Qualifier: "..bit.rshift(bit.band(value, 0x30), 4)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Buy Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_party_role_qualifiers.bits = function(range, value, packet, parent)

  -- Client Id Qualifier: 2 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.client_id_qualifier, range, value)

  -- Investor Information Qualifier: 2 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.investor_information_qualifier, range, value)

  -- Executing Trader Qualifier: 2 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.executing_trader_qualifier, range, value)

  -- Reserved 67: 2 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_67, range, value)
end

-- Dissect: Buy Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_party_role_qualifiers.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_party_role_qualifiers.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_party_role_qualifiers.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_party_role_qualifiers, range, display)

  if show.structs then
    lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_party_role_qualifiers.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Buy Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_mi_fid_flags = {}

-- Size: Buy Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_mi_fid_flags.size = 1

-- Display: Buy Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_mi_fid_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Dea Flag flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Dea Flag"
  end
  -- Is Liquidity Provision flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Liquidity Provision"
  end
  -- Is Algo flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Algo"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Buy Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_mi_fid_flags.bits = function(range, value, packet, parent)

  -- Dea Flag: 1 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.dea_flag, range, value)

  -- Liquidity Provision: 1 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.liquidity_provision, range, value)

  -- Algo: 1 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.algo, range, value)

  -- Reserved 37: 5 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_37, range, value)
end

-- Dissect: Buy Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_mi_fid_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_mi_fid_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_mi_fid_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.buy_mi_fid_flags, range, display)

  if show.structs then
    lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_mi_fid_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Cross Btf Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_cross_btf_message = {}

-- Size: New Cross Btf Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_cross_btf_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_cl_ord_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_capacity.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_clearing_account.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_quantity.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_firm_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_party_role.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_mi_fid_flags.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_client_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_investment_decision_maker.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_executing_trader.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_party_role_qualifiers.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_cl_ord_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_capacity.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_clearing_account.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_quantity.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_firm_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_party_role.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_mi_fid_flags.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_client_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_investment_decision_maker.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_executing_trader.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_party_role_qualifiers.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.price.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.size

-- Display: New Cross Btf Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_cross_btf_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Cross Btf Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_cross_btf_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: String
  index, cross_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: UInt8
  index, cross_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_type.dissect(buffer, index, packet, parent)

  -- Buy Side Cl Ord Id: String
  index, buy_side_cl_ord_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Buy Side Order Capacity: UInt8
  index, buy_side_order_capacity = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_capacity.dissect(buffer, index, packet, parent)

  -- Buy Side Clearing Account: UInt8
  index, buy_side_clearing_account = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_clearing_account.dissect(buffer, index, packet, parent)

  -- Buy Side Order Quantity: Int32
  index, buy_side_order_quantity = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_order_quantity.dissect(buffer, index, packet, parent)

  -- Reserved 4: String
  if show.padding then
    index, reserved_4 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.size
  end

  -- Buy Side Firm Id: String
  index, buy_side_firm_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_firm_id.dissect(buffer, index, packet, parent)

  -- Buy Side Party Role: UInt8
  index, buy_side_party_role = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_side_party_role.dissect(buffer, index, packet, parent)

  -- Buy Mi Fid Flags: Struct of 4 fields
  index, buy_mi_fid_flags = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_mi_fid_flags.dissect(buffer, index, packet, parent)

  -- Buy Client Id: UInt32
  index, buy_client_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_client_id.dissect(buffer, index, packet, parent)

  -- Buy Investment Decision Maker: UInt32
  index, buy_investment_decision_maker = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_investment_decision_maker.dissect(buffer, index, packet, parent)

  -- Buy Executing Trader: UInt32
  index, buy_executing_trader = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_executing_trader.dissect(buffer, index, packet, parent)

  -- Buy Party Role Qualifiers: Struct of 4 fields
  index, buy_party_role_qualifiers = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.buy_party_role_qualifiers.dissect(buffer, index, packet, parent)

  -- Sell Side Cl Ord Id: String
  index, sell_side_cl_ord_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Sell Side Order Capacity: UInt8
  index, sell_side_order_capacity = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_capacity.dissect(buffer, index, packet, parent)

  -- Sell Side Clearing Account: UInt8
  index, sell_side_clearing_account = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_clearing_account.dissect(buffer, index, packet, parent)

  -- Sell Side Order Quantity: Int32
  index, sell_side_order_quantity = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_order_quantity.dissect(buffer, index, packet, parent)

  -- Second Reserved 4: String
  if show.padding then
    index, second_reserved_4 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_4.size
  end

  -- Sell Side Firm Id: String
  index, sell_side_firm_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_firm_id.dissect(buffer, index, packet, parent)

  -- Sell Side Party Role: UInt8
  index, sell_side_party_role = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_side_party_role.dissect(buffer, index, packet, parent)

  -- Sell Mi Fid Flags: Struct of 4 fields
  index, sell_mi_fid_flags = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_mi_fid_flags.dissect(buffer, index, packet, parent)

  -- Sell Client Id: UInt32
  index, sell_client_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_client_id.dissect(buffer, index, packet, parent)

  -- Sell Investment Decision Maker: UInt32
  index, sell_investment_decision_maker = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_investment_decision_maker.dissect(buffer, index, packet, parent)

  -- Sell Executing Trader: UInt32
  index, sell_executing_trader = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_executing_trader.dissect(buffer, index, packet, parent)

  -- Sell Party Role Qualifiers: Struct of 4 fields
  index, sell_party_role_qualifiers = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sell_party_role_qualifiers.dissect(buffer, index, packet, parent)

  -- Mtf Common Symbol: String
  index, mtf_common_symbol = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.price.dissect(buffer, index, packet, parent)

  -- Order Type: UInt8
  index, order_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.dissect(buffer, index, packet, parent)

  -- Tif: UInt8
  index, tif = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Cross Btf Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_cross_btf_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.new_cross_btf_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_cross_btf_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_cross_btf_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_cross_btf_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Report Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_report_message = {}

-- Size: Order Mass Cancel Report Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_report_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_response.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_reject_reason.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.size

-- Display: Order Mass Cancel Report Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Report Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: Int8
  index, app_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Response: Int8
  index, mass_cancel_response = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_response.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: Int32
  index, mass_cancel_reject_reason = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Reserved 4: String
  if show.padding then
    index, reserved_4 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_4.size
  end

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.dissect(buffer, index, packet, parent)

  -- Reserved 10: String
  if show.padding then
    index, reserved_10 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.size
  end

  return index
end

-- Dissect: Order Mass Cancel Report Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_mass_cancel_report_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_reject_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cancel_reject_reason.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.size

-- Display: Order Cancel Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: Int8
  index, app_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Int32
  index, cancel_reject_reason = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.dissect(buffer, index, packet, parent)

  -- Reserved 10: String
  if show.padding then
    index, reserved_10 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.size
  end

  return index
end

-- Dissect: Order Cancel Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_message = {}

-- Size: Execution Report Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_ref_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_status.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_reject_code.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_price.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_qty.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.leaves_qty.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.secondary_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.counterparty.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_liquidity_indicator.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_match_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.type_of_trade.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.public_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.minimum_quantity.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reputational_score.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.last_market.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags_2.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_21.size

-- Display: Execution Report Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: Int8
  index, app_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Execution Id: String
  index, execution_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.dissect(buffer, index, packet, parent)

  -- Exec Type: Alpha
  index, exec_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_type.dissect(buffer, index, packet, parent)

  -- Execution Report Ref Id: String
  index, execution_report_ref_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_ref_id.dissect(buffer, index, packet, parent)

  -- Order Status: Int8
  index, order_status = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_status.dissect(buffer, index, packet, parent)

  -- Order Reject Code: Int32
  index, order_reject_code = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_reject_code.dissect(buffer, index, packet, parent)

  -- Executed Price: Price
  index, executed_price = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_price.dissect(buffer, index, packet, parent)

  -- Executed Qty: Int32
  index, executed_qty = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executed_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Int32
  index, leaves_qty = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.leaves_qty.dissect(buffer, index, packet, parent)

  -- Waiver Flags: UInt8
  index, waiver_flags = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags.dissect(buffer, index, packet, parent)

  -- Display Qty: Int32
  index, display_qty = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.dissect(buffer, index, packet, parent)

  -- Common Symbol: String
  index, common_symbol = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.dissect(buffer, index, packet, parent)

  -- Side: Int8
  index, side = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: UInt64
  index, secondary_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Counterparty: String
  index, counterparty = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.counterparty.dissect(buffer, index, packet, parent)

  -- Trade Liquidity Indicator: Alpha
  index, trade_liquidity_indicator = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Trade Match Id: UInt64
  index, trade_match_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trade_match_id.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.transact_time.dissect(buffer, index, packet, parent)

  -- Target Book: UInt8
  index, target_book = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.dissect(buffer, index, packet, parent)

  -- Type Of Trade: Int8
  index, type_of_trade = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.type_of_trade.dissect(buffer, index, packet, parent)

  -- Capacity: Int8
  index, capacity = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.dissect(buffer, index, packet, parent)

  -- Reserved 1: Int8
  if show.padding then
    index, reserved_1 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.size
  end

  -- Public Order Id: String
  index, public_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.public_order_id.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Int32
  index, minimum_quantity = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Reputational Score: Int8
  index, reputational_score = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reputational_score.dissect(buffer, index, packet, parent)

  -- Last Market: UInt8
  index, last_market = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.last_market.dissect(buffer, index, packet, parent)

  -- Peg Price Type: UInt8
  index, peg_price_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.dissect(buffer, index, packet, parent)

  -- Owner Type: UInt8
  index, owner_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.dissect(buffer, index, packet, parent)

  -- Waiver Flags 2: UInt8
  index, waiver_flags_2 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.waiver_flags_2.dissect(buffer, index, packet, parent)

  -- Reserved 21: String
  if show.padding then
    index, reserved_21 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_21.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_21.size
  end

  return index
end

-- Dissect: Execution Report Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.execution_report_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_request_message = {}

-- Size: Order Mass Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_request_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.segment.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_9.size

-- Display: Order Mass Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Type: Int8
  index, mass_cancel_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mass_cancel_type.dissect(buffer, index, packet, parent)

  -- Common Symbol: String
  index, common_symbol = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.dissect(buffer, index, packet, parent)

  -- Segment: String
  index, segment = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.segment.dissect(buffer, index, packet, parent)

  -- Reserved 1: Int8
  if show.padding then
    index, reserved_1 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.size
  end

  -- Target Book: UInt8
  index, target_book = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.dissect(buffer, index, packet, parent)

  -- Reserved 9: String
  if show.padding then
    index, reserved_9 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_9.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_9.size
  end

  return index
end

-- Dissect: Order Mass Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_mass_cancel_request_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_request_message = {}

-- Size: Order Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_request_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_client_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.size

-- Display: Order Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.dissect(buffer, index, packet, parent)

  -- Common Symbol: String
  index, common_symbol = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.dissect(buffer, index, packet, parent)

  -- Side: Int8
  index, side = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.dissect(buffer, index, packet, parent)

  -- Target Book: UInt8
  index, target_book = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.dissect(buffer, index, packet, parent)

  -- Reserved 10: String
  if show.padding then
    index, reserved_10 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_10.size
  end

  return index
end

-- Dissect: Order Cancel Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_cancel_request_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_replace_request_message = {}

-- Size: Order Cancel Replace Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_replace_request_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_client_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.expire_date_time.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_qty.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.account.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.min_qty.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_3.size

-- Display: Order Cancel Replace Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_id.dissect(buffer, index, packet, parent)

  -- Common Symbol: String
  index, common_symbol = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.common_symbol.dissect(buffer, index, packet, parent)

  -- Expire Date Time: UInt32
  index, expire_date_time = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.expire_date_time.dissect(buffer, index, packet, parent)

  -- Order Qty: Int32
  index, order_qty = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: Int32
  index, display_qty = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.dissect(buffer, index, packet, parent)

  -- Limit Price: Price
  index, limit_price = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.account.dissect(buffer, index, packet, parent)

  -- Reserved 1: Int8
  if show.padding then
    index, reserved_1 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.size
  end

  -- Side: Int8
  index, side = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  if show.padding then
    index, reserved_8 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.size
  end

  -- Target Book: UInt8
  index, target_book = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.dissect(buffer, index, packet, parent)

  -- Exec Instruction: Int8
  index, exec_instruction = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.dissect(buffer, index, packet, parent)

  -- Min Qty: Int32
  index, min_qty = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.min_qty.dissect(buffer, index, packet, parent)

  -- Passive Only Order: Int8
  index, passive_only_order = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.dissect(buffer, index, packet, parent)

  -- Reserved 3: String
  if show.padding then
    index, reserved_3 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_3.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_3.size
  end

  return index
end

-- Dissect: Order Cancel Replace Request Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.party_role_qualifiers = {}

-- Size: Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.party_role_qualifiers.size = 1

-- Display: Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.party_role_qualifiers.display = function(range, value, packet, parent)
  local flags = {}

  -- Client Id Qualifier: 2 Bits
  flags[#flags + 1] = "Client Id Qualifier: "..bit.rshift(bit.band(value, 0x03), 0)
  -- Investor Information Qualifier: 2 Bits
  flags[#flags + 1] = "Investor Information Qualifier: "..bit.rshift(bit.band(value, 0x0C), 2)
  -- Executing Trader Qualifier: 2 Bits
  flags[#flags + 1] = "Executing Trader Qualifier: "..bit.rshift(bit.band(value, 0x30), 4)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.party_role_qualifiers.bits = function(range, value, packet, parent)

  -- Client Id Qualifier: 2 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.client_id_qualifier, range, value)

  -- Investor Information Qualifier: 2 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.investor_information_qualifier, range, value)

  -- Executing Trader Qualifier: 2 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.executing_trader_qualifier, range, value)

  -- Reserved 67: 2 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_67, range, value)
end

-- Dissect: Party Role Qualifiers
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.party_role_qualifiers.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.party_role_qualifiers.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.party_role_qualifiers.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.party_role_qualifiers, range, display)

  if show.structs then
    lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.party_role_qualifiers.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mi_fid_flags = {}

-- Size: Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mi_fid_flags.size = 1

-- Display: Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mi_fid_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Dea Flag flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Dea Flag"
  end
  -- Is Liquidity Provision flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Liquidity Provision"
  end
  -- Is Algo flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Algo"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mi_fid_flags.bits = function(range, value, packet, parent)

  -- Dea Flag: 1 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.dea_flag, range, value)

  -- Liquidity Provision: 1 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.liquidity_provision, range, value)

  -- Algo: 1 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.algo, range, value)

  -- Reserved 37: 5 Bit
  parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reserved_37, range, value)
end

-- Dissect: Mi Fid Flags
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mi_fid_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mi_fid_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mi_fid_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.mi_fid_flags, range, display)

  if show.structs then
    lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mi_fid_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_order_message = {}

-- Size: New Order Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_order_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trader_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.account.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.clearing_account.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.expire_date_time.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_qty.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.auto_cancel.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_sub_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.minimum_quantity.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_1.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cl_ord_link_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.investment_decision_maker.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executing_within_firm.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mi_fid_flags.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.party_role_qualifiers.size

-- Display: New Order Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Trader Id: String
  index, trader_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.trader_id.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.account.dissect(buffer, index, packet, parent)

  -- Clearing Account: UInt8
  index, clearing_account = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.clearing_account.dissect(buffer, index, packet, parent)

  -- Mtf Common Symbol: String
  index, mtf_common_symbol = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mtf_common_symbol.dissect(buffer, index, packet, parent)

  -- Order Type: UInt8
  index, order_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_type.dissect(buffer, index, packet, parent)

  -- Tif: UInt8
  index, tif = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.tif.dissect(buffer, index, packet, parent)

  -- Expire Date Time: UInt32
  index, expire_date_time = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.expire_date_time.dissect(buffer, index, packet, parent)

  -- Side: Int8
  index, side = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Int32
  index, order_qty = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: Int32
  index, display_qty = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.display_qty.dissect(buffer, index, packet, parent)

  -- Limit Price: Price
  index, limit_price = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.limit_price.dissect(buffer, index, packet, parent)

  -- Capacity: Int8
  index, capacity = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.capacity.dissect(buffer, index, packet, parent)

  -- Auto Cancel: Int8
  index, auto_cancel = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.auto_cancel.dissect(buffer, index, packet, parent)

  -- Order Sub Type: Int8
  index, order_sub_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_sub_type.dissect(buffer, index, packet, parent)

  -- Owner Type: UInt8
  index, owner_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.owner_type.dissect(buffer, index, packet, parent)

  -- Reserved 8: Price
  if show.padding then
    index, reserved_8 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_8.size
  end

  -- Target Book: UInt8
  index, target_book = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.target_book.dissect(buffer, index, packet, parent)

  -- Exec Instruction: Int8
  index, exec_instruction = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.exec_instruction.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Int32
  index, minimum_quantity = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Reserved 1: Int8
  if show.padding then
    index, reserved_1 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reserved_1.size
  end

  -- Second Reserved 1: Int8
  if show.padding then
    index, second_reserved_1 = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.second_reserved_1.size
  end

  -- Peg Price Type: UInt8
  index, peg_price_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.peg_price_type.dissect(buffer, index, packet, parent)

  -- Passive Only Order: Int8
  index, passive_only_order = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.passive_only_order.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: String
  index, cl_ord_link_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Client Id: UInt32
  index, client_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_id.dissect(buffer, index, packet, parent)

  -- Investment Decision Maker: UInt32
  index, investment_decision_maker = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.investment_decision_maker.dissect(buffer, index, packet, parent)

  -- Executing Within Firm: UInt32
  index, executing_within_firm = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.executing_within_firm.dissect(buffer, index, packet, parent)

  -- Mi Fid Flags: Struct of 4 fields
  index, mi_fid_flags = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.mi_fid_flags.dissect(buffer, index, packet, parent)

  -- Party Role Qualifiers: Struct of 4 fields
  index, party_role_qualifiers = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.party_role_qualifiers.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.new_order_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_message = {}

-- Size: Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_reason.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.rejected_message_type.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.size

-- Display: Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: Int32
  index, reject_code = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.dissect(buffer, index, packet, parent)

  -- Reject Reason: String
  index, reject_reason = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_reason.dissect(buffer, index, packet, parent)

  -- Rejected Message Type: Alpha
  index, rejected_message_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.rejected_message_type.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.reject_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.heartbeat_message = {}

-- Display: Heartbeat Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_message = {}

-- Size: Logout Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_reason.size

-- Display: Logout Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: String
  index, logout_reason = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.logout_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Reply Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_reply_message = {}

-- Size: Logon Reply Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_reply_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password_expiry_day_count.size

-- Display: Logon Reply Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Reply Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: Int32
  index, reject_code = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_code.dissect(buffer, index, packet, parent)

  -- Password Expiry Day Count: String
  index, password_expiry_day_count = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password_expiry_day_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Reply Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.logon_reply_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_message = {}

-- Size: Logon Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_message.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.comp_id.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_password.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_version.size

-- Display: Logon Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Comp Id: String
  index, comp_id = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.comp_id.dissect(buffer, index, packet, parent)

  -- Password: String
  index, password = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.password.dissect(buffer, index, packet, parent)

  -- New Password: String
  index, new_password = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_password.dissect(buffer, index, packet, parent)

  -- Message Version: Int8
  index, message_version = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.logon_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.payload = {}

-- Dispatch: Payload
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.payload.dispatch = {
  ["A"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_message.dissect,
  ["B"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logon_reply_message.dissect,
  ["5"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.logout_message.dissect,
  ["0"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.heartbeat_message.dissect,
  ["3"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.reject_message.dissect,
  ["D"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_order_message.dissect,
  ["G"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_replace_request_message.dissect,
  ["F"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_request_message.dissect,
  ["q"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_request_message.dissect,
  ["8"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.execution_report_message.dissect,
  ["9"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_cancel_reject_message.dissect,
  ["r"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.order_mass_cancel_report_message.dissect,
  ["C"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.new_cross_btf_message.dissect,
  ["H"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.cross_btf_cancel_request_message.dissect,
  ["j"] = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.business_reject_message.dissect,
}

-- Dissect: Payload
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header = {}

-- Size: Message Header
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header.size =
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.start_of_message.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_length.size + 
  lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_type.size

-- Display: Message Header
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: Int8
  index, start_of_message = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: Int16
  index, message_length = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: Alpha
  index, message_type = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.message_header, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message = {}

-- Display: Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 15 branches
  index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.fields.message, buffer(offset, 0))
    local decoded, failure = pcall(lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message.fields, bounded, offset, packet, parent, size_of_message)
    if not decoded then
      undecoded(failure, parent, lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end
    parent:set_len(size_of_message)
    local display = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message.fields, bounded, offset, packet, parent, size_of_message)
    if not decoded then
      undecoded(failure, parent, lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 1, 2):le_int() + 3

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.packet = {}

-- Verify required size of Tcp packet
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message_header.size
end

-- Dissect Packet
lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_message):tvb()
      index = lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.message.dissect(frame, index, packet, parent, size_of_message)
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
function omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.init()
end

-- Dissector for Lseg Turquoise NativeTradingGateway Ntgi 6.1.2
function omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2, buffer(), omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.description, "("..buffer:len().." Bytes)")
  return lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Turquoise NativeTradingGateway Ntgi 6.1.2 (Tcp)
local function omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2
  omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Turquoise NativeTradingGateway Ntgi 6.1.2
omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2:register_heuristic("tcp", omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2_tcp_heuristic)

-- Register Lseg Turquoise NativeTradingGateway Ntgi 6.1.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lseg_turquoise_nativetradinggateway_ntgi_v6_1_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 6.1.2
--   Date: Wednesday, October 7, 2026
--   Specification: tq301-trading-gateway-native-issue-6-1-2.pdf
--
-- Script:
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
--   https://patents.google.com/patent/US12101388B2/en
--   https://patents.google.com/patent/US20240419416A1/en
--   https://patents.google.com/patent/US20260368281A1/en
--
-----------------------------------------------------------------------
