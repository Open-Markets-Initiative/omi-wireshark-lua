-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jse Itac BasicNativeTrading Ntgi 4.05 Protocol
local omi_jse_itac_basicnativetrading_ntgi_v4_05 = Proto("Omi.Jse.Itac.BasicNativeTrading.Ntgi.v4.05", "Jse Itac BasicNativeTrading Ntgi 4.05")

-- Protocol table
local jse_itac_basicnativetrading_ntgi_v4_05 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jse Itac BasicNativeTrading Ntgi 4.05 Fields
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.account = ProtoField.new("Account", "jse.itac.basicnativetrading.ntgi.v4.05.account", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "jse.itac.basicnativetrading.ntgi.v4.05.aggressorindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.buy_side_account = ProtoField.new("Buy Side Account", "jse.itac.basicnativetrading.ntgi.v4.05.buysideaccount", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.buy_side_capacity = ProtoField.new("Buy Side Capacity", "jse.itac.basicnativetrading.ntgi.v4.05.buysidecapacity", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.buy_side_client_order_id = ProtoField.new("Buy Side Client Order Id", "jse.itac.basicnativetrading.ntgi.v4.05.buysideclientorderid", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.buy_side_trader_mnemonic = ProtoField.new("Buy Side Trader Mnemonic", "jse.itac.basicnativetrading.ntgi.v4.05.buysidetradermnemonic", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.cancel_on_disconnect = ProtoField.new("Cancel On Disconnect", "jse.itac.basicnativetrading.ntgi.v4.05.cancelondisconnect", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.capacity = ProtoField.new("Capacity", "jse.itac.basicnativetrading.ntgi.v4.05.capacity", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.client_order_id = ProtoField.new("Client Order Id", "jse.itac.basicnativetrading.ntgi.v4.05.clientorderid", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.comp_id = ProtoField.new("Comp Id", "jse.itac.basicnativetrading.ntgi.v4.05.compid", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.cross_id = ProtoField.new("Cross Id", "jse.itac.basicnativetrading.ntgi.v4.05.crossid", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.cross_type = ProtoField.new("Cross Type", "jse.itac.basicnativetrading.ntgi.v4.05.crosstype", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.display_quantity = ProtoField.new("Display Quantity", "jse.itac.basicnativetrading.ntgi.v4.05.displayquantity", ftypes.INT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.executed_price = ProtoField.new("Executed Price", "jse.itac.basicnativetrading.ntgi.v4.05.executedprice", ftypes.DOUBLE)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.executed_quantity = ProtoField.new("Executed Quantity", "jse.itac.basicnativetrading.ntgi.v4.05.executedquantity", ftypes.INT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.execution_id = ProtoField.new("Execution Id", "jse.itac.basicnativetrading.ntgi.v4.05.executionid", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.execution_instruction = ProtoField.new("Execution Instruction", "jse.itac.basicnativetrading.ntgi.v4.05.executioninstruction", ftypes.INT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.execution_type = ProtoField.new("Execution Type", "jse.itac.basicnativetrading.ntgi.v4.05.executiontype", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.expire_time = ProtoField.new("Expire Time", "jse.itac.basicnativetrading.ntgi.v4.05.expiretime", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.firm_list = ProtoField.new("Firm List", "jse.itac.basicnativetrading.ntgi.v4.05.firmlist", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.headline = ProtoField.new("Headline", "jse.itac.basicnativetrading.ntgi.v4.05.headline", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.indicator_flags = ProtoField.new("Indicator Flags", "jse.itac.basicnativetrading.ntgi.v4.05.indicatorflags", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.instruments = ProtoField.new("Instruments", "jse.itac.basicnativetrading.ntgi.v4.05.instruments", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.is_market_ops_request = ProtoField.new("Is Market Ops Request", "jse.itac.basicnativetrading.ntgi.v4.05.ismarketopsrequest", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.leaves_quantity = ProtoField.new("Leaves Quantity", "jse.itac.basicnativetrading.ntgi.v4.05.leavesquantity", ftypes.INT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.limit_price = ProtoField.new("Limit Price", "jse.itac.basicnativetrading.ntgi.v4.05.limitprice", ftypes.DOUBLE)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "jse.itac.basicnativetrading.ntgi.v4.05.liquidityindicator", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.mass_cancel_request_type = ProtoField.new("Mass Cancel Request Type", "jse.itac.basicnativetrading.ntgi.v4.05.masscancelrequesttype", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.mass_cancel_status = ProtoField.new("Mass Cancel Status", "jse.itac.basicnativetrading.ntgi.v4.05.masscancelstatus", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.message_length = ProtoField.new("Message Length", "jse.itac.basicnativetrading.ntgi.v4.05.messagelength", ftypes.UINT16)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.message_type = ProtoField.new("Message Type", "jse.itac.basicnativetrading.ntgi.v4.05.messagetype", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "jse.itac.basicnativetrading.ntgi.v4.05.minimumquantity", ftypes.INT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.missed_message_status = ProtoField.new("Missed Message Status", "jse.itac.basicnativetrading.ntgi.v4.05.missedmessagestatus", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.new_password = ProtoField.new("New Password", "jse.itac.basicnativetrading.ntgi.v4.05.newpassword", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_book = ProtoField.new("Order Book", "jse.itac.basicnativetrading.ntgi.v4.05.orderbook", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_id_alpha_12 = ProtoField.new("Order Id Alpha 12", "jse.itac.basicnativetrading.ntgi.v4.05.orderidalpha12", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_id_string_12 = ProtoField.new("Order Id String 12", "jse.itac.basicnativetrading.ntgi.v4.05.orderidstring12", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_quantity = ProtoField.new("Order Quantity", "jse.itac.basicnativetrading.ntgi.v4.05.orderquantity", ftypes.INT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_status = ProtoField.new("Order Status", "jse.itac.basicnativetrading.ntgi.v4.05.orderstatus", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_sub_type = ProtoField.new("Order Sub Type", "jse.itac.basicnativetrading.ntgi.v4.05.ordersubtype", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_type = ProtoField.new("Order Type", "jse.itac.basicnativetrading.ntgi.v4.05.ordertype", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.orig_client_order_id = ProtoField.new("Orig Client Order Id", "jse.itac.basicnativetrading.ntgi.v4.05.origclientorderid", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.orig_time = ProtoField.new("Orig Time", "jse.itac.basicnativetrading.ntgi.v4.05.origtime", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.original_client_order_id = ProtoField.new("Original Client Order Id", "jse.itac.basicnativetrading.ntgi.v4.05.originalclientorderid", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.partition_id = ProtoField.new("Partition Id", "jse.itac.basicnativetrading.ntgi.v4.05.partitionid", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.password = ProtoField.new("Password", "jse.itac.basicnativetrading.ntgi.v4.05.password", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.password_expiry = ProtoField.new("Password Expiry", "jse.itac.basicnativetrading.ntgi.v4.05.passwordexpiry", ftypes.INT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.protocol_version = ProtoField.new("Protocol Version", "jse.itac.basicnativetrading.ntgi.v4.05.protocolversion", ftypes.INT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.public_order_id = ProtoField.new("Public Order Id", "jse.itac.basicnativetrading.ntgi.v4.05.publicorderid", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.reason = ProtoField.new("Reason", "jse.itac.basicnativetrading.ntgi.v4.05.reason", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.reject_code = ProtoField.new("Reject Code", "jse.itac.basicnativetrading.ntgi.v4.05.rejectcode", ftypes.INT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.reject_reason = ProtoField.new("Reject Reason", "jse.itac.basicnativetrading.ntgi.v4.05.rejectreason", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.reserved_28 = ProtoField.new("Reserved 28", "jse.itac.basicnativetrading.ntgi.v4.05.reserved28", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.security_id = ProtoField.new("Security Id", "jse.itac.basicnativetrading.ntgi.v4.05.securityid", ftypes.INT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.segment = ProtoField.new("Segment", "jse.itac.basicnativetrading.ntgi.v4.05.segment", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.self_trade_prevention_key = ProtoField.new("Self Trade Prevention Key", "jse.itac.basicnativetrading.ntgi.v4.05.selftradepreventionkey", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.sell_side_account = ProtoField.new("Sell Side Account", "jse.itac.basicnativetrading.ntgi.v4.05.sellsideaccount", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.sell_side_capacity = ProtoField.new("Sell Side Capacity", "jse.itac.basicnativetrading.ntgi.v4.05.sellsidecapacity", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.sell_side_client_order_id = ProtoField.new("Sell Side Client Order Id", "jse.itac.basicnativetrading.ntgi.v4.05.sellsideclientorderid", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.sell_side_trader_mnemonic = ProtoField.new("Sell Side Trader Mnemonic", "jse.itac.basicnativetrading.ntgi.v4.05.sellsidetradermnemonic", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.sequence_number = ProtoField.new("Sequence Number", "jse.itac.basicnativetrading.ntgi.v4.05.sequencenumber", ftypes.INT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.side = ProtoField.new("Side", "jse.itac.basicnativetrading.ntgi.v4.05.side", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.start_of_message = ProtoField.new("Start Of Message", "jse.itac.basicnativetrading.ntgi.v4.05.startofmessage", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.stop_price = ProtoField.new("Stop Price", "jse.itac.basicnativetrading.ntgi.v4.05.stopprice", ftypes.DOUBLE)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.system_status = ProtoField.new("System Status", "jse.itac.basicnativetrading.ntgi.v4.05.systemstatus", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.text = ProtoField.new("Text", "jse.itac.basicnativetrading.ntgi.v4.05.text", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.time_in_force = ProtoField.new("Time In Force", "jse.itac.basicnativetrading.ntgi.v4.05.timeinforce", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.trader_mnemonic = ProtoField.new("Trader Mnemonic", "jse.itac.basicnativetrading.ntgi.v4.05.tradermnemonic", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transact_time = ProtoField.new("Transact Time", "jse.itac.basicnativetrading.ntgi.v4.05.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transact_time_utc = ProtoField.new("Transact Time", "jse.itac.basicnativetrading.ntgi.v4.05.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transact_time_nanoseconds = ProtoField.new("Transact Time Nanoseconds", "jse.itac.basicnativetrading.ntgi.v4.05.transacttimenanoseconds", ftypes.UINT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transact_time_seconds = ProtoField.new("Transact Time Seconds", "jse.itac.basicnativetrading.ntgi.v4.05.transacttimeseconds", ftypes.UINT32)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transmission_status = ProtoField.new("Transmission Status", "jse.itac.basicnativetrading.ntgi.v4.05.transmissionstatus", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.type_of_trade = ProtoField.new("Type Of Trade", "jse.itac.basicnativetrading.ntgi.v4.05.typeoftrade", ftypes.UINT8)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.underlyings = ProtoField.new("Underlyings", "jse.itac.basicnativetrading.ntgi.v4.05.underlyings", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.urgency = ProtoField.new("Urgency", "jse.itac.basicnativetrading.ntgi.v4.05.urgency", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.user_list = ProtoField.new("User List", "jse.itac.basicnativetrading.ntgi.v4.05.userlist", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.working_indicator = ProtoField.new("Working Indicator", "jse.itac.basicnativetrading.ntgi.v4.05.workingindicator", ftypes.UINT8)

-- Jse Itac BasicNativeTrading Ntgi 4.05 Framing
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.message = ProtoField.new("Message", "jse.itac.basicnativetrading.ntgi.v4.05.message", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.message_header = ProtoField.new("Message Header", "jse.itac.basicnativetrading.ntgi.v4.05.messageheader", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.packet = ProtoField.new("Packet", "jse.itac.basicnativetrading.ntgi.v4.05.packet", ftypes.STRING)

-- Jse Itac BasicNativeTrading 4.05 Application Messages
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.business_reject_message = ProtoField.new("Business Reject Message", "jse.itac.basicnativetrading.ntgi.v4.05.businessrejectmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.execution_report_message = ProtoField.new("Execution Report Message", "jse.itac.basicnativetrading.ntgi.v4.05.executionreportmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "jse.itac.basicnativetrading.ntgi.v4.05.heartbeatmessage", ftypes.BYTES)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.logon_message = ProtoField.new("Logon Message", "jse.itac.basicnativetrading.ntgi.v4.05.logonmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.logon_response_message = ProtoField.new("Logon Response Message", "jse.itac.basicnativetrading.ntgi.v4.05.logonresponsemessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.logout_message = ProtoField.new("Logout Message", "jse.itac.basicnativetrading.ntgi.v4.05.logoutmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.missed_message_request_ack_message = ProtoField.new("Missed Message Request Ack Message", "jse.itac.basicnativetrading.ntgi.v4.05.missedmessagerequestackmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.missed_message_request_message = ProtoField.new("Missed Message Request Message", "jse.itac.basicnativetrading.ntgi.v4.05.missedmessagerequestmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.new_order_cross_message = ProtoField.new("New Order Cross Message", "jse.itac.basicnativetrading.ntgi.v4.05.newordercrossmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.new_order_message = ProtoField.new("New Order Message", "jse.itac.basicnativetrading.ntgi.v4.05.newordermessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.news_message = ProtoField.new("News Message", "jse.itac.basicnativetrading.ntgi.v4.05.newsmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "jse.itac.basicnativetrading.ntgi.v4.05.ordercancelrejectmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "jse.itac.basicnativetrading.ntgi.v4.05.ordercancelreplacerequestmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "jse.itac.basicnativetrading.ntgi.v4.05.ordercancelrequestmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_mass_cancel_report_message = ProtoField.new("Order Mass Cancel Report Message", "jse.itac.basicnativetrading.ntgi.v4.05.ordermasscancelreportmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_mass_cancel_request_message = ProtoField.new("Order Mass Cancel Request Message", "jse.itac.basicnativetrading.ntgi.v4.05.ordermasscancelrequestmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.reject_message = ProtoField.new("Reject Message", "jse.itac.basicnativetrading.ntgi.v4.05.rejectmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.system_status_message = ProtoField.new("System Status Message", "jse.itac.basicnativetrading.ntgi.v4.05.systemstatusmessage", ftypes.STRING)
omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transmission_complete_message = ProtoField.new("Transmission Complete Message", "jse.itac.basicnativetrading.ntgi.v4.05.transmissioncompletemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Jse Itac BasicNativeTrading Ntgi 4.05 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
jse_itac_basicnativetrading_ntgi_v4_05.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jse Itac BasicNativeTrading Ntgi 4.05 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Jse Itac BasicNativeTrading Ntgi 4.05 Show Options
omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.show_application_messages then
    show.application_messages = omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.show_application_messages
  end
  if show.headers ~= omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.show_headers then
    show.headers = omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.show_headers
  end
  if show.structs ~= omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.show_structs then
    show.structs = omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.show_structs
  end
  if jse_itac_basicnativetrading_ntgi_v4_05.absolute_time_base ~= omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.absolute_time_base then
    jse_itac_basicnativetrading_ntgi_v4_05.absolute_time_base = omi_jse_itac_basicnativetrading_ntgi_v4_05.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Jse Itac BasicNativeTrading Ntgi 4.05 Fields
-----------------------------------------------------------------------

-- Account
jse_itac_basicnativetrading_ntgi_v4_05.account = {}

-- Size: Account
jse_itac_basicnativetrading_ntgi_v4_05.account.size = 10

-- Display: Account
jse_itac_basicnativetrading_ntgi_v4_05.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
jse_itac_basicnativetrading_ntgi_v4_05.account.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.account.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.account, range, value, display)

  return offset + length, value
end

-- Buy Side Account
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_account = {}

-- Size: Buy Side Account
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_account.size = 10

-- Display: Buy Side Account
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Side Account: No Value"
  end

  return "Buy Side Account: "..value
end

-- Dissect: Buy Side Account
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_account.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_account.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.buy_side_account, range, value, display)

  return offset + length, value
end

-- Buy Side Capacity
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_capacity = {}

-- Size: Buy Side Capacity
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_capacity.size = 1

-- Display: Buy Side Capacity
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_capacity.display = function(value)
  if value == 2 then
    return "Buy Side Capacity: Principal (2)"
  end
  if value == 3 then
    return "Buy Side Capacity: Agency (3)"
  end

  return "Buy Side Capacity: Unknown("..value..")"
end

-- Dissect: Buy Side Capacity
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_capacity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.buy_side_capacity, range, value, display)

  return offset + length, value
end

-- Buy Side Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_client_order_id = {}

-- Size: Buy Side Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_client_order_id.size = 20

-- Display: Buy Side Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Side Client Order Id: No Value"
  end

  return "Buy Side Client Order Id: "..value
end

-- Dissect: Buy Side Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_client_order_id.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.buy_side_client_order_id, range, value, display)

  return offset + length, value
end

-- Buy Side Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_trader_mnemonic = {}

-- Size: Buy Side Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_trader_mnemonic.size = 17

-- Display: Buy Side Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_trader_mnemonic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Buy Side Trader Mnemonic: No Value"
  end

  return "Buy Side Trader Mnemonic: "..value
end

-- Dissect: Buy Side Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.buy_side_trader_mnemonic.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_trader_mnemonic.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_trader_mnemonic.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.buy_side_trader_mnemonic, range, value, display)

  return offset + length, value
end

-- Cancel On Disconnect
jse_itac_basicnativetrading_ntgi_v4_05.cancel_on_disconnect = {}

-- Size: Cancel On Disconnect
jse_itac_basicnativetrading_ntgi_v4_05.cancel_on_disconnect.size = 1

-- Display: Cancel On Disconnect
jse_itac_basicnativetrading_ntgi_v4_05.cancel_on_disconnect.display = function(value)
  if value == 0 then
    return "Cancel On Disconnect: Do Not Cancel (0)"
  end
  if value == 1 then
    return "Cancel On Disconnect: Cancel (1)"
  end

  return "Cancel On Disconnect: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect
jse_itac_basicnativetrading_ntgi_v4_05.cancel_on_disconnect.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.cancel_on_disconnect.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.cancel_on_disconnect.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.cancel_on_disconnect, range, value, display)

  return offset + length, value
end

-- Capacity
jse_itac_basicnativetrading_ntgi_v4_05.capacity = {}

-- Size: Capacity
jse_itac_basicnativetrading_ntgi_v4_05.capacity.size = 1

-- Display: Capacity
jse_itac_basicnativetrading_ntgi_v4_05.capacity.display = function(value)
  if value == 2 then
    return "Capacity: Principal (2)"
  end
  if value == 3 then
    return "Capacity: Agency (3)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
jse_itac_basicnativetrading_ntgi_v4_05.capacity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.capacity, range, value, display)

  return offset + length, value
end

-- Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.client_order_id = {}

-- Size: Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size = 20

-- Display: Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Order Id: No Value"
  end

  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Comp Id
jse_itac_basicnativetrading_ntgi_v4_05.comp_id = {}

-- Size: Comp Id
jse_itac_basicnativetrading_ntgi_v4_05.comp_id.size = 6

-- Display: Comp Id
jse_itac_basicnativetrading_ntgi_v4_05.comp_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Comp Id: No Value"
  end

  return "Comp Id: "..value
end

-- Dissect: Comp Id
jse_itac_basicnativetrading_ntgi_v4_05.comp_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.comp_id.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.comp_id, range, value, display)

  return offset + length, value
end

-- Cross Id
jse_itac_basicnativetrading_ntgi_v4_05.cross_id = {}

-- Size: Cross Id
jse_itac_basicnativetrading_ntgi_v4_05.cross_id.size = 20

-- Display: Cross Id
jse_itac_basicnativetrading_ntgi_v4_05.cross_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cross Id: No Value"
  end

  return "Cross Id: "..value
end

-- Dissect: Cross Id
jse_itac_basicnativetrading_ntgi_v4_05.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.cross_id.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Type
jse_itac_basicnativetrading_ntgi_v4_05.cross_type = {}

-- Size: Cross Type
jse_itac_basicnativetrading_ntgi_v4_05.cross_type.size = 1

-- Display: Cross Type
jse_itac_basicnativetrading_ntgi_v4_05.cross_type.display = function(value)
  if value == 5 then
    return "Cross Type: Internal Cross (5)"
  end
  if value == 50 then
    return "Cross Type: Internal Cross Price Adjustable (50)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
jse_itac_basicnativetrading_ntgi_v4_05.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Display Quantity
jse_itac_basicnativetrading_ntgi_v4_05.display_quantity = {}

-- Size: Display Quantity
jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.size = 4

-- Display: Display Quantity
jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.display = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Executed Price
jse_itac_basicnativetrading_ntgi_v4_05.executed_price = {}

-- Size: Executed Price
jse_itac_basicnativetrading_ntgi_v4_05.executed_price.size = 8

-- Display: Executed Price
jse_itac_basicnativetrading_ntgi_v4_05.executed_price.display = function(value)
  return "Executed Price: "..value
end

-- Translate: Executed Price
jse_itac_basicnativetrading_ntgi_v4_05.executed_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Price
jse_itac_basicnativetrading_ntgi_v4_05.executed_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.executed_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_basicnativetrading_ntgi_v4_05.executed_price.translate(raw)
  local display = jse_itac_basicnativetrading_ntgi_v4_05.executed_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.executed_price, range, value, display)

  return offset + length, value
end

-- Executed Quantity
jse_itac_basicnativetrading_ntgi_v4_05.executed_quantity = {}

-- Size: Executed Quantity
jse_itac_basicnativetrading_ntgi_v4_05.executed_quantity.size = 4

-- Display: Executed Quantity
jse_itac_basicnativetrading_ntgi_v4_05.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jse_itac_basicnativetrading_ntgi_v4_05.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
jse_itac_basicnativetrading_ntgi_v4_05.execution_id = {}

-- Size: Execution Id
jse_itac_basicnativetrading_ntgi_v4_05.execution_id.size = 21

-- Display: Execution Id
jse_itac_basicnativetrading_ntgi_v4_05.execution_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Execution Id: No Value"
  end

  return "Execution Id: "..value
end

-- Dissect: Execution Id
jse_itac_basicnativetrading_ntgi_v4_05.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.execution_id.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Execution Instruction
jse_itac_basicnativetrading_ntgi_v4_05.execution_instruction = {}

-- Size: Execution Instruction
jse_itac_basicnativetrading_ntgi_v4_05.execution_instruction.size = 1

-- Display: Execution Instruction
jse_itac_basicnativetrading_ntgi_v4_05.execution_instruction.display = function(value)
  if value == 0 then
    return "Execution Instruction: None (0)"
  end
  if value == 2 then
    return "Execution Instruction: Include In Eod Volume Auction Uncross (2)"
  end

  return "Execution Instruction: Unknown("..value..")"
end

-- Dissect: Execution Instruction
jse_itac_basicnativetrading_ntgi_v4_05.execution_instruction.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.execution_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.execution_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.execution_instruction, range, value, display)

  return offset + length, value
end

-- Execution Type
jse_itac_basicnativetrading_ntgi_v4_05.execution_type = {}

-- Size: Execution Type
jse_itac_basicnativetrading_ntgi_v4_05.execution_type.size = 1

-- Display: Execution Type
jse_itac_basicnativetrading_ntgi_v4_05.execution_type.display = function(value)
  if value == "0" then
    return "Execution Type: New (0)"
  end
  if value == "4" then
    return "Execution Type: Cancelled (4)"
  end
  if value == "5" then
    return "Execution Type: Amended Modified (5)"
  end
  if value == "8" then
    return "Execution Type: Rejected (8)"
  end
  if value == "9" then
    return "Execution Type: Suspended (9)"
  end
  if value == "C" then
    return "Execution Type: Expired (C)"
  end
  if value == "F" then
    return "Execution Type: Trade (F)"
  end
  if value == "G" then
    return "Execution Type: Trade Correct (G)"
  end
  if value == "H" then
    return "Execution Type: Trade Cancel (H)"
  end
  if value == "D" then
    return "Execution Type: Restated (D)"
  end
  if value == "L" then
    return "Execution Type: Triggered (L)"
  end

  return "Execution Type: Unknown("..value..")"
end

-- Dissect: Execution Type
jse_itac_basicnativetrading_ntgi_v4_05.execution_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.execution_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.execution_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.execution_type, range, value, display)

  return offset + length, value
end

-- Expire Time
jse_itac_basicnativetrading_ntgi_v4_05.expire_time = {}

-- Size: Expire Time
jse_itac_basicnativetrading_ntgi_v4_05.expire_time.size = 17

-- Display: Expire Time
jse_itac_basicnativetrading_ntgi_v4_05.expire_time.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Expire Time: No Value"
  end

  return "Expire Time: "..value
end

-- Dissect: Expire Time
jse_itac_basicnativetrading_ntgi_v4_05.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.expire_time.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Firm List
jse_itac_basicnativetrading_ntgi_v4_05.firm_list = {}

-- Size: Firm List
jse_itac_basicnativetrading_ntgi_v4_05.firm_list.size = 54

-- Display: Firm List
jse_itac_basicnativetrading_ntgi_v4_05.firm_list.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm List: No Value"
  end

  return "Firm List: "..value
end

-- Dissect: Firm List
jse_itac_basicnativetrading_ntgi_v4_05.firm_list.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.firm_list.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.firm_list.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.firm_list, range, value, display)

  return offset + length, value
end

-- Headline
jse_itac_basicnativetrading_ntgi_v4_05.headline = {}

-- Size: Headline
jse_itac_basicnativetrading_ntgi_v4_05.headline.size = 100

-- Display: Headline
jse_itac_basicnativetrading_ntgi_v4_05.headline.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Headline: No Value"
  end

  return "Headline: "..value
end

-- Dissect: Headline
jse_itac_basicnativetrading_ntgi_v4_05.headline.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.headline.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.headline, range, value, display)

  return offset + length, value
end

-- Instruments
jse_itac_basicnativetrading_ntgi_v4_05.instruments = {}

-- Size: Instruments
jse_itac_basicnativetrading_ntgi_v4_05.instruments.size = 100

-- Display: Instruments
jse_itac_basicnativetrading_ntgi_v4_05.instruments.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instruments: No Value"
  end

  return "Instruments: "..value
end

-- Dissect: Instruments
jse_itac_basicnativetrading_ntgi_v4_05.instruments.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.instruments.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.instruments, range, value, display)

  return offset + length, value
end

-- Is Market Ops Request
jse_itac_basicnativetrading_ntgi_v4_05.is_market_ops_request = {}

-- Size: Is Market Ops Request
jse_itac_basicnativetrading_ntgi_v4_05.is_market_ops_request.size = 1

-- Display: Is Market Ops Request
jse_itac_basicnativetrading_ntgi_v4_05.is_market_ops_request.display = function(value)
  if value == 0 then
    return "Is Market Ops Request: No (0)"
  end
  if value == 1 then
    return "Is Market Ops Request: Yes (1)"
  end

  return "Is Market Ops Request: Unknown("..value..")"
end

-- Dissect: Is Market Ops Request
jse_itac_basicnativetrading_ntgi_v4_05.is_market_ops_request.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.is_market_ops_request.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.is_market_ops_request.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.is_market_ops_request, range, value, display)

  return offset + length, value
end

-- Leaves Quantity
jse_itac_basicnativetrading_ntgi_v4_05.leaves_quantity = {}

-- Size: Leaves Quantity
jse_itac_basicnativetrading_ntgi_v4_05.leaves_quantity.size = 4

-- Display: Leaves Quantity
jse_itac_basicnativetrading_ntgi_v4_05.leaves_quantity.display = function(value)
  return "Leaves Quantity: "..value
end

-- Dissect: Leaves Quantity
jse_itac_basicnativetrading_ntgi_v4_05.leaves_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.leaves_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.leaves_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.leaves_quantity, range, value, display)

  return offset + length, value
end

-- Limit Price
jse_itac_basicnativetrading_ntgi_v4_05.limit_price = {}

-- Size: Limit Price
jse_itac_basicnativetrading_ntgi_v4_05.limit_price.size = 8

-- Display: Limit Price
jse_itac_basicnativetrading_ntgi_v4_05.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Translate: Limit Price
jse_itac_basicnativetrading_ntgi_v4_05.limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Limit Price
jse_itac_basicnativetrading_ntgi_v4_05.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_basicnativetrading_ntgi_v4_05.limit_price.translate(raw)
  local display = jse_itac_basicnativetrading_ntgi_v4_05.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
jse_itac_basicnativetrading_ntgi_v4_05.liquidity_indicator = {}

-- Size: Liquidity Indicator
jse_itac_basicnativetrading_ntgi_v4_05.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
jse_itac_basicnativetrading_ntgi_v4_05.liquidity_indicator.display = function(value)
  if value == 0 then
    return "Liquidity Indicator: Unset (0)"
  end
  if value == 1 then
    return "Liquidity Indicator: Added Liquidity (1)"
  end
  if value == 2 then
    return "Liquidity Indicator: Removed Liquidity (2)"
  end
  if value == 4 then
    return "Liquidity Indicator: Auction (4)"
  end

  return "Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Indicator
jse_itac_basicnativetrading_ntgi_v4_05.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request Type
jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_request_type = {}

-- Size: Mass Cancel Request Type
jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_request_type.size = 1

-- Display: Mass Cancel Request Type
jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_request_type.display = function(value)
  if value == 3 then
    return "Mass Cancel Request Type: All Firm Orders For Instrument (3)"
  end
  if value == 4 then
    return "Mass Cancel Request Type: All Firm Orders For Segment (4)"
  end
  if value == 7 then
    return "Mass Cancel Request Type: All Orders For Client Interface User Id (7)"
  end
  if value == 8 then
    return "Mass Cancel Request Type: All Orders For Firm (8)"
  end
  if value == 9 then
    return "Mass Cancel Request Type: Client Interface User Id Orders For Instrument (9)"
  end
  if value == 15 then
    return "Mass Cancel Request Type: Client Interface User Id Orders For Segment (15)"
  end

  return "Mass Cancel Request Type: Unknown("..value..")"
end

-- Dissect: Mass Cancel Request Type
jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_request_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_request_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.mass_cancel_request_type, range, value, display)

  return offset + length, value
end

-- Mass Cancel Status
jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_status = {}

-- Size: Mass Cancel Status
jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_status.size = 1

-- Display: Mass Cancel Status
jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_status.display = function(value)
  if value == 0 then
    return "Mass Cancel Status: Rejected (0)"
  end
  if value == 7 then
    return "Mass Cancel Status: Accepted (7)"
  end

  return "Mass Cancel Status: Unknown("..value..")"
end

-- Dissect: Mass Cancel Status
jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.mass_cancel_status, range, value, display)

  return offset + length, value
end

-- Message Length
jse_itac_basicnativetrading_ntgi_v4_05.message_length = {}

-- Size: Message Length
jse_itac_basicnativetrading_ntgi_v4_05.message_length.size = 2

-- Display: Message Length
jse_itac_basicnativetrading_ntgi_v4_05.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jse_itac_basicnativetrading_ntgi_v4_05.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
jse_itac_basicnativetrading_ntgi_v4_05.message_type = {}

-- Size: Message Type
jse_itac_basicnativetrading_ntgi_v4_05.message_type.size = 1

-- Display: Message Type
jse_itac_basicnativetrading_ntgi_v4_05.message_type.display = function(value)
  if value == "A" then
    return "Message Type: Logon Message (A)"
  end
  if value == "B" then
    return "Message Type: Logon Response Message (B)"
  end
  if value == "5" then
    return "Message Type: Logout Message (5)"
  end
  if value == "0" then
    return "Message Type: Heartbeat Message (0)"
  end
  if value == "3" then
    return "Message Type: Reject Message (3)"
  end
  if value == "M" then
    return "Message Type: Missed Message Request Message (M)"
  end
  if value == "N" then
    return "Message Type: Missed Message Request Ack Message (N)"
  end
  if value == "P" then
    return "Message Type: Transmission Complete Message (P)"
  end
  if value == "n" then
    return "Message Type: System Status Message (n)"
  end
  if value == "D" then
    return "Message Type: New Order Message (D)"
  end
  if value == "F" then
    return "Message Type: Order Cancel Request Message (F)"
  end
  if value == "q" then
    return "Message Type: Order Mass Cancel Request Message (q)"
  end
  if value == "G" then
    return "Message Type: Order Cancel Replace Request Message (G)"
  end
  if value == "C" then
    return "Message Type: New Order Cross Message (C)"
  end
  if value == "8" then
    return "Message Type: Execution Report Message (8)"
  end
  if value == "9" then
    return "Message Type: Order Cancel Reject Message (9)"
  end
  if value == "r" then
    return "Message Type: Order Mass Cancel Report Message (r)"
  end
  if value == "Z" then
    return "Message Type: News Message (Z)"
  end
  if value == "j" then
    return "Message Type: Business Reject Message (j)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
jse_itac_basicnativetrading_ntgi_v4_05.message_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
jse_itac_basicnativetrading_ntgi_v4_05.minimum_quantity = {}

-- Size: Minimum Quantity
jse_itac_basicnativetrading_ntgi_v4_05.minimum_quantity.size = 4

-- Display: Minimum Quantity
jse_itac_basicnativetrading_ntgi_v4_05.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
jse_itac_basicnativetrading_ntgi_v4_05.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Missed Message Status
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_status = {}

-- Size: Missed Message Status
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_status.size = 1

-- Display: Missed Message Status
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_status.display = function(value)
  if value == 0 then
    return "Missed Message Status: Request Accepted Successful (0)"
  end
  if value == 1 then
    return "Missed Message Status: Request Limit Reached (1)"
  end
  if value == 2 then
    return "Missed Message Status: Invalid Partition Id (2)"
  end
  if value == 3 then
    return "Missed Message Status: Service Unavailable (3)"
  end

  return "Missed Message Status: Unknown("..value..")"
end

-- Dissect: Missed Message Status
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.missed_message_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.missed_message_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.missed_message_status, range, value, display)

  return offset + length, value
end

-- New Password
jse_itac_basicnativetrading_ntgi_v4_05.new_password = {}

-- Size: New Password
jse_itac_basicnativetrading_ntgi_v4_05.new_password.size = 25

-- Display: New Password
jse_itac_basicnativetrading_ntgi_v4_05.new_password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "New Password: No Value"
  end

  return "New Password: "..value
end

-- Dissect: New Password
jse_itac_basicnativetrading_ntgi_v4_05.new_password.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.new_password.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.new_password, range, value, display)

  return offset + length, value
end

-- Order Book
jse_itac_basicnativetrading_ntgi_v4_05.order_book = {}

-- Size: Order Book
jse_itac_basicnativetrading_ntgi_v4_05.order_book.size = 1

-- Display: Order Book
jse_itac_basicnativetrading_ntgi_v4_05.order_book.display = function(value)
  if value == 1 then
    return "Order Book: Regular (1)"
  end

  return "Order Book: Unknown("..value..")"
end

-- Dissect: Order Book
jse_itac_basicnativetrading_ntgi_v4_05.order_book.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.order_book.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_book, range, value, display)

  return offset + length, value
end

-- Order Id Alpha 12
jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12 = {}

-- Size: Order Id Alpha 12
jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.size = 12

-- Display: Order Id Alpha 12
jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Id Alpha 12: No Value"
  end

  return "Order Id Alpha 12: "..value
end

-- Dissect: Order Id Alpha 12
jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_id_alpha_12, range, value, display)

  return offset + length, value
end

-- Order Id String 12
jse_itac_basicnativetrading_ntgi_v4_05.order_id_string_12 = {}

-- Size: Order Id String 12
jse_itac_basicnativetrading_ntgi_v4_05.order_id_string_12.size = 12

-- Display: Order Id String 12
jse_itac_basicnativetrading_ntgi_v4_05.order_id_string_12.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Id String 12: No Value"
  end

  return "Order Id String 12: "..value
end

-- Dissect: Order Id String 12
jse_itac_basicnativetrading_ntgi_v4_05.order_id_string_12.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.order_id_string_12.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.order_id_string_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_id_string_12, range, value, display)

  return offset + length, value
end

-- Order Quantity
jse_itac_basicnativetrading_ntgi_v4_05.order_quantity = {}

-- Size: Order Quantity
jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.size = 4

-- Display: Order Quantity
jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.display = function(value)
  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Order Status
jse_itac_basicnativetrading_ntgi_v4_05.order_status = {}

-- Size: Order Status
jse_itac_basicnativetrading_ntgi_v4_05.order_status.size = 1

-- Display: Order Status
jse_itac_basicnativetrading_ntgi_v4_05.order_status.display = function(value)
  if value == 0 then
    return "Order Status: New (0)"
  end
  if value == 1 then
    return "Order Status: Partially Filled (1)"
  end
  if value == 2 then
    return "Order Status: Filled (2)"
  end
  if value == 4 then
    return "Order Status: Cancelled (4)"
  end
  if value == 6 then
    return "Order Status: Expired (6)"
  end
  if value == 8 then
    return "Order Status: Rejected (8)"
  end
  if value == 9 then
    return "Order Status: Suspended (9)"
  end

  return "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
jse_itac_basicnativetrading_ntgi_v4_05.order_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.order_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Sub Type
jse_itac_basicnativetrading_ntgi_v4_05.order_sub_type = {}

-- Size: Order Sub Type
jse_itac_basicnativetrading_ntgi_v4_05.order_sub_type.size = 1

-- Display: Order Sub Type
jse_itac_basicnativetrading_ntgi_v4_05.order_sub_type.display = function(value)
  if value == 0 then
    return "Order Sub Type: Order (0)"
  end
  if value == 50 then
    return "Order Sub Type: Pegged To Mid (50)"
  end
  if value == 51 then
    return "Order Sub Type: Pegged To Bid (51)"
  end
  if value == 52 then
    return "Order Sub Type: Pegged To Offer (52)"
  end

  return "Order Sub Type: Unknown("..value..")"
end

-- Dissect: Order Sub Type
jse_itac_basicnativetrading_ntgi_v4_05.order_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.order_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.order_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_sub_type, range, value, display)

  return offset + length, value
end

-- Order Type
jse_itac_basicnativetrading_ntgi_v4_05.order_type = {}

-- Size: Order Type
jse_itac_basicnativetrading_ntgi_v4_05.order_type.size = 1

-- Display: Order Type
jse_itac_basicnativetrading_ntgi_v4_05.order_type.display = function(value)
  if value == 1 then
    return "Order Type: Market Order (1)"
  end
  if value == 2 then
    return "Order Type: Limit Order (2)"
  end
  if value == 3 then
    return "Order Type: Stop Order (3)"
  end
  if value == 4 then
    return "Order Type: Stop Limit Order (4)"
  end
  if value == 50 then
    return "Order Type: Pegged (50)"
  end
  if value == 51 then
    return "Order Type: Pegged Limit Order (51)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
jse_itac_basicnativetrading_ntgi_v4_05.order_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_type, range, value, display)

  return offset + length, value
end

-- Orig Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.orig_client_order_id = {}

-- Size: Orig Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.orig_client_order_id.size = 20

-- Display: Orig Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.orig_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Client Order Id: No Value"
  end

  return "Orig Client Order Id: "..value
end

-- Dissect: Orig Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.orig_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.orig_client_order_id.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.orig_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.orig_client_order_id, range, value, display)

  return offset + length, value
end

-- Orig Time
jse_itac_basicnativetrading_ntgi_v4_05.orig_time = {}

-- Size: Orig Time
jse_itac_basicnativetrading_ntgi_v4_05.orig_time.size = 24

-- Display: Orig Time
jse_itac_basicnativetrading_ntgi_v4_05.orig_time.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Time: No Value"
  end

  return "Orig Time: "..value
end

-- Dissect: Orig Time
jse_itac_basicnativetrading_ntgi_v4_05.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.orig_time.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Original Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.original_client_order_id = {}

-- Size: Original Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.original_client_order_id.size = 20

-- Display: Original Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.original_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order Id: No Value"
  end

  return "Original Client Order Id: "..value
end

-- Dissect: Original Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.original_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.original_client_order_id.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.original_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.original_client_order_id, range, value, display)

  return offset + length, value
end

-- Partition Id
jse_itac_basicnativetrading_ntgi_v4_05.partition_id = {}

-- Size: Partition Id
jse_itac_basicnativetrading_ntgi_v4_05.partition_id.size = 1

-- Display: Partition Id
jse_itac_basicnativetrading_ntgi_v4_05.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
jse_itac_basicnativetrading_ntgi_v4_05.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Password
jse_itac_basicnativetrading_ntgi_v4_05.password = {}

-- Size: Password
jse_itac_basicnativetrading_ntgi_v4_05.password.size = 25

-- Display: Password
jse_itac_basicnativetrading_ntgi_v4_05.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
jse_itac_basicnativetrading_ntgi_v4_05.password.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.password.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.password, range, value, display)

  return offset + length, value
end

-- Password Expiry
jse_itac_basicnativetrading_ntgi_v4_05.password_expiry = {}

-- Size: Password Expiry
jse_itac_basicnativetrading_ntgi_v4_05.password_expiry.size = 4

-- Display: Password Expiry
jse_itac_basicnativetrading_ntgi_v4_05.password_expiry.display = function(value)
  return "Password Expiry: "..value
end

-- Dissect: Password Expiry
jse_itac_basicnativetrading_ntgi_v4_05.password_expiry.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.password_expiry.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.password_expiry.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.password_expiry, range, value, display)

  return offset + length, value
end

-- Protocol Version
jse_itac_basicnativetrading_ntgi_v4_05.protocol_version = {}

-- Size: Protocol Version
jse_itac_basicnativetrading_ntgi_v4_05.protocol_version.size = 4

-- Display: Protocol Version
jse_itac_basicnativetrading_ntgi_v4_05.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
jse_itac_basicnativetrading_ntgi_v4_05.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.protocol_version.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Public Order Id
jse_itac_basicnativetrading_ntgi_v4_05.public_order_id = {}

-- Size: Public Order Id
jse_itac_basicnativetrading_ntgi_v4_05.public_order_id.size = 12

-- Display: Public Order Id
jse_itac_basicnativetrading_ntgi_v4_05.public_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Public Order Id: No Value"
  end

  return "Public Order Id: "..value
end

-- Dissect: Public Order Id
jse_itac_basicnativetrading_ntgi_v4_05.public_order_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.public_order_id.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.public_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.public_order_id, range, value, display)

  return offset + length, value
end

-- Reason
jse_itac_basicnativetrading_ntgi_v4_05.reason = {}

-- Size: Reason
jse_itac_basicnativetrading_ntgi_v4_05.reason.size = 20

-- Display: Reason
jse_itac_basicnativetrading_ntgi_v4_05.reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason: No Value"
  end

  return "Reason: "..value
end

-- Dissect: Reason
jse_itac_basicnativetrading_ntgi_v4_05.reason.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.reason.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject Code
jse_itac_basicnativetrading_ntgi_v4_05.reject_code = {}

-- Size: Reject Code
jse_itac_basicnativetrading_ntgi_v4_05.reject_code.size = 4

-- Display: Reject Code
jse_itac_basicnativetrading_ntgi_v4_05.reject_code.display = function(value)
  return "Reject Code: "..value
end

-- Dissect: Reject Code
jse_itac_basicnativetrading_ntgi_v4_05.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.reject_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Reject Reason
jse_itac_basicnativetrading_ntgi_v4_05.reject_reason = {}

-- Size: Reject Reason
jse_itac_basicnativetrading_ntgi_v4_05.reject_reason.size = 30

-- Display: Reject Reason
jse_itac_basicnativetrading_ntgi_v4_05.reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reject Reason: No Value"
  end

  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
jse_itac_basicnativetrading_ntgi_v4_05.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.reject_reason.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Security Id
jse_itac_basicnativetrading_ntgi_v4_05.security_id = {}

-- Size: Security Id
jse_itac_basicnativetrading_ntgi_v4_05.security_id.size = 4

-- Display: Security Id
jse_itac_basicnativetrading_ntgi_v4_05.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
jse_itac_basicnativetrading_ntgi_v4_05.security_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.security_id, range, value, display)

  return offset + length, value
end

-- Segment
jse_itac_basicnativetrading_ntgi_v4_05.segment = {}

-- Size: Segment
jse_itac_basicnativetrading_ntgi_v4_05.segment.size = 6

-- Display: Segment
jse_itac_basicnativetrading_ntgi_v4_05.segment.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Segment: No Value"
  end

  return "Segment: "..value
end

-- Dissect: Segment
jse_itac_basicnativetrading_ntgi_v4_05.segment.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.segment.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.segment, range, value, display)

  return offset + length, value
end

-- Self Trade Prevention Key
jse_itac_basicnativetrading_ntgi_v4_05.self_trade_prevention_key = {}

-- Size: Self Trade Prevention Key
jse_itac_basicnativetrading_ntgi_v4_05.self_trade_prevention_key.size = 12

-- Display: Self Trade Prevention Key
jse_itac_basicnativetrading_ntgi_v4_05.self_trade_prevention_key.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Self Trade Prevention Key: No Value"
  end

  return "Self Trade Prevention Key: "..value
end

-- Dissect: Self Trade Prevention Key
jse_itac_basicnativetrading_ntgi_v4_05.self_trade_prevention_key.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.self_trade_prevention_key.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.self_trade_prevention_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.self_trade_prevention_key, range, value, display)

  return offset + length, value
end

-- Sell Side Account
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_account = {}

-- Size: Sell Side Account
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_account.size = 10

-- Display: Sell Side Account
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Side Account: No Value"
  end

  return "Sell Side Account: "..value
end

-- Dissect: Sell Side Account
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_account.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_account.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.sell_side_account, range, value, display)

  return offset + length, value
end

-- Sell Side Capacity
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_capacity = {}

-- Size: Sell Side Capacity
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_capacity.size = 1

-- Display: Sell Side Capacity
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_capacity.display = function(value)
  if value == 2 then
    return "Sell Side Capacity: Principal (2)"
  end
  if value == 3 then
    return "Sell Side Capacity: Agency (3)"
  end

  return "Sell Side Capacity: Unknown("..value..")"
end

-- Dissect: Sell Side Capacity
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_capacity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.sell_side_capacity, range, value, display)

  return offset + length, value
end

-- Sell Side Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_client_order_id = {}

-- Size: Sell Side Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_client_order_id.size = 20

-- Display: Sell Side Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Side Client Order Id: No Value"
  end

  return "Sell Side Client Order Id: "..value
end

-- Dissect: Sell Side Client Order Id
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_client_order_id.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.sell_side_client_order_id, range, value, display)

  return offset + length, value
end

-- Sell Side Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_trader_mnemonic = {}

-- Size: Sell Side Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_trader_mnemonic.size = 17

-- Display: Sell Side Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_trader_mnemonic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sell Side Trader Mnemonic: No Value"
  end

  return "Sell Side Trader Mnemonic: "..value
end

-- Dissect: Sell Side Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.sell_side_trader_mnemonic.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_trader_mnemonic.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_trader_mnemonic.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.sell_side_trader_mnemonic, range, value, display)

  return offset + length, value
end

-- Sequence Number
jse_itac_basicnativetrading_ntgi_v4_05.sequence_number = {}

-- Size: Sequence Number
jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.size = 4

-- Display: Sequence Number
jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Side
jse_itac_basicnativetrading_ntgi_v4_05.side = {}

-- Size: Side
jse_itac_basicnativetrading_ntgi_v4_05.side.size = 1

-- Display: Side
jse_itac_basicnativetrading_ntgi_v4_05.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
jse_itac_basicnativetrading_ntgi_v4_05.side.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
jse_itac_basicnativetrading_ntgi_v4_05.start_of_message = {}

-- Size: Start Of Message
jse_itac_basicnativetrading_ntgi_v4_05.start_of_message.size = 1

-- Display: Start Of Message
jse_itac_basicnativetrading_ntgi_v4_05.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
jse_itac_basicnativetrading_ntgi_v4_05.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.start_of_message.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Stop Price
jse_itac_basicnativetrading_ntgi_v4_05.stop_price = {}

-- Size: Stop Price
jse_itac_basicnativetrading_ntgi_v4_05.stop_price.size = 8

-- Display: Stop Price
jse_itac_basicnativetrading_ntgi_v4_05.stop_price.display = function(value)
  return "Stop Price: "..value
end

-- Translate: Stop Price
jse_itac_basicnativetrading_ntgi_v4_05.stop_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Stop Price
jse_itac_basicnativetrading_ntgi_v4_05.stop_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.stop_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_basicnativetrading_ntgi_v4_05.stop_price.translate(raw)
  local display = jse_itac_basicnativetrading_ntgi_v4_05.stop_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.stop_price, range, value, display)

  return offset + length, value
end

-- System Status
jse_itac_basicnativetrading_ntgi_v4_05.system_status = {}

-- Size: System Status
jse_itac_basicnativetrading_ntgi_v4_05.system_status.size = 1

-- Display: System Status
jse_itac_basicnativetrading_ntgi_v4_05.system_status.display = function(value)
  if value == 1 then
    return "System Status: Recovery Service Resumed (1)"
  end
  if value == 2 then
    return "System Status: Recovery Service Unavailable (2)"
  end
  if value == 3 then
    return "System Status: Partition Suspended (3)"
  end

  return "System Status: Unknown("..value..")"
end

-- Dissect: System Status
jse_itac_basicnativetrading_ntgi_v4_05.system_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.system_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.system_status, range, value, display)

  return offset + length, value
end

-- Text
jse_itac_basicnativetrading_ntgi_v4_05.text = {}

-- Size: Text
jse_itac_basicnativetrading_ntgi_v4_05.text.size = 750

-- Display: Text
jse_itac_basicnativetrading_ntgi_v4_05.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
jse_itac_basicnativetrading_ntgi_v4_05.text.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.text.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
jse_itac_basicnativetrading_ntgi_v4_05.time_in_force = {}

-- Size: Time In Force
jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.size = 1

-- Display: Time In Force
jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Day (0)"
  end
  if value == 1 then
    return "Time In Force: Good Till Cancel Gtc (1)"
  end
  if value == 3 then
    return "Time In Force: Immediate Or Cancel Ioc (3)"
  end
  if value == 4 then
    return "Time In Force: Fill Or Kill Fok (4)"
  end
  if value == 5 then
    return "Time In Force: At The Open Opg (5)"
  end
  if value == 6 then
    return "Time In Force: Good Till Date Gtd (6)"
  end
  if value == 8 then
    return "Time In Force: Good Till Time Gtt (8)"
  end
  if value == 9 then
    return "Time In Force: Good For Auction Gfa (9)"
  end
  if value == 10 then
    return "Time In Force: At The Close Atc (10)"
  end
  if value == 12 then
    return "Time In Force: Closing Price Cross Cpx (12)"
  end
  if value == 50 then
    return "Time In Force: Good For Eod Volume Auction Uncross Gdx (50)"
  end
  if value == 51 then
    return "Time In Force: Good For Intraday Auction Gfx (51)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic = {}

-- Size: Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.size = 17

-- Display: Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader Mnemonic: No Value"
  end

  return "Trader Mnemonic: "..value
end

-- Dissect: Trader Mnemonic
jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.trader_mnemonic, range, value, display)

  return offset + length, value
end

-- Transact Time Nanoseconds
jse_itac_basicnativetrading_ntgi_v4_05.transact_time_nanoseconds = {}

-- Size: Transact Time Nanoseconds
jse_itac_basicnativetrading_ntgi_v4_05.transact_time_nanoseconds.size = 4

-- Display: Transact Time Nanoseconds
jse_itac_basicnativetrading_ntgi_v4_05.transact_time_nanoseconds.display = function(value)
  return "Transact Time Nanoseconds: "..value
end

-- Dissect: Transact Time Nanoseconds
jse_itac_basicnativetrading_ntgi_v4_05.transact_time_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.transact_time_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.transact_time_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transact_time_nanoseconds, range, value, display)

  return offset + length, value
end

-- Transact Time Seconds
jse_itac_basicnativetrading_ntgi_v4_05.transact_time_seconds = {}

-- Size: Transact Time Seconds
jse_itac_basicnativetrading_ntgi_v4_05.transact_time_seconds.size = 4

-- Display: Transact Time Seconds
jse_itac_basicnativetrading_ntgi_v4_05.transact_time_seconds.display = function(value)
  return "Transact Time Seconds: "..value
end

-- Dissect: Transact Time Seconds
jse_itac_basicnativetrading_ntgi_v4_05.transact_time_seconds.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.transact_time_seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.transact_time_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transact_time_seconds, range, value, display)

  return offset + length, value
end

-- Transmission Status
jse_itac_basicnativetrading_ntgi_v4_05.transmission_status = {}

-- Size: Transmission Status
jse_itac_basicnativetrading_ntgi_v4_05.transmission_status.size = 1

-- Display: Transmission Status
jse_itac_basicnativetrading_ntgi_v4_05.transmission_status.display = function(value)
  if value == 0 then
    return "Transmission Status: All Messages Transmitted (0)"
  end
  if value == 1 then
    return "Transmission Status: Message Limit Reached (1)"
  end
  if value == 3 then
    return "Transmission Status: Service Unavailable (3)"
  end

  return "Transmission Status: Unknown("..value..")"
end

-- Dissect: Transmission Status
jse_itac_basicnativetrading_ntgi_v4_05.transmission_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.transmission_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.transmission_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transmission_status, range, value, display)

  return offset + length, value
end

-- Type Of Trade
jse_itac_basicnativetrading_ntgi_v4_05.type_of_trade = {}

-- Size: Type Of Trade
jse_itac_basicnativetrading_ntgi_v4_05.type_of_trade.size = 1

-- Display: Type Of Trade
jse_itac_basicnativetrading_ntgi_v4_05.type_of_trade.display = function(value)
  if value == 0 then
    return "Type Of Trade: Visible (0)"
  end
  if value == 1 then
    return "Type Of Trade: Hidden (1)"
  end
  if value == 2 then
    return "Type Of Trade: Not Specified (2)"
  end
  if value == 3 then
    return "Type Of Trade: Pegged (3)"
  end

  return "Type Of Trade: Unknown("..value..")"
end

-- Dissect: Type Of Trade
jse_itac_basicnativetrading_ntgi_v4_05.type_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.type_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.type_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.type_of_trade, range, value, display)

  return offset + length, value
end

-- Underlyings
jse_itac_basicnativetrading_ntgi_v4_05.underlyings = {}

-- Size: Underlyings
jse_itac_basicnativetrading_ntgi_v4_05.underlyings.size = 100

-- Display: Underlyings
jse_itac_basicnativetrading_ntgi_v4_05.underlyings.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlyings: No Value"
  end

  return "Underlyings: "..value
end

-- Dissect: Underlyings
jse_itac_basicnativetrading_ntgi_v4_05.underlyings.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.underlyings.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.underlyings.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.underlyings, range, value, display)

  return offset + length, value
end

-- Urgency
jse_itac_basicnativetrading_ntgi_v4_05.urgency = {}

-- Size: Urgency
jse_itac_basicnativetrading_ntgi_v4_05.urgency.size = 1

-- Display: Urgency
jse_itac_basicnativetrading_ntgi_v4_05.urgency.display = function(value)
  if value == "0" then
    return "Urgency: Regular (0)"
  end
  if value == "1" then
    return "Urgency: High Priority (1)"
  end
  if value == "2" then
    return "Urgency: Low Priority (2)"
  end

  return "Urgency: Unknown("..value..")"
end

-- Dissect: Urgency
jse_itac_basicnativetrading_ntgi_v4_05.urgency.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.urgency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.urgency.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.urgency, range, value, display)

  return offset + length, value
end

-- User List
jse_itac_basicnativetrading_ntgi_v4_05.user_list = {}

-- Size: User List
jse_itac_basicnativetrading_ntgi_v4_05.user_list.size = 54

-- Display: User List
jse_itac_basicnativetrading_ntgi_v4_05.user_list.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User List: No Value"
  end

  return "User List: "..value
end

-- Dissect: User List
jse_itac_basicnativetrading_ntgi_v4_05.user_list.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.user_list.size
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

  local display = jse_itac_basicnativetrading_ntgi_v4_05.user_list.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.user_list, range, value, display)

  return offset + length, value
end

-- Working Indicator
jse_itac_basicnativetrading_ntgi_v4_05.working_indicator = {}

-- Size: Working Indicator
jse_itac_basicnativetrading_ntgi_v4_05.working_indicator.size = 1

-- Display: Working Indicator
jse_itac_basicnativetrading_ntgi_v4_05.working_indicator.display = function(value)
  if value == 0 then
    return "Working Indicator: Unset (0)"
  end
  if value == 1 then
    return "Working Indicator: Order Is Being Worked (1)"
  end
  if value == 2 then
    return "Working Indicator: Order Is Not Currently In A Working State (2)"
  end

  return "Working Indicator: Unknown("..value..")"
end

-- Dissect: Working Indicator
jse_itac_basicnativetrading_ntgi_v4_05.working_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_basicnativetrading_ntgi_v4_05.working_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.working_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.working_indicator, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Jse Itac BasicNativeTrading Ntgi 4.05
-----------------------------------------------------------------------

-- Transact Time
jse_itac_basicnativetrading_ntgi_v4_05.transact_time = {}

-- Size: Transact Time
jse_itac_basicnativetrading_ntgi_v4_05.transact_time.size =
  jse_itac_basicnativetrading_ntgi_v4_05.transact_time_seconds.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.transact_time_nanoseconds.size

-- Display: Transact Time
jse_itac_basicnativetrading_ntgi_v4_05.transact_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Transact Time
jse_itac_basicnativetrading_ntgi_v4_05.transact_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time Seconds: 4 Byte Unsigned Fixed Width Integer
  index, transact_time_seconds = jse_itac_basicnativetrading_ntgi_v4_05.transact_time_seconds.dissect(buffer, index, packet, parent)

  -- Transact Time Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, transact_time_nanoseconds = jse_itac_basicnativetrading_ntgi_v4_05.transact_time_nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local transact_time = UInt64.new(transact_time_seconds * 1000000000 + transact_time_nanoseconds)

  return index, transact_time
end

-- Dissect: Transact Time
jse_itac_basicnativetrading_ntgi_v4_05.transact_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local transact_time_seconds = buffer(offset, 4):le_uint()
    local transact_time_nanoseconds = buffer(offset + 4, 4):le_uint()
    local length = jse_itac_basicnativetrading_ntgi_v4_05.transact_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transact_time
    if jse_itac_basicnativetrading_ntgi_v4_05.absolute_time_base == 1 then field = omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transact_time_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(transact_time_seconds, transact_time_nanoseconds))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.transact_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.transact_time.fields(buffer, offset, packet, parent)
  end
end

-- Business Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.business_reject_message = {}

-- Size: Business Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.business_reject_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.partition_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.reject_code.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.transact_time.size

-- Display: Business Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.business_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.business_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_basicnativetrading_ntgi_v4_05.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = jse_itac_basicnativetrading_ntgi_v4_05.reject_code.dissect(buffer, index, packet, parent)

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Alpha 12: Alpha
  index, order_id_alpha_12 = jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = jse_itac_basicnativetrading_ntgi_v4_05.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.business_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.business_reject_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.business_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.business_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.business_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
jse_itac_basicnativetrading_ntgi_v4_05.news_message = {}

-- Size: News Message
jse_itac_basicnativetrading_ntgi_v4_05.news_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.partition_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.orig_time.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.urgency.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.headline.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.text.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.instruments.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.underlyings.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.firm_list.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.user_list.size

-- Display: News Message
jse_itac_basicnativetrading_ntgi_v4_05.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
jse_itac_basicnativetrading_ntgi_v4_05.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_basicnativetrading_ntgi_v4_05.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.dissect(buffer, index, packet, parent)

  -- Orig Time: Alpha
  index, orig_time = jse_itac_basicnativetrading_ntgi_v4_05.orig_time.dissect(buffer, index, packet, parent)

  -- Urgency: Byte
  index, urgency = jse_itac_basicnativetrading_ntgi_v4_05.urgency.dissect(buffer, index, packet, parent)

  -- Headline: Alpha
  index, headline = jse_itac_basicnativetrading_ntgi_v4_05.headline.dissect(buffer, index, packet, parent)

  -- Text: Alpha
  index, text = jse_itac_basicnativetrading_ntgi_v4_05.text.dissect(buffer, index, packet, parent)

  -- Instruments: Alpha
  index, instruments = jse_itac_basicnativetrading_ntgi_v4_05.instruments.dissect(buffer, index, packet, parent)

  -- Underlyings: Alpha
  index, underlyings = jse_itac_basicnativetrading_ntgi_v4_05.underlyings.dissect(buffer, index, packet, parent)

  -- Firm List: Alpha
  index, firm_list = jse_itac_basicnativetrading_ntgi_v4_05.firm_list.dissect(buffer, index, packet, parent)

  -- User List: Alpha
  index, user_list = jse_itac_basicnativetrading_ntgi_v4_05.user_list.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
jse_itac_basicnativetrading_ntgi_v4_05.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.news_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Report Message
jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_report_message = {}

-- Size: Order Mass Cancel Report Message
jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_report_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.partition_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_status.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.reject_code.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.transact_time.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_book.size

-- Display: Order Mass Cancel Report Message
jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Report Message
jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_basicnativetrading_ntgi_v4_05.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.dissect(buffer, index, packet, parent)

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Status: UInt8
  index, mass_cancel_status = jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_status.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = jse_itac_basicnativetrading_ntgi_v4_05.reject_code.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = jse_itac_basicnativetrading_ntgi_v4_05.transact_time.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_basicnativetrading_ntgi_v4_05.order_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Report Message
jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_mass_cancel_report_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_reject_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.partition_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.transact_time.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.reject_code.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_book.size

-- Display: Order Cancel Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_basicnativetrading_ntgi_v4_05.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.dissect(buffer, index, packet, parent)

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Alpha 12: Alpha
  index, order_id_alpha_12 = jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = jse_itac_basicnativetrading_ntgi_v4_05.transact_time.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = jse_itac_basicnativetrading_ntgi_v4_05.reject_code.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_basicnativetrading_ntgi_v4_05.order_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicator Flags
jse_itac_basicnativetrading_ntgi_v4_05.indicator_flags = {}

-- Size: Indicator Flags
jse_itac_basicnativetrading_ntgi_v4_05.indicator_flags.size = 1

-- Display: Indicator Flags
jse_itac_basicnativetrading_ntgi_v4_05.indicator_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aggressor Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Aggressor Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Indicator Flags
jse_itac_basicnativetrading_ntgi_v4_05.indicator_flags.bits = function(range, value, packet, parent)

  -- Aggressor Indicator: 1 Bit
  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.aggressor_indicator, range, value)

  -- Reserved 28: 7 Bit
  parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.reserved_28, range, value)
end

-- Dissect: Indicator Flags
jse_itac_basicnativetrading_ntgi_v4_05.indicator_flags.dissect = function(buffer, offset, packet, parent)
  local size = jse_itac_basicnativetrading_ntgi_v4_05.indicator_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jse_itac_basicnativetrading_ntgi_v4_05.indicator_flags.display(range, value, packet, parent)
  local element = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.indicator_flags, range, display)

  if show.structs then
    jse_itac_basicnativetrading_ntgi_v4_05.indicator_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Execution Report Message
jse_itac_basicnativetrading_ntgi_v4_05.execution_report_message = {}

-- Calculate size of: Execution Report Message
jse_itac_basicnativetrading_ntgi_v4_05.execution_report_message.size = function(buffer, offset)
  local index = 0

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.partition_id.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.execution_id.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.execution_type.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.order_status.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.reject_code.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.executed_price.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.executed_quantity.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.leaves_quantity.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.working_indicator.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.security_id.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.side.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.account.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.is_market_ops_request.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.transact_time.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.order_book.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.execution_instruction.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.cross_id.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.cross_type.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.public_order_id.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.indicator_flags.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.liquidity_indicator.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.type_of_trade.size

  local message_length = buffer(offset - 3, 2):le_uint()

  if message_length > 165 then
    index = index + jse_itac_basicnativetrading_ntgi_v4_05.self_trade_prevention_key.size

  end

  return index
end

-- Display: Execution Report Message
jse_itac_basicnativetrading_ntgi_v4_05.execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Message
jse_itac_basicnativetrading_ntgi_v4_05.execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_basicnativetrading_ntgi_v4_05.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.dissect(buffer, index, packet, parent)

  -- Execution Id: Alpha
  index, execution_id = jse_itac_basicnativetrading_ntgi_v4_05.execution_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Alpha 12: Alpha
  index, order_id_alpha_12 = jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.dissect(buffer, index, packet, parent)

  -- Execution Type: Alpha
  index, execution_type = jse_itac_basicnativetrading_ntgi_v4_05.execution_type.dissect(buffer, index, packet, parent)

  -- Order Status: UInt8
  index, order_status = jse_itac_basicnativetrading_ntgi_v4_05.order_status.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = jse_itac_basicnativetrading_ntgi_v4_05.reject_code.dissect(buffer, index, packet, parent)

  -- Executed Price: Price
  index, executed_price = jse_itac_basicnativetrading_ntgi_v4_05.executed_price.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Int32
  index, executed_quantity = jse_itac_basicnativetrading_ntgi_v4_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Leaves Quantity: Int32
  index, leaves_quantity = jse_itac_basicnativetrading_ntgi_v4_05.leaves_quantity.dissect(buffer, index, packet, parent)

  -- Working Indicator: UInt8
  index, working_indicator = jse_itac_basicnativetrading_ntgi_v4_05.working_indicator.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_basicnativetrading_ntgi_v4_05.security_id.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = jse_itac_basicnativetrading_ntgi_v4_05.side.dissect(buffer, index, packet, parent)

  -- Trader Mnemonic: Alpha
  index, trader_mnemonic = jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.dissect(buffer, index, packet, parent)

  -- Account: Alpha
  index, account = jse_itac_basicnativetrading_ntgi_v4_05.account.dissect(buffer, index, packet, parent)

  -- Is Market Ops Request: UInt8
  index, is_market_ops_request = jse_itac_basicnativetrading_ntgi_v4_05.is_market_ops_request.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = jse_itac_basicnativetrading_ntgi_v4_05.transact_time.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_basicnativetrading_ntgi_v4_05.order_book.dissect(buffer, index, packet, parent)

  -- Execution Instruction: Int8
  index, execution_instruction = jse_itac_basicnativetrading_ntgi_v4_05.execution_instruction.dissect(buffer, index, packet, parent)

  -- Cross Id: Alpha
  index, cross_id = jse_itac_basicnativetrading_ntgi_v4_05.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: UInt8
  index, cross_type = jse_itac_basicnativetrading_ntgi_v4_05.cross_type.dissect(buffer, index, packet, parent)

  -- Display Quantity: Int32
  index, display_quantity = jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.dissect(buffer, index, packet, parent)

  -- Public Order Id: Alpha
  index, public_order_id = jse_itac_basicnativetrading_ntgi_v4_05.public_order_id.dissect(buffer, index, packet, parent)

  -- Indicator Flags: Struct of 2 fields
  index, indicator_flags = jse_itac_basicnativetrading_ntgi_v4_05.indicator_flags.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: UInt8
  index, liquidity_indicator = jse_itac_basicnativetrading_ntgi_v4_05.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Type Of Trade: UInt8
  index, type_of_trade = jse_itac_basicnativetrading_ntgi_v4_05.type_of_trade.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime optional field: Self Trade Prevention Key
  local self_trade_prevention_key = nil

  local self_trade_prevention_key_exists = message_length > 165

  if self_trade_prevention_key_exists then
    index, self_trade_prevention_key = jse_itac_basicnativetrading_ntgi_v4_05.self_trade_prevention_key.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Message
jse_itac_basicnativetrading_ntgi_v4_05.execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.execution_report_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Cross Message
jse_itac_basicnativetrading_ntgi_v4_05.new_order_cross_message = {}

-- Size: New Order Cross Message
jse_itac_basicnativetrading_ntgi_v4_05.new_order_cross_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.cross_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.cross_type.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.buy_side_client_order_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.buy_side_capacity.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.buy_side_trader_mnemonic.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.buy_side_account.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.sell_side_client_order_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.sell_side_capacity.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.sell_side_trader_mnemonic.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.sell_side_account.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.security_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_type.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.limit_price.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.size

-- Display: New Order Cross Message
jse_itac_basicnativetrading_ntgi_v4_05.new_order_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Message
jse_itac_basicnativetrading_ntgi_v4_05.new_order_cross_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: Alpha
  index, cross_id = jse_itac_basicnativetrading_ntgi_v4_05.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: UInt8
  index, cross_type = jse_itac_basicnativetrading_ntgi_v4_05.cross_type.dissect(buffer, index, packet, parent)

  -- Buy Side Client Order Id: Alpha
  index, buy_side_client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_client_order_id.dissect(buffer, index, packet, parent)

  -- Buy Side Capacity: UInt8
  index, buy_side_capacity = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_capacity.dissect(buffer, index, packet, parent)

  -- Buy Side Trader Mnemonic: Alpha
  index, buy_side_trader_mnemonic = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_trader_mnemonic.dissect(buffer, index, packet, parent)

  -- Buy Side Account: Alpha
  index, buy_side_account = jse_itac_basicnativetrading_ntgi_v4_05.buy_side_account.dissect(buffer, index, packet, parent)

  -- Sell Side Client Order Id: Alpha
  index, sell_side_client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_client_order_id.dissect(buffer, index, packet, parent)

  -- Sell Side Capacity: UInt8
  index, sell_side_capacity = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_capacity.dissect(buffer, index, packet, parent)

  -- Sell Side Trader Mnemonic: Alpha
  index, sell_side_trader_mnemonic = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_trader_mnemonic.dissect(buffer, index, packet, parent)

  -- Sell Side Account: Alpha
  index, sell_side_account = jse_itac_basicnativetrading_ntgi_v4_05.sell_side_account.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_basicnativetrading_ntgi_v4_05.security_id.dissect(buffer, index, packet, parent)

  -- Order Type: UInt8
  index, order_type = jse_itac_basicnativetrading_ntgi_v4_05.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: UInt8
  index, time_in_force = jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.dissect(buffer, index, packet, parent)

  -- Limit Price: Price
  index, limit_price = jse_itac_basicnativetrading_ntgi_v4_05.limit_price.dissect(buffer, index, packet, parent)

  -- Order Quantity: Int32
  index, order_quantity = jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Message
jse_itac_basicnativetrading_ntgi_v4_05.new_order_cross_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.new_order_cross_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.new_order_cross_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.new_order_cross_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.new_order_cross_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_replace_request_message = {}

-- Size: Order Cancel Replace Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_replace_request_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.original_client_order_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_id_string_12.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.security_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.account.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_type.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.expire_time.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.side.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.minimum_quantity.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.limit_price.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.stop_price.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_book.size

-- Display: Order Cancel Replace Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: Alpha
  index, original_client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id String 12: String
  index, order_id_string_12 = jse_itac_basicnativetrading_ntgi_v4_05.order_id_string_12.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_basicnativetrading_ntgi_v4_05.security_id.dissect(buffer, index, packet, parent)

  -- Trader Mnemonic: Alpha
  index, trader_mnemonic = jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.dissect(buffer, index, packet, parent)

  -- Account: Alpha
  index, account = jse_itac_basicnativetrading_ntgi_v4_05.account.dissect(buffer, index, packet, parent)

  -- Order Type: UInt8
  index, order_type = jse_itac_basicnativetrading_ntgi_v4_05.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: UInt8
  index, time_in_force = jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Time: Alpha
  index, expire_time = jse_itac_basicnativetrading_ntgi_v4_05.expire_time.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = jse_itac_basicnativetrading_ntgi_v4_05.side.dissect(buffer, index, packet, parent)

  -- Order Quantity: Int32
  index, order_quantity = jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.dissect(buffer, index, packet, parent)

  -- Display Quantity: Int32
  index, display_quantity = jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Int32
  index, minimum_quantity = jse_itac_basicnativetrading_ntgi_v4_05.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Limit Price: Price
  index, limit_price = jse_itac_basicnativetrading_ntgi_v4_05.limit_price.dissect(buffer, index, packet, parent)

  -- Stop Price: Price
  index, stop_price = jse_itac_basicnativetrading_ntgi_v4_05.stop_price.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_basicnativetrading_ntgi_v4_05.order_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_request_message = {}

-- Size: Order Mass Cancel Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_request_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_request_type.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.security_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.segment.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_sub_type.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_book.size

-- Display: Order Mass Cancel Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Type: UInt8
  index, mass_cancel_request_type = jse_itac_basicnativetrading_ntgi_v4_05.mass_cancel_request_type.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_basicnativetrading_ntgi_v4_05.security_id.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = jse_itac_basicnativetrading_ntgi_v4_05.segment.dissect(buffer, index, packet, parent)

  -- Order Sub Type: UInt8
  index, order_sub_type = jse_itac_basicnativetrading_ntgi_v4_05.order_sub_type.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_basicnativetrading_ntgi_v4_05.order_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_mass_cancel_request_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_request_message = {}

-- Size: Order Cancel Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_request_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.orig_client_order_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.security_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.side.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.order_book.size

-- Display: Order Cancel Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: Alpha
  index, orig_client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Alpha 12: Alpha
  index, order_id_alpha_12 = jse_itac_basicnativetrading_ntgi_v4_05.order_id_alpha_12.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_basicnativetrading_ntgi_v4_05.security_id.dissect(buffer, index, packet, parent)

  -- Trader Mnemonic: Alpha
  index, trader_mnemonic = jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = jse_itac_basicnativetrading_ntgi_v4_05.side.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_basicnativetrading_ntgi_v4_05.order_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.order_cancel_request_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
jse_itac_basicnativetrading_ntgi_v4_05.new_order_message = {}

-- Calculate size of: New Order Message
jse_itac_basicnativetrading_ntgi_v4_05.new_order_message.size = function(buffer, offset)
  local index = 0

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.security_id.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.account.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.order_type.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.expire_time.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.side.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.minimum_quantity.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.limit_price.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.stop_price.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.capacity.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.cancel_on_disconnect.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.order_book.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.execution_instruction.size

  index = index + jse_itac_basicnativetrading_ntgi_v4_05.order_sub_type.size

  local message_length = buffer(offset - 3, 2):le_uint()

  if message_length > 105 then
    index = index + jse_itac_basicnativetrading_ntgi_v4_05.self_trade_prevention_key.size

  end

  return index
end

-- Display: New Order Message
jse_itac_basicnativetrading_ntgi_v4_05.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
jse_itac_basicnativetrading_ntgi_v4_05.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_basicnativetrading_ntgi_v4_05.security_id.dissect(buffer, index, packet, parent)

  -- Trader Mnemonic: Alpha
  index, trader_mnemonic = jse_itac_basicnativetrading_ntgi_v4_05.trader_mnemonic.dissect(buffer, index, packet, parent)

  -- Account: Alpha
  index, account = jse_itac_basicnativetrading_ntgi_v4_05.account.dissect(buffer, index, packet, parent)

  -- Order Type: UInt8
  index, order_type = jse_itac_basicnativetrading_ntgi_v4_05.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: UInt8
  index, time_in_force = jse_itac_basicnativetrading_ntgi_v4_05.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Time: Alpha
  index, expire_time = jse_itac_basicnativetrading_ntgi_v4_05.expire_time.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = jse_itac_basicnativetrading_ntgi_v4_05.side.dissect(buffer, index, packet, parent)

  -- Order Quantity: Int32
  index, order_quantity = jse_itac_basicnativetrading_ntgi_v4_05.order_quantity.dissect(buffer, index, packet, parent)

  -- Display Quantity: Int32
  index, display_quantity = jse_itac_basicnativetrading_ntgi_v4_05.display_quantity.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Int32
  index, minimum_quantity = jse_itac_basicnativetrading_ntgi_v4_05.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Limit Price: Price
  index, limit_price = jse_itac_basicnativetrading_ntgi_v4_05.limit_price.dissect(buffer, index, packet, parent)

  -- Stop Price: Price
  index, stop_price = jse_itac_basicnativetrading_ntgi_v4_05.stop_price.dissect(buffer, index, packet, parent)

  -- Capacity: UInt8
  index, capacity = jse_itac_basicnativetrading_ntgi_v4_05.capacity.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: UInt8
  index, cancel_on_disconnect = jse_itac_basicnativetrading_ntgi_v4_05.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_basicnativetrading_ntgi_v4_05.order_book.dissect(buffer, index, packet, parent)

  -- Execution Instruction: Int8
  index, execution_instruction = jse_itac_basicnativetrading_ntgi_v4_05.execution_instruction.dissect(buffer, index, packet, parent)

  -- Order Sub Type: UInt8
  index, order_sub_type = jse_itac_basicnativetrading_ntgi_v4_05.order_sub_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime optional field: Self Trade Prevention Key
  local self_trade_prevention_key = nil

  local self_trade_prevention_key_exists = message_length > 105

  if self_trade_prevention_key_exists then
    index, self_trade_prevention_key = jse_itac_basicnativetrading_ntgi_v4_05.self_trade_prevention_key.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Message
jse_itac_basicnativetrading_ntgi_v4_05.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.new_order_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- System Status Message
jse_itac_basicnativetrading_ntgi_v4_05.system_status_message = {}

-- Size: System Status Message
jse_itac_basicnativetrading_ntgi_v4_05.system_status_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.partition_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.system_status.size

-- Display: System Status Message
jse_itac_basicnativetrading_ntgi_v4_05.system_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Status Message
jse_itac_basicnativetrading_ntgi_v4_05.system_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_basicnativetrading_ntgi_v4_05.partition_id.dissect(buffer, index, packet, parent)

  -- System Status: UInt8
  index, system_status = jse_itac_basicnativetrading_ntgi_v4_05.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Status Message
jse_itac_basicnativetrading_ntgi_v4_05.system_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.system_status_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.system_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.system_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.system_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Transmission Complete Message
jse_itac_basicnativetrading_ntgi_v4_05.transmission_complete_message = {}

-- Size: Transmission Complete Message
jse_itac_basicnativetrading_ntgi_v4_05.transmission_complete_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.transmission_status.size

-- Display: Transmission Complete Message
jse_itac_basicnativetrading_ntgi_v4_05.transmission_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transmission Complete Message
jse_itac_basicnativetrading_ntgi_v4_05.transmission_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transmission Status: UInt8
  index, transmission_status = jse_itac_basicnativetrading_ntgi_v4_05.transmission_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transmission Complete Message
jse_itac_basicnativetrading_ntgi_v4_05.transmission_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.transmission_complete_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.transmission_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.transmission_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.transmission_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Missed Message Request Ack Message
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_ack_message = {}

-- Size: Missed Message Request Ack Message
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_ack_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.missed_message_status.size

-- Display: Missed Message Request Ack Message
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Missed Message Request Ack Message
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Missed Message Status: UInt8
  index, missed_message_status = jse_itac_basicnativetrading_ntgi_v4_05.missed_message_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Missed Message Request Ack Message
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.missed_message_request_ack_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Missed Message Request Message
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_message = {}

-- Size: Missed Message Request Message
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.partition_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.size

-- Display: Missed Message Request Message
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Missed Message Request Message
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_basicnativetrading_ntgi_v4_05.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_basicnativetrading_ntgi_v4_05.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Missed Message Request Message
jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.missed_message_request_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.reject_message = {}

-- Size: Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.reject_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.reject_code.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.reject_reason.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.message_type.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.size

-- Display: Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: Int32
  index, reject_code = jse_itac_basicnativetrading_ntgi_v4_05.reject_code.dissect(buffer, index, packet, parent)

  -- Reject Reason: Alpha
  index, reject_reason = jse_itac_basicnativetrading_ntgi_v4_05.reject_reason.dissect(buffer, index, packet, parent)

  -- Message Type: Byte
  index, message_type = jse_itac_basicnativetrading_ntgi_v4_05.message_type.dissect(buffer, index, packet, parent)

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_basicnativetrading_ntgi_v4_05.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
jse_itac_basicnativetrading_ntgi_v4_05.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.reject_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
jse_itac_basicnativetrading_ntgi_v4_05.logout_message = {}

-- Size: Logout Message
jse_itac_basicnativetrading_ntgi_v4_05.logout_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.reason.size

-- Display: Logout Message
jse_itac_basicnativetrading_ntgi_v4_05.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
jse_itac_basicnativetrading_ntgi_v4_05.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: Alpha
  index, reason = jse_itac_basicnativetrading_ntgi_v4_05.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
jse_itac_basicnativetrading_ntgi_v4_05.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.logout_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
jse_itac_basicnativetrading_ntgi_v4_05.logon_response_message = {}

-- Size: Logon Response Message
jse_itac_basicnativetrading_ntgi_v4_05.logon_response_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.reject_code.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.password_expiry.size

-- Display: Logon Response Message
jse_itac_basicnativetrading_ntgi_v4_05.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
jse_itac_basicnativetrading_ntgi_v4_05.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: Int32
  index, reject_code = jse_itac_basicnativetrading_ntgi_v4_05.reject_code.dissect(buffer, index, packet, parent)

  -- Password Expiry: Int32
  index, password_expiry = jse_itac_basicnativetrading_ntgi_v4_05.password_expiry.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
jse_itac_basicnativetrading_ntgi_v4_05.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.logon_response_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
jse_itac_basicnativetrading_ntgi_v4_05.logon_message = {}

-- Size: Logon Message
jse_itac_basicnativetrading_ntgi_v4_05.logon_message.size =
  jse_itac_basicnativetrading_ntgi_v4_05.comp_id.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.password.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.new_password.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.protocol_version.size

-- Display: Logon Message
jse_itac_basicnativetrading_ntgi_v4_05.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
jse_itac_basicnativetrading_ntgi_v4_05.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Comp Id: Alpha
  index, comp_id = jse_itac_basicnativetrading_ntgi_v4_05.comp_id.dissect(buffer, index, packet, parent)

  -- Password: Alpha
  index, password = jse_itac_basicnativetrading_ntgi_v4_05.password.dissect(buffer, index, packet, parent)

  -- New Password: Alpha
  index, new_password = jse_itac_basicnativetrading_ntgi_v4_05.new_password.dissect(buffer, index, packet, parent)

  -- Protocol Version: Int32
  index, protocol_version = jse_itac_basicnativetrading_ntgi_v4_05.protocol_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
jse_itac_basicnativetrading_ntgi_v4_05.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.logon_message, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jse_itac_basicnativetrading_ntgi_v4_05.payload = {}

-- Dissect: Payload
jse_itac_basicnativetrading_ntgi_v4_05.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Message
  if message_type == "A" then
    return jse_itac_basicnativetrading_ntgi_v4_05.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Response Message
  if message_type == "B" then
    return jse_itac_basicnativetrading_ntgi_v4_05.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == "5" then
    return jse_itac_basicnativetrading_ntgi_v4_05.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == "0" then
    return offset
  end
  -- Dissect Reject Message
  if message_type == "3" then
    return jse_itac_basicnativetrading_ntgi_v4_05.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Missed Message Request Message
  if message_type == "M" then
    return jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Missed Message Request Ack Message
  if message_type == "N" then
    return jse_itac_basicnativetrading_ntgi_v4_05.missed_message_request_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transmission Complete Message
  if message_type == "P" then
    return jse_itac_basicnativetrading_ntgi_v4_05.transmission_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Status Message
  if message_type == "n" then
    return jse_itac_basicnativetrading_ntgi_v4_05.system_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Message
  if message_type == "D" then
    return jse_itac_basicnativetrading_ntgi_v4_05.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if message_type == "F" then
    return jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Cancel Request Message
  if message_type == "q" then
    return jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if message_type == "G" then
    return jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Message
  if message_type == "C" then
    return jse_itac_basicnativetrading_ntgi_v4_05.new_order_cross_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Message
  if message_type == "8" then
    return jse_itac_basicnativetrading_ntgi_v4_05.execution_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if message_type == "9" then
    return jse_itac_basicnativetrading_ntgi_v4_05.order_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Cancel Report Message
  if message_type == "r" then
    return jse_itac_basicnativetrading_ntgi_v4_05.order_mass_cancel_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if message_type == "Z" then
    return jse_itac_basicnativetrading_ntgi_v4_05.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Business Reject Message
  if message_type == "j" then
    return jse_itac_basicnativetrading_ntgi_v4_05.business_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
jse_itac_basicnativetrading_ntgi_v4_05.message_header = {}

-- Size: Message Header
jse_itac_basicnativetrading_ntgi_v4_05.message_header.size =
  jse_itac_basicnativetrading_ntgi_v4_05.start_of_message.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.message_length.size + 
  jse_itac_basicnativetrading_ntgi_v4_05.message_type.size

-- Display: Message Header
jse_itac_basicnativetrading_ntgi_v4_05.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
jse_itac_basicnativetrading_ntgi_v4_05.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: UInt8
  index, start_of_message = jse_itac_basicnativetrading_ntgi_v4_05.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: UInt16
  index, message_length = jse_itac_basicnativetrading_ntgi_v4_05.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: Byte
  index, message_type = jse_itac_basicnativetrading_ntgi_v4_05.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
jse_itac_basicnativetrading_ntgi_v4_05.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.message_header, buffer(offset, 0))
    local index = jse_itac_basicnativetrading_ntgi_v4_05.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_basicnativetrading_ntgi_v4_05.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
jse_itac_basicnativetrading_ntgi_v4_05.message = {}

-- Display: Message
jse_itac_basicnativetrading_ntgi_v4_05.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
jse_itac_basicnativetrading_ntgi_v4_05.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = jse_itac_basicnativetrading_ntgi_v4_05.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 19 branches
  index = jse_itac_basicnativetrading_ntgi_v4_05.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
jse_itac_basicnativetrading_ntgi_v4_05.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05.fields.message, buffer(offset, 0))
    local current = jse_itac_basicnativetrading_ntgi_v4_05.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = jse_itac_basicnativetrading_ntgi_v4_05.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jse_itac_basicnativetrading_ntgi_v4_05.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < jse_itac_basicnativetrading_ntgi_v4_05.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 1, 2):le_uint() + 3

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
jse_itac_basicnativetrading_ntgi_v4_05.packet = {}

-- Verify required size of Tcp packet
jse_itac_basicnativetrading_ntgi_v4_05.packet.requiredsize = function(buffer)
  return buffer:len() >= jse_itac_basicnativetrading_ntgi_v4_05.message_header.size
end

-- Dissect Packet
jse_itac_basicnativetrading_ntgi_v4_05.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = jse_itac_basicnativetrading_ntgi_v4_05.message.dissect(buffer, index, packet, parent, size_of_message)
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
function omi_jse_itac_basicnativetrading_ntgi_v4_05.init()
end

-- Dissector for Jse Itac BasicNativeTrading Ntgi 4.05
function omi_jse_itac_basicnativetrading_ntgi_v4_05.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_jse_itac_basicnativetrading_ntgi_v4_05.name

  -- Dissect protocol
  local protocol = parent:add(omi_jse_itac_basicnativetrading_ntgi_v4_05, buffer(), omi_jse_itac_basicnativetrading_ntgi_v4_05.description, "("..buffer:len().." Bytes)")
  return jse_itac_basicnativetrading_ntgi_v4_05.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Jse Itac BasicNativeTrading Ntgi 4.05 (Tcp)
local function omi_jse_itac_basicnativetrading_ntgi_v4_05_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jse_itac_basicnativetrading_ntgi_v4_05.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jse_itac_basicnativetrading_ntgi_v4_05
  omi_jse_itac_basicnativetrading_ntgi_v4_05.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jse Itac BasicNativeTrading Ntgi 4.05
omi_jse_itac_basicnativetrading_ntgi_v4_05:register_heuristic("tcp", omi_jse_itac_basicnativetrading_ntgi_v4_05_tcp_heuristic)

-- Register Jse Itac BasicNativeTrading Ntgi 4.05 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_jse_itac_basicnativetrading_ntgi_v4_05)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: JSE Limited
--   Version: 4.05
--   Date: Tuesday, May 28, 2024
--   Specification: JSE Volume 01E - Basic Native Trading Gateway (4.05).pdf
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
