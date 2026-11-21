-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax OnyxFutures ExpressInterface Fei 1.2 Protocol
local omi_miax_onyxfutures_expressinterface_fei_v1_2 = Proto("Omi.Miax.OnyxFutures.ExpressInterface.Fei.v1.2", "Miax OnyxFutures ExpressInterface Fei 1.2")

-- Protocol table
local miax_onyxfutures_expressinterface_fei_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax OnyxFutures ExpressInterface Fei 1.2 Fields
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.account = ProtoField.new("Account", "miax.onyxfutures.expressinterface.fei.v1.2.account", ftypes.STRING, nil, nil, nil, "Customer ID defined by the firm")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.action = ProtoField.new("Action", "miax.onyxfutures.expressinterface.fei.v1.2.action", ftypes.STRING, nil, nil, nil, "Action to be taken for the specified Scope:")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.additional_order_indicators = ProtoField.new("Additional Order Indicators", "miax.onyxfutures.expressinterface.fei.v1.2.additionalorderindicators", ftypes.STRING, nil, nil, nil, "Additional Order Indicators Flags")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.application_protocol = ProtoField.new("Application Protocol", "miax.onyxfutures.expressinterface.fei.v1.2.applicationprotocol", ftypes.STRING, nil, nil, nil, "Miax Application Protocol")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cancel_reason = ProtoField.new("Cancel Reason", "miax.onyxfutures.expressinterface.fei.v1.2.cancelreason", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cancel_status = ProtoField.new("Cancel Status", "miax.onyxfutures.expressinterface.fei.v1.2.cancelstatus", ftypes.STRING, nil, nil, nil, "Status")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.client_order_id = ProtoField.new("Client Order Id", "miax.onyxfutures.expressinterface.fei.v1.2.clientorderid", ftypes.STRING, nil, nil, nil, "Firm specified unique order ID")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.client_send_time_utc = ProtoField.new("Client Send Time", "miax.onyxfutures.expressinterface.fei.v1.2.clientsendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Firm’s send time")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.client_send_time = ProtoField.new("Client Send Time", "miax.onyxfutures.expressinterface.fei.v1.2.clientsendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Firm’s send time")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.complex_trade_id = ProtoField.new("Complex Trade Id", "miax.onyxfutures.expressinterface.fei.v1.2.complextradeid", ftypes.UINT64, nil, nil, nil, "Exchange assigned unique Complex Trade ID.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.computer_id = ProtoField.new("Computer Id", "miax.onyxfutures.expressinterface.fei.v1.2.computerid", ftypes.STRING, nil, nil, nil, "issued by MIAX Futures Exchange during initial setup")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.correction_number = ProtoField.new("Correction Number", "miax.onyxfutures.expressinterface.fei.v1.2.correctionnumber", ftypes.UINT8, nil, nil, nil, "Trade correction number.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cti_code = ProtoField.new("Cti Code", "miax.onyxfutures.expressinterface.fei.v1.2.cticode", ftypes.STRING, nil, nil, nil, "CTI Code values")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.customer_of_firm_designation = ProtoField.new("Customer Of Firm Designation", "miax.onyxfutures.expressinterface.fei.v1.2.customeroffirmdesignation", ftypes.UINT8, {[0]="Customer", [1]="Firm"}, base.DEC, 0x01)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.customer_order_handling_instruction = ProtoField.new("Customer Order Handling Instruction", "miax.onyxfutures.expressinterface.fei.v1.2.customerorderhandlinginstruction", ftypes.STRING, nil, nil, nil, "Customer Order Handling Instruction:")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.2.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.execution_id = ProtoField.new("Execution Id", "miax.onyxfutures.expressinterface.fei.v1.2.executionid", ftypes.UINT64, nil, nil, nil, "Exchange assigned unique Execution ID. See notes below for details.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.onyxfutures.expressinterface.fei.v1.2.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.2.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "the highest sequence number that the server currently has for the client")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.instrument_id = ProtoField.new("Instrument Id", "miax.onyxfutures.expressinterface.fei.v1.2.instrumentid", ftypes.UINT32, nil, nil, nil, "Instrument ID mapped to a given Instrument assigned by MIAX Futures Onyx")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.last_net_price = ProtoField.new("Last Net Price", "miax.onyxfutures.expressinterface.fei.v1.2.lastnetprice", ftypes.DOUBLE, nil, nil, nil, "Net Price of this execution")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.last_price = ProtoField.new("Last Price", "miax.onyxfutures.expressinterface.fei.v1.2.lastprice", ftypes.DOUBLE, nil, nil, nil, "Match price if the order had not been prevented from execution by Self Trade Protection.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.last_size = ProtoField.new("Last Size", "miax.onyxfutures.expressinterface.fei.v1.2.lastsize", ftypes.UINT32, nil, nil, nil, "Number of contracts that would have matched if the order had not been prevented from execution by Self Trade Protection.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.leaves_qty = ProtoField.new("Leaves Qty", "miax.onyxfutures.expressinterface.fei.v1.2.leavesqty", ftypes.UINT32, nil, nil, nil, "Size of the order that is still open")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.leg_ratio = ProtoField.new("Leg Ratio", "miax.onyxfutures.expressinterface.fei.v1.2.legratio", ftypes.INT32, nil, nil, nil, "Leg ratio for the specified instrument")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "miax.onyxfutures.expressinterface.fei.v1.2.liquidityindicator", ftypes.STRING, nil, nil, nil, "Please refer to MIAX Onyx Futures Liquidity Indicator Codes document (available on the MIAX website) for the list of codes.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.login_request = ProtoField.new("Login Request", "miax.onyxfutures.expressinterface.fei.v1.2.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client must send a Login request packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.login_response = ProtoField.new("Login Response", "miax.onyxfutures.expressinterface.fei.v1.2.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.login_status = ProtoField.new("Login Status", "miax.onyxfutures.expressinterface.fei.v1.2.loginstatus", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.logout_reason = ProtoField.new("Logout Reason", "miax.onyxfutures.expressinterface.fei.v1.2.logoutreason", ftypes.STRING, nil, nil, nil, "Logout Request Reason")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.logout_request = ProtoField.new("Logout Request", "miax.onyxfutures.expressinterface.fei.v1.2.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.logout_text = ProtoField.new("Logout Text", "miax.onyxfutures.expressinterface.fei.v1.2.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "miax.onyxfutures.expressinterface.fei.v1.2.manualorderindicator", ftypes.UINT8, {[0]="Automated", [1]="Manual"}, base.DEC, 0x02)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.mass_cancel_status = ProtoField.new("Mass Cancel Status", "miax.onyxfutures.expressinterface.fei.v1.2.masscancelstatus", ftypes.STRING, nil, nil, nil, "Status")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.matching_engine_time_utc = ProtoField.new("Matching Engine Time", "miax.onyxfutures.expressinterface.fei.v1.2.matchingenginetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time at which this message was generated by the Matching Engine")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.matching_engine_time = ProtoField.new("Matching Engine Time", "miax.onyxfutures.expressinterface.fei.v1.2.matchingenginetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time at which this message was generated by the Matching Engine")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.min_qty = ProtoField.new("Min Qty", "miax.onyxfutures.expressinterface.fei.v1.2.minqty", ftypes.UINT32, nil, nil, nil, "Minimum fill quantity")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.modify_status = ProtoField.new("Modify Status", "miax.onyxfutures.expressinterface.fei.v1.2.modifystatus", ftypes.STRING, nil, nil, nil, "Status")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.mp_id = ProtoField.new("Mp Id", "miax.onyxfutures.expressinterface.fei.v1.2.mpid", ftypes.STRING, nil, nil, nil, "Five character MPID of the Firm whose order is sent")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.onyxfutures.expressinterface.fei.v1.2.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of strategy legs. The fields below (marked with →) are repeated for each specified leg")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.open_close_position_indicator = ProtoField.new("Open Close Position Indicator", "miax.onyxfutures.expressinterface.fei.v1.2.openclosepositionindicator", ftypes.UINT8, {[0]="Open", [1]="Close"}, base.DEC, 0x04)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.operator_id = ProtoField.new("Operator Id", "miax.onyxfutures.expressinterface.fei.v1.2.operatorid", ftypes.STRING, nil, nil, nil, "This must contain a 2 to 18 character Operator.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.operator_location = ProtoField.new("Operator Location", "miax.onyxfutures.expressinterface.fei.v1.2.operatorlocation", ftypes.STRING, nil, nil, nil, "The location associated with Operator ID")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_expiry_date = ProtoField.new("Order Expiry Date", "miax.onyxfutures.expressinterface.fei.v1.2.orderexpirydate", ftypes.UINT16, nil, nil, nil, "GTD Order Expiry date, set to zero for all other tifs")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_id = ProtoField.new("Order Id", "miax.onyxfutures.expressinterface.fei.v1.2.orderid", ftypes.UINT64, nil, nil, nil, "Exchange assigned unique order ID when order is accepted.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_instructions = ProtoField.new("Order Instructions", "miax.onyxfutures.expressinterface.fei.v1.2.orderinstructions", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_status = ProtoField.new("Order Status", "miax.onyxfutures.expressinterface.fei.v1.2.orderstatus", ftypes.STRING, nil, nil, nil, "Status")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_type = ProtoField.new("Order Type", "miax.onyxfutures.expressinterface.fei.v1.2.ordertype", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.original_client_order_id = ProtoField.new("Original Client Order Id", "miax.onyxfutures.expressinterface.fei.v1.2.originalclientorderid", ftypes.STRING, nil, nil, nil, "Target Client Order ID that is being modified")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.price = ProtoField.new("Price", "miax.onyxfutures.expressinterface.fei.v1.2.price", ftypes.DOUBLE, nil, nil, nil, "Limit price of the order")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.product_group_code = ProtoField.new("Product Group Code", "miax.onyxfutures.expressinterface.fei.v1.2.productgroupcode", ftypes.STRING, nil, nil, nil, "Product Group Code: e.g. MWE for Hard Red Spring Wheat Standard Deliverable (5000 Bushels)")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.product_type = ProtoField.new("Product Type", "miax.onyxfutures.expressinterface.fei.v1.2.producttype", ftypes.STRING, nil, nil, nil, "Product Type:")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.purge_group = ProtoField.new("Purge Group", "miax.onyxfutures.expressinterface.fei.v1.2.purgegroup", ftypes.STRING, nil, nil, nil, "Customer specified purge group")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.2.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.requested_session = ProtoField.new("Requested Session", "miax.onyxfutures.expressinterface.fei.v1.2.requestedsession", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.onyxfutures.expressinterface.fei.v1.2.reserved10", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.onyxfutures.expressinterface.fei.v1.2.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_30 = ProtoField.new("Reserved 30", "miax.onyxfutures.expressinterface.fei.v1.2.reserved30", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_32 = ProtoField.new("Reserved 32", "miax.onyxfutures.expressinterface.fei.v1.2.reserved32", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.onyxfutures.expressinterface.fei.v1.2.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_9 = ProtoField.new("Reserved 9", "miax.onyxfutures.expressinterface.fei.v1.2.reserved9", ftypes.BYTES, nil, nil, nil, "For future use.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.onyxfutures.expressinterface.fei.v1.2.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to request the server to retransmit a range of packets")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.scope = ProtoField.new("Scope", "miax.onyxfutures.expressinterface.fei.v1.2.scope", ftypes.STRING, nil, nil, nil, "Mass-Cancel Scope:")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.self_trade_protection = ProtoField.new("Self Trade Protection", "miax.onyxfutures.expressinterface.fei.v1.2.selftradeprotection", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.self_trade_protection_group = ProtoField.new("Self Trade Protection Group", "miax.onyxfutures.expressinterface.fei.v1.2.selftradeprotectiongroup", ftypes.STRING, nil, nil, nil, "Customer specified protection group, if empty string, group is not specified")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.self_trade_protection_instruction = ProtoField.new("Self Trade Protection Instruction", "miax.onyxfutures.expressinterface.fei.v1.2.selftradeprotectioninstruction", ftypes.UINT8, {[0]="Not Applicable", [1]="Cancel Newest", [2]="Cancel Oldest", [3]="Cancel Both", [4]="Decrement And Cancel"}, base.DEC, 0x38)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.self_trade_protection_level = ProtoField.new("Self Trade Protection Level", "miax.onyxfutures.expressinterface.fei.v1.2.selftradeprotectionlevel", ftypes.UINT8, {[0]="Self Trade Protection Disabled", [1]="Firm", [2]="Mpid", [3]="Parent Group"}, base.DEC, 0x07)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.2.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of this sequenced data packet")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.onyxfutures.expressinterface.fei.v1.2.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The SesM server uses Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.onyxfutures.expressinterface.fei.v1.2.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "SesM sequenced message type")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.onyxfutures.expressinterface.fei.v1.2.sesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.onyxfutures.expressinterface.fei.v1.2.sesmpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sesm_version = ProtoField.new("Sesm Version", "miax.onyxfutures.expressinterface.fei.v1.2.sesmversion", ftypes.STRING, nil, nil, nil, "SesM protocol version: 1.0 (right padded with spaces)")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.session_id = ProtoField.new("Session Id", "miax.onyxfutures.expressinterface.fei.v1.2.sessionid", ftypes.UINT8, nil, nil, nil, "MIAX Futures Onyx assigned ID for the current trading session for the Matching Engine")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.side = ProtoField.new("Side", "miax.onyxfutures.expressinterface.fei.v1.2.side", ftypes.UINT16, {[0]="Buy", [1]="Sell"}, base.DEC, 0x0001)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.side_clearing_trade_price_type = ProtoField.new("Side Clearing Trade Price Type", "miax.onyxfutures.expressinterface.fei.v1.2.sideclearingtradepricetype", ftypes.UINT8, {[0]="Trade Clears At Execution Price", [1]="Trade Clears At Alternate Price"}, base.DEC, 0x08)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.simple_trade_id = ProtoField.new("Simple Trade Id", "miax.onyxfutures.expressinterface.fei.v1.2.simpletradeid", ftypes.UINT64, nil, nil, nil, "Exchange assigned unique Simple Trade ID. See notes below for details.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.size = ProtoField.new("Size", "miax.onyxfutures.expressinterface.fei.v1.2.size", ftypes.UINT32, nil, nil, nil, "Number of contracts to buy/sell.")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.2.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.stop_order_trigger_price = ProtoField.new("Stop Order Trigger Price", "miax.onyxfutures.expressinterface.fei.v1.2.stopordertriggerprice", ftypes.DOUBLE, nil, nil, nil, "Stop Order Trigger Price. This field is ignored for order types 1 (Limit Order), 3 (Market Order), 5 (Market Order with Protection), and 6 (Market-Limit Order).")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.strategy_creation_status = ProtoField.new("Strategy Creation Status", "miax.onyxfutures.expressinterface.fei.v1.2.strategycreationstatus", ftypes.STRING, nil, nil, nil, "Status")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.strategy_leg = ProtoField.new("Strategy Leg", "miax.onyxfutures.expressinterface.fei.v1.2.strategyleg", ftypes.STRING, nil, nil, nil, "Number of Legs")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.system_status = ProtoField.new("System Status", "miax.onyxfutures.expressinterface.fei.v1.2.systemstatus", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.text_memo = ProtoField.new("Text Memo", "miax.onyxfutures.expressinterface.fei.v1.2.textmemo", ftypes.STRING, nil, nil, nil, "Clearing Text Memo")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.time_in_force = ProtoField.new("Time In Force", "miax.onyxfutures.expressinterface.fei.v1.2.timeinforce", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.trade_date = ProtoField.new("Trade Date", "miax.onyxfutures.expressinterface.fei.v1.2.tradedate", ftypes.UINT16, nil, nil, nil, "Business Trade Date")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.trade_status = ProtoField.new("Trade Status", "miax.onyxfutures.expressinterface.fei.v1.2.tradestatus", ftypes.STRING, nil, nil, nil, "Possible values:")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.trading_collar_dollar_value = ProtoField.new("Trading Collar Dollar Value", "miax.onyxfutures.expressinterface.fei.v1.2.tradingcollardollarvalue", ftypes.DOUBLE, nil, nil, nil, "Custom Dollar Value Trading Collar Protection")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.onyxfutures.expressinterface.fei.v1.2.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-level protocol")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.onyxfutures.expressinterface.fei.v1.2.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "SesM unsequenced message type")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.unused_15 = ProtoField.new("Unused 15", "miax.onyxfutures.expressinterface.fei.v1.2.unused15", ftypes.UINT16, nil, base.DEC, 0xFFFE, "Reserved for future use")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.unused_2 = ProtoField.new("Unused 2", "miax.onyxfutures.expressinterface.fei.v1.2.unused2", ftypes.UINT8, nil, base.DEC, 0xC0, "Reserved for future use")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.unused_4 = ProtoField.new("Unused 4", "miax.onyxfutures.expressinterface.fei.v1.2.unused4", ftypes.UINT8, nil, base.DEC, 0xF0, "Reserved for future use")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.update_status = ProtoField.new("Update Status", "miax.onyxfutures.expressinterface.fei.v1.2.updatestatus", ftypes.STRING, nil, nil, nil, "Order status update")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.username = ProtoField.new("Username", "miax.onyxfutures.expressinterface.fei.v1.2.username", ftypes.STRING, nil, nil, nil, "issued by MIAX Futures Exchange during initial setup")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.version = ProtoField.new("Version", "miax.onyxfutures.expressinterface.fei.v1.2.version", ftypes.STRING, nil, nil, nil, "FEI version")

-- Miax OnyxFutures ExpressInterface Fei 1.2 Framing
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.packet = ProtoField.new("Packet", "miax.onyxfutures.expressinterface.fei.v1.2.packet", ftypes.STRING, nil, nil, nil, "SesM Packet")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.onyxfutures.expressinterface.fei.v1.2.sesmpacketheader", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.onyxfutures.expressinterface.fei.v1.2.sesmtcppacket", ftypes.STRING)

-- Miax OnyxFutures ExpressInterface 1.2 Application Messages
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cancel_order_request_message = ProtoField.new("Cancel Order Request Message", "miax.onyxfutures.expressinterface.fei.v1.2.cancelorderrequestmessage", ftypes.STRING, nil, nil, nil, "a cancel request for a resting order")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cancel_order_response = ProtoField.new("Cancel Order Response", "miax.onyxfutures.expressinterface.fei.v1.2.cancelorderresponse", ftypes.STRING, nil, nil, nil, "provides response to an Order Cancel Request")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cancel_reduce_size_order_notification = ProtoField.new("Cancel Reduce Size Order Notification", "miax.onyxfutures.expressinterface.fei.v1.2.cancelreducesizeordernotification", ftypes.STRING, nil, nil, nil, "used when Cancel Order Request is accepted by MIAX Futures Onyx or when unsolicited order cancels or order size reductions are to be notified to firms")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.complex_execution_notification = ProtoField.new("Complex Execution Notification", "miax.onyxfutures.expressinterface.fei.v1.2.complexexecutionnotification", ftypes.STRING, nil, nil, nil, "used to notify the firms of their Complex order executions")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.mass_cancel_request = ProtoField.new("Mass Cancel Request", "miax.onyxfutures.expressinterface.fei.v1.2.masscancelrequest", ftypes.STRING, nil, nil, nil, "request the cancellation of all orders based on the requested scope and the provided criteria")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.mass_cancel_response = ProtoField.new("Mass Cancel Response", "miax.onyxfutures.expressinterface.fei.v1.2.masscancelresponse", ftypes.STRING, nil, nil, nil, "used to inform the Firm about the status of their previous Mass Cancel Request")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.modify_order_notification = ProtoField.new("Modify Order Notification", "miax.onyxfutures.expressinterface.fei.v1.2.modifyordernotification", ftypes.STRING, nil, nil, nil, "published whenever a Modify Order Request is accepted by MIAX Futures Onyx")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.modify_order_request_message = ProtoField.new("Modify Order Request Message", "miax.onyxfutures.expressinterface.fei.v1.2.modifyorderrequestmessage", ftypes.STRING, nil, nil, nil, "use this format to send a request to modify a resting order")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.modify_order_response = ProtoField.new("Modify Order Response", "miax.onyxfutures.expressinterface.fei.v1.2.modifyorderresponse", ftypes.STRING, nil, nil, nil, "Acknowledgement for a Modify Order Request accepted by MIAX Futures Onyx")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.new_order_notification = ProtoField.new("New Order Notification", "miax.onyxfutures.expressinterface.fei.v1.2.newordernotification", ftypes.STRING, nil, nil, nil, "published whenever New Order Request is accepted by MIAX Futures Onyx")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.new_order_request_message = ProtoField.new("New Order Request Message", "miax.onyxfutures.expressinterface.fei.v1.2.neworderrequestmessage", ftypes.STRING, nil, nil, nil, "use this format to send a single New Order Request")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.new_order_response_message = ProtoField.new("New Order Response Message", "miax.onyxfutures.expressinterface.fei.v1.2.neworderresponsemessage", ftypes.STRING, nil, nil, nil, "An acknowledgement for a New Order Request accepted by MIAX Futures Onyx")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_status_update_notification = ProtoField.new("Order Status Update Notification", "miax.onyxfutures.expressinterface.fei.v1.2.orderstatusupdatenotification", ftypes.STRING, nil, nil, nil, "used to notify the firms about order status updates")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.simple_execution_notification = ProtoField.new("Simple Execution Notification", "miax.onyxfutures.expressinterface.fei.v1.2.simpleexecutionnotification", ftypes.STRING, nil, nil, nil, "used to notify the firms of their Simple order executions, trade corrections and cancellations")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.strategy_creation_request = ProtoField.new("Strategy Creation Request", "miax.onyxfutures.expressinterface.fei.v1.2.strategycreationrequest", ftypes.STRING, nil, nil, nil, "create a Complex Strategy order")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.strategy_creation_response_message = ProtoField.new("Strategy Creation Response Message", "miax.onyxfutures.expressinterface.fei.v1.2.strategycreationresponsemessage", ftypes.STRING, nil, nil, nil, "response to the Strategy Creation Request")
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.system_state_notification_message = ProtoField.new("System State Notification Message", "miax.onyxfutures.expressinterface.fei.v1.2.systemstatenotificationmessage", ftypes.STRING, nil, nil, nil, "published whenever system state events take place")

-- Miax OnyxFutures ExpressInterface Fei 1.2 Generated Fields
omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.strategy_leg_index = ProtoField.new("Strategy Leg Index", "miax.onyxfutures.expressinterface.fei.v1.2.strategylegindex", ftypes.UINT16)

-- Miax OnyxFutures ExpressInterface Fei 1.2 Expert Info
miax_onyxfutures_expressinterface_fei_v1_2.experts = {}
miax_onyxfutures_expressinterface_fei_v1_2.experts.undecoded = ProtoExpert.new("miax.onyxfutures.expressinterface.fei.v1.2.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_miax_onyxfutures_expressinterface_fei_v1_2.experts = { miax_onyxfutures_expressinterface_fei_v1_2.experts.undecoded }

-----------------------------------------------------------------------
-- Miax OnyxFutures ExpressInterface Fei 1.2 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
miax_onyxfutures_expressinterface_fei_v1_2.timestamp_format = 3


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax OnyxFutures ExpressInterface Fei 1.2 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.repeating_groups = true
show.padding = false
show.indexes = true

-- Register Miax OnyxFutures ExpressInterface Fei 1.2 Show Options
omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_application_messages then
    show.application_messages = omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_headers then
    show.headers = omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_headers
  end
  if show.padding ~= omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_padding then
    show.padding = omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_padding
  end
  if show.repeating_groups ~= omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_repeating_groups then
    show.repeating_groups = omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_repeating_groups
  end
  if show.structs ~= omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_structs then
    show.structs = omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_structs
  end
  if show.indexes ~= omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_indexes then
    show.indexes = omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.show_indexes
  end
  if miax_onyxfutures_expressinterface_fei_v1_2.timestamp_format ~= omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.timestamp_format then
    miax_onyxfutures_expressinterface_fei_v1_2.timestamp_format = omi_miax_onyxfutures_expressinterface_fei_v1_2.prefs.timestamp_format
  end
end


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


-- Mark a sized group whose fields read past its end; raise any other failure as it was
local function undecoded(failure, parent, expert, text)
  if not string.find(tostring(failure), "Range is out of bounds", 1, true) then
    error(failure, 0)
  end

  parent:add_proto_expert_info(expert, text)
end
-----------------------------------------------------------------------
-- Miax OnyxFutures ExpressInterface Fei 1.2 Fields
-----------------------------------------------------------------------

-- Account
miax_onyxfutures_expressinterface_fei_v1_2.account = {}

-- Size: Account
miax_onyxfutures_expressinterface_fei_v1_2.account.size = 16

-- Display: Account
miax_onyxfutures_expressinterface_fei_v1_2.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
miax_onyxfutures_expressinterface_fei_v1_2.account.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.account.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_2.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.account, range, value, display)

  return offset + length, value
end

-- Action
miax_onyxfutures_expressinterface_fei_v1_2.action = {}

-- Size: Action
miax_onyxfutures_expressinterface_fei_v1_2.action.size = 1

-- Display: Action
miax_onyxfutures_expressinterface_fei_v1_2.action.labels = {
  ["B"] = "Action: Block Only (B)",
  ["M"] = "Action: Mass Cancel Only (M)",
  ["X"] = "Action: Block And Mass Cancel (X)",
  ["R"] = "Action: Remove Blocking For The Specified Scope (R)",
}

miax_onyxfutures_expressinterface_fei_v1_2.action.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
miax_onyxfutures_expressinterface_fei_v1_2.action.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.action, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_onyxfutures_expressinterface_fei_v1_2.application_protocol = {}

-- Size: Application Protocol
miax_onyxfutures_expressinterface_fei_v1_2.application_protocol.size = 8

-- Display: Application Protocol
miax_onyxfutures_expressinterface_fei_v1_2.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_onyxfutures_expressinterface_fei_v1_2.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.application_protocol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_2.cancel_reason = {}

-- Size: Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_2.cancel_reason.size = 1

-- Display: Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_2.cancel_reason.labels = {
  ["A"] = "Cancel Reason: Min Quantity Not Satisfied Or Fok Min Quantity Not Satisfied (A)",
  ["B"] = "Cancel Reason: Reserved For Future Use (B)",
  ["C"] = "Cancel Reason: Time In Force Canceled (C)",
  ["D"] = "Cancel Reason: Auto Cancel On Disconnect Acod (D)",
  ["E"] = "Cancel Reason: Breached Daily Trading Price Range (E)",
  ["F"] = "Cancel Reason: Auto Cancel On System Failure Acosf (F)",
  ["G"] = "Cancel Reason: Trading Collar Protection (G)",
  ["H"] = "Cancel Reason: Canceled By Helpdesk Or Over Miax Member Firm Portal (H)",
  ["I"] = "Cancel Reason: Gtcgtd Customer Order Introduction For Regulated Account (I)",
  ["J"] = "Cancel Reason: Mass Cancel Mpid Or Product Group Product Type By User (J)",
  ["K"] = "Cancel Reason: Mass Cancel Mpid Or Product Group Product Type By Helpdesk Or Over Miax Member Firm Portal (K)",
  ["L"] = "Cancel Reason: Mass Cancel Session By User (L)",
  ["M"] = "Cancel Reason: Mass Cancel Session By Helpdesk Or Over Miax Member Firm Portal (M)",
  ["N"] = "Cancel Reason: Crossing Strategy Match Price Range Smpr (N)",
  ["O"] = "Cancel Reason: Crm Protection (O)",
  ["P"] = "Cancel Reason: Drop Copy Acodacosf Event (P)",
  ["Q"] = "Cancel Reason: Marketable Order Outside Strategy Match Price Range Smpr (Q)",
  ["R"] = "Cancel Reason: Gtcgtd Order Introduction Breached Per Order Risk Metrics (R)",
  ["S"] = "Cancel Reason: Gtcgtd Firm Order Introduction For Segregated Account (S)",
  ["T"] = "Cancel Reason: Order Not Allowed When Eth Clearing Not Enabled (T)",
  ["U"] = "Cancel Reason: Canceled By User Through Order Entry Session (U)",
  ["V"] = "Cancel Reason: Canceled By User Through A Session Other Than The Order Entry Session (V)",
  ["W"] = "Cancel Reason: Stop Order No Longer Valid (W)",
  ["1"] = "Cancel Reason: Cancel Newest Instruction (1)",
  ["2"] = "Cancel Reason: Cancel Oldest Instruction (2)",
  ["3"] = "Cancel Reason: Cancel Both Instruction (3)",
  ["4"] = "Cancel Reason: Decrement And Cancel Instruction (4)",
  ["Z"] = "Cancel Reason: Undefined Reason (Z)",
  ["*"] = "Cancel Reason: Downgraded From Older Version (*)",
}

miax_onyxfutures_expressinterface_fei_v1_2.cancel_reason.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.cancel_reason.labels[value] or "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_2.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Status
miax_onyxfutures_expressinterface_fei_v1_2.cancel_status = {}

-- Size: Cancel Status
miax_onyxfutures_expressinterface_fei_v1_2.cancel_status.size = 1

-- Display: Cancel Status
miax_onyxfutures_expressinterface_fei_v1_2.cancel_status.display = function(value)
  if value == " " then
    return "Cancel Status: Successful (<whitespace>)"
  end
  if value == "A" then
    return "Cancel Status: Duplicate Client Order Id (A)"
  end
  if value == "B" then
    return "Cancel Status: Not In Live Order Window (B)"
  end
  if value == "D" then
    return "Cancel Status: Cannot Find Order With Target Client Order Id (D)"
  end
  if value == "I" then
    return "Cancel Status: Invalid Mpid (I)"
  end
  if value == "J" then
    return "Cancel Status: Mpid Does Not Match Target Order (J)"
  end
  if value == "N" then
    return "Cancel Status: Invalid For Current Trading Status (N)"
  end
  if value == "O" then
    return "Cancel Status: Invalid Client Order Id (O)"
  end
  if value == "S" then
    return "Cancel Status: Invalid Instrument Id (S)"
  end
  if value == "T" then
    return "Cancel Status: Invalid Target Order Id (T)"
  end
  if value == "e" then
    return "Cancel Status: Invalid Order Id Or Its Use (e)"
  end
  if value == "f" then
    return "Cancel Status: Request Not Permitted (f)"
  end
  if value == "g" then
    return "Cancel Status: Invalid Operator Id (g)"
  end
  if value == "h" then
    return "Cancel Status: Invalid Operator Location (h)"
  end
  if value == "Z" then
    return "Cancel Status: Undefined Reason (Z)"
  end
  if value == "*" then
    return "Cancel Status: Downgraded From Older Version (*)"
  end

  return "Cancel Status: Unknown("..value..")"
end

-- Dissect: Cancel Status
miax_onyxfutures_expressinterface_fei_v1_2.cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.cancel_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cancel_status, range, value, display)

  return offset + length, value
end

-- Client Order Id
miax_onyxfutures_expressinterface_fei_v1_2.client_order_id = {}

-- Size: Client Order Id
miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size = 20

-- Display: Client Order Id
miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Order Id: No Value"
  end

  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Client Send Time
miax_onyxfutures_expressinterface_fei_v1_2.client_send_time = {}

-- Size: Client Send Time
miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.size = 8

-- Dissect: Client Send Time
miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.client_send_time
  if miax_onyxfutures_expressinterface_fei_v1_2.timestamp_format == 3 then field = omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.client_send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_2.complex_trade_id = {}

-- Size: Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_2.complex_trade_id.size = 8

-- Display: Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_2.complex_trade_id.display = function(value)
  return "Complex Trade Id: "..value
end

-- Dissect: Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_2.complex_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.complex_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.complex_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.complex_trade_id, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_onyxfutures_expressinterface_fei_v1_2.computer_id = {}

-- Size: Computer Id
miax_onyxfutures_expressinterface_fei_v1_2.computer_id.size = 8

-- Display: Computer Id
miax_onyxfutures_expressinterface_fei_v1_2.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_onyxfutures_expressinterface_fei_v1_2.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_expressinterface_fei_v1_2.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_onyxfutures_expressinterface_fei_v1_2.correction_number = {}

-- Size: Correction Number
miax_onyxfutures_expressinterface_fei_v1_2.correction_number.size = 1

-- Display: Correction Number
miax_onyxfutures_expressinterface_fei_v1_2.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_onyxfutures_expressinterface_fei_v1_2.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.correction_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Cti Code
miax_onyxfutures_expressinterface_fei_v1_2.cti_code = {}

-- Size: Cti Code
miax_onyxfutures_expressinterface_fei_v1_2.cti_code.size = 1

-- Display: Cti Code
miax_onyxfutures_expressinterface_fei_v1_2.cti_code.labels = {
  ["1"] = "Cti Code: Cti 1 (1)",
  ["2"] = "Cti Code: Cti 2 (2)",
  ["3"] = "Cti Code: Cti 3 (3)",
  ["4"] = "Cti Code: Cti 4 (4)",
}

miax_onyxfutures_expressinterface_fei_v1_2.cti_code.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.cti_code.labels[value] or "Cti Code: Unknown("..value..")"
end

-- Dissect: Cti Code
miax_onyxfutures_expressinterface_fei_v1_2.cti_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.cti_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.cti_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cti_code, range, value, display)

  return offset + length, value
end

-- Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction = {}

-- Size: Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.size = 1

-- Display: Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.labels = {
  ["W"] = "Customer Order Handling Instruction: Desk (W)",
  ["Y"] = "Customer Order Handling Instruction: Electronic (Y)",
  ["C"] = "Customer Order Handling Instruction: Vendor Provided Platform Billed By Executing Broker (C)",
  ["G"] = "Customer Order Handling Instruction: Sponsored Access Via Exchange Api Or Fix Provided By Executing Broker (G)",
  ["H"] = "Customer Order Handling Instruction: Premium Algorithmic Trading Provider Billed By Executing Broker (H)",
  ["D"] = "Customer Order Handling Instruction: Other (D)",
}

miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.labels[value] or "Customer Order Handling Instruction: Unknown("..value..")"
end

-- Dissect: Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.customer_order_handling_instruction, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.end_sequence_number = {}

-- Size: End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Execution Id
miax_onyxfutures_expressinterface_fei_v1_2.execution_id = {}

-- Size: Execution Id
miax_onyxfutures_expressinterface_fei_v1_2.execution_id.size = 8

-- Display: Execution Id
miax_onyxfutures_expressinterface_fei_v1_2.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_onyxfutures_expressinterface_fei_v1_2.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Instrument Id
miax_onyxfutures_expressinterface_fei_v1_2.instrument_id = {}

-- Size: Instrument Id
miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size = 4

-- Display: Instrument Id
miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Last Net Price
miax_onyxfutures_expressinterface_fei_v1_2.last_net_price = {}

-- Size: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_2.last_net_price.size = 8

-- Display: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_2.last_net_price.display = function(value)
  return "Last Net Price: "..value
end

-- Translate: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_2.last_net_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_2.last_net_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.last_net_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_expressinterface_fei_v1_2.last_net_price.translate(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_2.last_net_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.last_net_price, range, value, display)

  return offset + length, value
end

-- Last Price
miax_onyxfutures_expressinterface_fei_v1_2.last_price = {}

-- Size: Last Price
miax_onyxfutures_expressinterface_fei_v1_2.last_price.size = 8

-- Display: Last Price
miax_onyxfutures_expressinterface_fei_v1_2.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
miax_onyxfutures_expressinterface_fei_v1_2.last_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Last Price
miax_onyxfutures_expressinterface_fei_v1_2.last_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_expressinterface_fei_v1_2.last_price.translate(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_2.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Size
miax_onyxfutures_expressinterface_fei_v1_2.last_size = {}

-- Size: Last Size
miax_onyxfutures_expressinterface_fei_v1_2.last_size.size = 4

-- Display: Last Size
miax_onyxfutures_expressinterface_fei_v1_2.last_size.display = function(value)
  return "Last Size: "..value
end

-- Dissect: Last Size
miax_onyxfutures_expressinterface_fei_v1_2.last_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.last_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.last_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.last_size, range, value, display)

  return offset + length, value
end

-- Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty = {}

-- Size: Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.size = 4

-- Display: Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_2.leg_ratio = {}

-- Size: Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_2.leg_ratio.size = 4

-- Display: Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_2.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_2.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_2.liquidity_indicator = {}

-- Size: Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_2.liquidity_indicator.size = 3

-- Display: Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_2.liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_2.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.liquidity_indicator.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_2.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Login Status
miax_onyxfutures_expressinterface_fei_v1_2.login_status = {}

-- Size: Login Status
miax_onyxfutures_expressinterface_fei_v1_2.login_status.size = 1

-- Display: Login Status
miax_onyxfutures_expressinterface_fei_v1_2.login_status.display = function(value)
  if value == " " then
    return "Login Status: Successful (<whitespace>)"
  end
  if value == "X" then
    return "Login Status: Rejected (X)"
  end
  if value == "S" then
    return "Login Status: Requested Session Is Not Available (S)"
  end
  if value == "N" then
    return "Login Status: Invalid Start Sequence Number Requested (N)"
  end
  if value == "I" then
    return "Login Status: Incompatible Session Protocol Version (I)"
  end
  if value == "A" then
    return "Login Status: Incompatible Application Protocol Version (A)"
  end
  if value == "L" then
    return "Login Status: Request Rejected Because Client Already Logged In (L)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
miax_onyxfutures_expressinterface_fei_v1_2.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_onyxfutures_expressinterface_fei_v1_2.logout_reason = {}

-- Size: Logout Reason
miax_onyxfutures_expressinterface_fei_v1_2.logout_reason.size = 1

-- Display: Logout Reason
miax_onyxfutures_expressinterface_fei_v1_2.logout_reason.display = function(value)
  if value == " " then
    return "Logout Reason: Graceful Logout (<whitespace>)"
  end
  if value == "B" then
    return "Logout Reason: Bad Packet (B)"
  end
  if value == "L" then
    return "Logout Reason: Timed Out (L)"
  end
  if value == "A" then
    return "Logout Reason: Application Terminating Connection (A)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
miax_onyxfutures_expressinterface_fei_v1_2.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_onyxfutures_expressinterface_fei_v1_2.logout_text = {}

-- Display: Logout Text
miax_onyxfutures_expressinterface_fei_v1_2.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_onyxfutures_expressinterface_fei_v1_2.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Mass Cancel Status
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_status = {}

-- Size: Mass Cancel Status
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_status.size = 1

-- Display: Mass Cancel Status
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_status.display = function(value)
  if value == " " then
    return "Mass Cancel Status: Successful (<whitespace>)"
  end
  if value == "A" then
    return "Mass Cancel Status: Invalid Action (A)"
  end
  if value == "B" then
    return "Mass Cancel Status: Invalid Scope (B)"
  end
  if value == "C" then
    return "Mass Cancel Status: Invalid Purge Group (C)"
  end
  if value == "D" then
    return "Mass Cancel Status: Not In Live Order Window (D)"
  end
  if value == "E" then
    return "Mass Cancel Status: Invalid Product Group Code (E)"
  end
  if value == "F" then
    return "Mass Cancel Status: Invalid Product Type (F)"
  end
  if value == "I" then
    return "Mass Cancel Status: Invalid Mpid (I)"
  end
  if value == "O" then
    return "Mass Cancel Status: Invalid Client Order Id (O)"
  end
  if value == "g" then
    return "Mass Cancel Status: Invalid Operator Id (g)"
  end
  if value == "h" then
    return "Mass Cancel Status: Invalid Operator Location (h)"
  end
  if value == "*" then
    return "Mass Cancel Status: Downgraded From Older Version (*)"
  end
  if value == "Z" then
    return "Mass Cancel Status: Undefined (Z)"
  end

  return "Mass Cancel Status: Unknown("..value..")"
end

-- Dissect: Mass Cancel Status
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.mass_cancel_status, range, value, display)

  return offset + length, value
end

-- Matching Engine Time
miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time = {}

-- Size: Matching Engine Time
miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size = 8

-- Dissect: Matching Engine Time
miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.matching_engine_time
  if miax_onyxfutures_expressinterface_fei_v1_2.timestamp_format == 3 then field = omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.matching_engine_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Min Qty
miax_onyxfutures_expressinterface_fei_v1_2.min_qty = {}

-- Size: Min Qty
miax_onyxfutures_expressinterface_fei_v1_2.min_qty.size = 4

-- Display: Min Qty
miax_onyxfutures_expressinterface_fei_v1_2.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
miax_onyxfutures_expressinterface_fei_v1_2.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Status
miax_onyxfutures_expressinterface_fei_v1_2.modify_status = {}

-- Size: Modify Status
miax_onyxfutures_expressinterface_fei_v1_2.modify_status.size = 1

-- Display: Modify Status
miax_onyxfutures_expressinterface_fei_v1_2.modify_status.display = function(value)
  if value == " " then
    return "Modify Status: Successful (<whitespace>)"
  end
  if value == "A" then
    return "Modify Status: Duplicate Client Order Id (A)"
  end
  if value == "B" then
    return "Modify Status: Not In Live Order Window (B)"
  end
  if value == "D" then
    return "Modify Status: Cannot Find Order With Target Client Order Id (D)"
  end
  if value == "E" then
    return "Modify Status: Invalid Customer Order Handling Instruction (E)"
  end
  if value == "F" then
    return "Modify Status: Invalid For Time In Force (F)"
  end
  if value == "I" then
    return "Modify Status: Invalid Mpid (I)"
  end
  if value == "J" then
    return "Modify Status: Mpid Does Not Match Target Order (J)"
  end
  if value == "L" then
    return "Modify Status: Invalid Self Trade Protection Group (L)"
  end
  if value == "M" then
    return "Modify Status: Invalid Use Self Trade Protection Group (M)"
  end
  if value == "N" then
    return "Modify Status: Invalid For Current Trading Status (N)"
  end
  if value == "O" then
    return "Modify Status: Invalid Client Order Id (O)"
  end
  if value == "P" then
    return "Modify Status: Invalid Price (P)"
  end
  if value == "Q" then
    return "Modify Status: Invalid Size (Q)"
  end
  if value == "S" then
    return "Modify Status: Invalid Instrument Id (S)"
  end
  if value == "T" then
    return "Modify Status: Invalid Target Client Order Id (T)"
  end
  if value == "V" then
    return "Modify Status: Invalid Purge Group (V)"
  end
  if value == "W" then
    return "Modify Status: Invalid Order Expiry Date Or Its Use (W)"
  end
  if value == "Y" then
    return "Modify Status: Blocked By User Mass Cancel (Y)"
  end
  if value == "a" then
    return "Modify Status: Blocked By Mfp Help Desk Mass Cancel (a)"
  end
  if value == "b" then
    return "Modify Status: Blocked By Crm (b)"
  end
  if value == "g" then
    return "Modify Status: Invalid Operator Id (g)"
  end
  if value == "h" then
    return "Modify Status: Invalid Operator Location (h)"
  end
  if value == "k" then
    return "Modify Status: Blocked By Drop Copy Acodacosf Event (k)"
  end
  if value == "l" then
    return "Modify Status: Daily Trading Limit Breach (l)"
  end
  if value == "m" then
    return "Modify Status: Trading Collar Protection (m)"
  end
  if value == "p" then
    return "Modify Status: Restriction For Current Trading Session (p)"
  end
  if value == "q" then
    return "Modify Status: Product Restriction (q)"
  end
  if value == "r" then
    return "Modify Status: Customer Order For Regulated Account (r)"
  end
  if value == "s" then
    return "Modify Status: Firm Order For Segregated Account (s)"
  end
  if value == "Z" then
    return "Modify Status: Undefined Reason (Z)"
  end
  if value == "*" then
    return "Modify Status: Downgraded From Older Version (*)"
  end

  return "Modify Status: Unknown("..value..")"
end

-- Dissect: Modify Status
miax_onyxfutures_expressinterface_fei_v1_2.modify_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.modify_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.modify_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.modify_status, range, value, display)

  return offset + length, value
end

-- Mp Id
miax_onyxfutures_expressinterface_fei_v1_2.mp_id = {}

-- Size: Mp Id
miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size = 5

-- Display: Mp Id
miax_onyxfutures_expressinterface_fei_v1_2.mp_id.display = function(value)
  return "Mp Id: "..value
end

-- Dissect: Mp Id
miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.mp_id, range, value, display)

  return offset + length, value
end

-- Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_2.number_of_legs = {}

-- Size: Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_2.number_of_legs.size = 1

-- Display: Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_2.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_2.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Operator Id
miax_onyxfutures_expressinterface_fei_v1_2.operator_id = {}

-- Size: Operator Id
miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size = 18

-- Display: Operator Id
miax_onyxfutures_expressinterface_fei_v1_2.operator_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Operator Id: No Value"
  end

  return "Operator Id: "..value
end

-- Dissect: Operator Id
miax_onyxfutures_expressinterface_fei_v1_2.operator_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.operator_id, range, value, display)

  return offset + length, value
end

-- Operator Location
miax_onyxfutures_expressinterface_fei_v1_2.operator_location = {}

-- Size: Operator Location
miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size = 6

-- Display: Operator Location
miax_onyxfutures_expressinterface_fei_v1_2.operator_location.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Operator Location: No Value"
  end

  return "Operator Location: "..value
end

-- Dissect: Operator Location
miax_onyxfutures_expressinterface_fei_v1_2.operator_location.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.operator_location, range, value, display)

  return offset + length, value
end

-- Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date = {}

-- Size: Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.size = 2

-- Display: Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Order Expiry Date: Not Applicable"
  end

  return string.format("Order Expiry Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_expiry_date, range, value, display)

  return offset + length, value
end

-- Order Id
miax_onyxfutures_expressinterface_fei_v1_2.order_id = {}

-- Size: Order Id
miax_onyxfutures_expressinterface_fei_v1_2.order_id.size = 8

-- Display: Order Id
miax_onyxfutures_expressinterface_fei_v1_2.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_onyxfutures_expressinterface_fei_v1_2.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Status
miax_onyxfutures_expressinterface_fei_v1_2.order_status = {}

-- Size: Order Status
miax_onyxfutures_expressinterface_fei_v1_2.order_status.size = 1

-- Display: Order Status
miax_onyxfutures_expressinterface_fei_v1_2.order_status.display = function(value)
  if value == " " then
    return "Order Status: Successful (<whitespace>)"
  end
  if value == "A" then
    return "Order Status: Duplicate Client Order Id (A)"
  end
  if value == "B" then
    return "Order Status: Not In Live Order Window (B)"
  end
  if value == "C" then
    return "Order Status: Invalid Order Type (C)"
  end
  if value == "E" then
    return "Order Status: Invalid Customer Order Handling Instruction (E)"
  end
  if value == "F" then
    return "Order Status: Invalid Time In Force Or Its Use (F)"
  end
  if value == "G" then
    return "Order Status: Invalid Self Trade Protection Level (G)"
  end
  if value == "H" then
    return "Order Status: Invalid Self Trade Protection Instruction (H)"
  end
  if value == "I" then
    return "Order Status: Invalid Mpid (I)"
  end
  if value == "K" then
    return "Order Status: Invalid Use Self Trade Protection Instruction (K)"
  end
  if value == "L" then
    return "Order Status: Invalid Self Trade Protection Group (L)"
  end
  if value == "M" then
    return "Order Status: Invalid Use Self Trade Protection Group (M)"
  end
  if value == "N" then
    return "Order Status: Invalid For Current Trading Status (N)"
  end
  if value == "O" then
    return "Order Status: Invalid Client Order Id (O)"
  end
  if value == "P" then
    return "Order Status: Invalid Price (P)"
  end
  if value == "Q" then
    return "Order Status: Invalid Size (Q)"
  end
  if value == "R" then
    return "Order Status: Invalid Use Minimum Qty (R)"
  end
  if value == "S" then
    return "Order Status: Invalid Instrument Id (S)"
  end
  if value == "U" then
    return "Order Status: Invalid Use Order Type (U)"
  end
  if value == "V" then
    return "Order Status: Invalid Purge Group (V)"
  end
  if value == "W" then
    return "Order Status: Invalid Order Expiry Date Or Its Use (W)"
  end
  if value == "Y" then
    return "Order Status: Blocked By User Mass Cancel (Y)"
  end
  if value == "a" then
    return "Order Status: Blocked By Mfp Help Desk Mass Cancel (a)"
  end
  if value == "b" then
    return "Order Status: Blocked By Crm (b)"
  end
  if value == "c" then
    return "Order Status: Invalid Account (c)"
  end
  if value == "d" then
    return "Order Status: Invalid Trading Collar (d)"
  end
  if value == "g" then
    return "Order Status: Invalid Operator Id (g)"
  end
  if value == "h" then
    return "Order Status: Invalid Operator Location (h)"
  end
  if value == "i" then
    return "Order Status: Invalid Cti Code (i)"
  end
  if value == "j" then
    return "Order Status: Invalid Text Memo (j)"
  end
  if value == "k" then
    return "Order Status: Blocked By Drop Copy Acodacosf Event (k)"
  end
  if value == "l" then
    return "Order Status: Daily Trading Limit Breach (l)"
  end
  if value == "m" then
    return "Order Status: Trading Collar Protection (m)"
  end
  if value == "n" then
    return "Order Status: Duplicate Order Protection (n)"
  end
  if value == "o" then
    return "Order Status: Order Type Restriction (o)"
  end
  if value == "p" then
    return "Order Status: Restriction For Current Trading Session (p)"
  end
  if value == "q" then
    return "Order Status: Product Restriction (q)"
  end
  if value == "r" then
    return "Order Status: Customer Order For Regulated Account (r)"
  end
  if value == "s" then
    return "Order Status: Firm Order For Segregated Account (s)"
  end
  if value == "t" then
    return "Order Status: Order Not Allowed When Eth Clearing Not Enabled (t)"
  end
  if value == "u" then
    return "Order Status: No Mbbo For Market Order With Protection Or Market Limit Order (u)"
  end
  if value == "Z" then
    return "Order Status: Undefined Reason (Z)"
  end
  if value == "*" then
    return "Order Status: Downgraded From Older Version (*)"
  end

  return "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
miax_onyxfutures_expressinterface_fei_v1_2.order_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Type
miax_onyxfutures_expressinterface_fei_v1_2.order_type = {}

-- Size: Order Type
miax_onyxfutures_expressinterface_fei_v1_2.order_type.size = 1

-- Display: Order Type
miax_onyxfutures_expressinterface_fei_v1_2.order_type.labels = {
  ["1"] = "Order Type: Limit Order (1)",
  ["2"] = "Order Type: Stop Limit Order (2)",
  ["3"] = "Order Type: Market Order (3)",
  ["4"] = "Order Type: Stop Market Order (4)",
  ["5"] = "Order Type: Market Order With Protection (5)",
  ["6"] = "Order Type: Market Limit Order (6)",
  ["7"] = "Order Type: Stop Market Order With Protection (7)",
}

miax_onyxfutures_expressinterface_fei_v1_2.order_type.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
miax_onyxfutures_expressinterface_fei_v1_2.order_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id = {}

-- Size: Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.size = 20

-- Display: Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order Id: No Value"
  end

  return "Original Client Order Id: "..value
end

-- Dissect: Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.original_client_order_id, range, value, display)

  return offset + length, value
end

-- Price
miax_onyxfutures_expressinterface_fei_v1_2.price = {}

-- Size: Price
miax_onyxfutures_expressinterface_fei_v1_2.price.size = 8

-- Display: Price
miax_onyxfutures_expressinterface_fei_v1_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_onyxfutures_expressinterface_fei_v1_2.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
miax_onyxfutures_expressinterface_fei_v1_2.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_expressinterface_fei_v1_2.price.translate(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.price, range, value, display)

  return offset + length, value
end

-- Product Group Code
miax_onyxfutures_expressinterface_fei_v1_2.product_group_code = {}

-- Size: Product Group Code
miax_onyxfutures_expressinterface_fei_v1_2.product_group_code.size = 6

-- Display: Product Group Code
miax_onyxfutures_expressinterface_fei_v1_2.product_group_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Group Code: No Value"
  end

  return "Product Group Code: "..value
end

-- Dissect: Product Group Code
miax_onyxfutures_expressinterface_fei_v1_2.product_group_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.product_group_code.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_2.product_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.product_group_code, range, value, display)

  return offset + length, value
end

-- Product Type
miax_onyxfutures_expressinterface_fei_v1_2.product_type = {}

-- Size: Product Type
miax_onyxfutures_expressinterface_fei_v1_2.product_type.size = 1

-- Display: Product Type
miax_onyxfutures_expressinterface_fei_v1_2.product_type.labels = {
  ["O"] = "Product Type: Outright Futures (O)",
  ["S"] = "Product Type: Standard Calendar Spread (S)",
  ["E"] = "Product Type: Equity Calendar Spread (E)",
  ["B"] = "Product Type: Butterfly Spread (B)",
}

miax_onyxfutures_expressinterface_fei_v1_2.product_type.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.product_type.labels[value] or "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
miax_onyxfutures_expressinterface_fei_v1_2.product_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.product_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.product_type, range, value, display)

  return offset + length, value
end

-- Purge Group
miax_onyxfutures_expressinterface_fei_v1_2.purge_group = {}

-- Size: Purge Group
miax_onyxfutures_expressinterface_fei_v1_2.purge_group.size = 1

-- Display: Purge Group
miax_onyxfutures_expressinterface_fei_v1_2.purge_group.display = function(value)
  return "Purge Group: "..value
end

-- Dissect: Purge Group
miax_onyxfutures_expressinterface_fei_v1_2.purge_group.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.purge_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.purge_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.purge_group, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
miax_onyxfutures_expressinterface_fei_v1_2.requested_session = {}

-- Size: Requested Session
miax_onyxfutures_expressinterface_fei_v1_2.requested_session.size = 1

-- Display: Requested Session
miax_onyxfutures_expressinterface_fei_v1_2.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
miax_onyxfutures_expressinterface_fei_v1_2.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.requested_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 10
miax_onyxfutures_expressinterface_fei_v1_2.reserved_10 = {}

-- Size: Reserved 10
miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size = 10

-- Display: Reserved 10
miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_10, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 16
miax_onyxfutures_expressinterface_fei_v1_2.reserved_16 = {}

-- Size: Reserved 16
miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.size = 16

-- Display: Reserved 16
miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_16, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 30
miax_onyxfutures_expressinterface_fei_v1_2.reserved_30 = {}

-- Size: Reserved 30
miax_onyxfutures_expressinterface_fei_v1_2.reserved_30.size = 30

-- Display: Reserved 30
miax_onyxfutures_expressinterface_fei_v1_2.reserved_30.display = function(value)
  return "Reserved 30: "..value
end

-- Dissect: Reserved 30
miax_onyxfutures_expressinterface_fei_v1_2.reserved_30.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.reserved_30.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_expressinterface_fei_v1_2.reserved_30.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_30, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 32
miax_onyxfutures_expressinterface_fei_v1_2.reserved_32 = {}

-- Size: Reserved 32
miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size = 32

-- Display: Reserved 32
miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_32, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 8
miax_onyxfutures_expressinterface_fei_v1_2.reserved_8 = {}

-- Size: Reserved 8
miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.size = 8

-- Display: Reserved 8
miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 9
miax_onyxfutures_expressinterface_fei_v1_2.reserved_9 = {}

-- Size: Reserved 9
miax_onyxfutures_expressinterface_fei_v1_2.reserved_9.size = 9

-- Display: Reserved 9
miax_onyxfutures_expressinterface_fei_v1_2.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
miax_onyxfutures_expressinterface_fei_v1_2.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.reserved_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_expressinterface_fei_v1_2.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.reserved_9, range, range:raw(), display)

  return offset + length, value
end

-- Scope
miax_onyxfutures_expressinterface_fei_v1_2.scope = {}

-- Size: Scope
miax_onyxfutures_expressinterface_fei_v1_2.scope.size = 1

-- Display: Scope
miax_onyxfutures_expressinterface_fei_v1_2.scope.labels = {
  ["M"] = "Scope: Mpid (M)",
  ["P"] = "Scope: Mpid Product Group (P)",
  ["T"] = "Scope: Mpid Product Group Product Type (T)",
  ["S"] = "Scope: Session (S)",
}

miax_onyxfutures_expressinterface_fei_v1_2.scope.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.scope.labels[value] or "Scope: Unknown("..value..")"
end

-- Dissect: Scope
miax_onyxfutures_expressinterface_fei_v1_2.scope.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.scope, range, value, display)

  return offset + length, value
end

-- Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group = {}

-- Size: Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.size = 2

-- Display: Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Self Trade Protection Group: No Value"
  end

  return "Self Trade Protection Group: "..value
end

-- Dissect: Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.self_trade_protection_group, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.sequence_number = {}

-- Size: Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.sequence_number.size = 8

-- Display: Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message_type.size = 2

-- Display: Sequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message_type.labels = {
  ["NR"] = "Sequenced Message Type: New Order Response Message (NR)",
  ["MR"] = "Sequenced Message Type: Modify Order Response (MR)",
  ["CR"] = "Sequenced Message Type: Cancel Order Response (CR)",
  ["XR"] = "Sequenced Message Type: Mass Cancel Response (XR)",
  ["SR"] = "Sequenced Message Type: Strategy Creation Response Message (SR)",
  ["SN"] = "Sequenced Message Type: System State Notification Message (SN)",
  ["O1"] = "Sequenced Message Type: New Order Notification (O1)",
  ["MN"] = "Sequenced Message Type: Modify Order Notification (MN)",
  ["XN"] = "Sequenced Message Type: Cancel Reduce Size Order Notification (XN)",
  ["OS"] = "Sequenced Message Type: Order Status Update Notification (OS)",
  ["EN"] = "Sequenced Message Type: Simple Execution Notification (EN)",
  ["CN"] = "Sequenced Message Type: Complex Execution Notification (CN)",
}

miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message_type.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_type.labels = {
  ["S"] = "Sesm Packet Type: Sequenced Data Packet (S)",
  ["U"] = "Sesm Packet Type: Unsequenced Data Packet (U)",
  ["L"] = "Sesm Packet Type: Login Request (L)",
  ["R"] = "Sesm Packet Type: Login Response (R)",
  ["C"] = "Sesm Packet Type: Synchronization Complete (C)",
  ["A"] = "Sesm Packet Type: Retransmission Request (A)",
  ["X"] = "Sesm Packet Type: Logout Request (X)",
  ["G"] = "Sesm Packet Type: Goodbye Packet (G)",
  ["E"] = "Sesm Packet Type: End Of Session (E)",
  ["0"] = "Sesm Packet Type: Server Heartbeat (0)",
  ["1"] = "Sesm Packet Type: Client Heartbeat (1)",
}

miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_type.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_type.labels[value] or "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_onyxfutures_expressinterface_fei_v1_2.sesm_version = {}

-- Size: Sesm Version
miax_onyxfutures_expressinterface_fei_v1_2.sesm_version.size = 5

-- Display: Sesm Version
miax_onyxfutures_expressinterface_fei_v1_2.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_onyxfutures_expressinterface_fei_v1_2.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_expressinterface_fei_v1_2.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_onyxfutures_expressinterface_fei_v1_2.session_id = {}

-- Size: Session Id
miax_onyxfutures_expressinterface_fei_v1_2.session_id.size = 1

-- Display: Session Id
miax_onyxfutures_expressinterface_fei_v1_2.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_onyxfutures_expressinterface_fei_v1_2.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.session_id, range, value, display)

  return offset + length, value
end

-- Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_2.simple_trade_id = {}

-- Size: Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_2.simple_trade_id.size = 8

-- Display: Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_2.simple_trade_id.display = function(value)
  return "Simple Trade Id: "..value
end

-- Dissect: Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_2.simple_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.simple_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.simple_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.simple_trade_id, range, value, display)

  return offset + length, value
end

-- Size
miax_onyxfutures_expressinterface_fei_v1_2.size = {}

-- Size: Size
miax_onyxfutures_expressinterface_fei_v1_2.size.size = 4

-- Display: Size
miax_onyxfutures_expressinterface_fei_v1_2.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_onyxfutures_expressinterface_fei_v1_2.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.size, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.start_sequence_number = {}

-- Size: Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_2.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price = {}

-- Size: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.size = 8

-- Display: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.display = function(value)
  return "Stop Order Trigger Price: "..value
end

-- Translate: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.translate(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.stop_order_trigger_price, range, value, display)

  return offset + length, value
end

-- Strategy Creation Status
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_status = {}

-- Size: Strategy Creation Status
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_status.size = 1

-- Display: Strategy Creation Status
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_status.display = function(value)
  if value == " " then
    return "Strategy Creation Status: Successful (<whitespace>)"
  end
  if value == "A" then
    return "Strategy Creation Status: Invalid Number Of Legs (A)"
  end
  if value == "B" then
    return "Strategy Creation Status: Invalid Not Allowed Strategy (B)"
  end
  if value == "C" then
    return "Strategy Creation Status: Invalid Leg Ratio (C)"
  end
  if value == "D" then
    return "Strategy Creation Status: Legs From Different Products (D)"
  end
  if value == "E" then
    return "Strategy Creation Status: Repeating Instrument (E)"
  end
  if value == "F" then
    return "Strategy Creation Status: No More Strategies Can Be Created (F)"
  end
  if value == "G" then
    return "Strategy Creation Status: Not In Live Order Window (G)"
  end
  if value == "H" then
    return "Strategy Creation Status: Invalid Leg Instrument (H)"
  end
  if value == "I" then
    return "Strategy Creation Status: Invalid Mpid (I)"
  end
  if value == "O" then
    return "Strategy Creation Status: Invalid Client Order Id (O)"
  end
  if value == "Z" then
    return "Strategy Creation Status: Undefined (Z)"
  end
  if value == "g" then
    return "Strategy Creation Status: Invalid Operator Id (g)"
  end
  if value == "h" then
    return "Strategy Creation Status: Invalid Operator Location (h)"
  end
  if value == "*" then
    return "Strategy Creation Status: Downgraded For Older Version (*)"
  end

  return "Strategy Creation Status: Unknown("..value..")"
end

-- Dissect: Strategy Creation Status
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.strategy_creation_status, range, value, display)

  return offset + length, value
end

-- System Status
miax_onyxfutures_expressinterface_fei_v1_2.system_status = {}

-- Size: System Status
miax_onyxfutures_expressinterface_fei_v1_2.system_status.size = 1

-- Display: System Status
miax_onyxfutures_expressinterface_fei_v1_2.system_status.labels = {
  ["S"] = "System Status: Start Of System Hours (S)",
  ["C"] = "System Status: End Of System Hours (C)",
  ["1"] = "System Status: Start Of Test Session (1)",
  ["2"] = "System Status: End Of Test Session (2)",
  ["*"] = "System Status: Downgraded For Older Version (*)",
}

miax_onyxfutures_expressinterface_fei_v1_2.system_status.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_onyxfutures_expressinterface_fei_v1_2.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.system_status, range, value, display)

  return offset + length, value
end

-- Text Memo
miax_onyxfutures_expressinterface_fei_v1_2.text_memo = {}

-- Size: Text Memo
miax_onyxfutures_expressinterface_fei_v1_2.text_memo.size = 20

-- Display: Text Memo
miax_onyxfutures_expressinterface_fei_v1_2.text_memo.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text Memo: No Value"
  end

  return "Text Memo: "..value
end

-- Dissect: Text Memo
miax_onyxfutures_expressinterface_fei_v1_2.text_memo.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.text_memo.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_2.text_memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.text_memo, range, value, display)

  return offset + length, value
end

-- Time In Force
miax_onyxfutures_expressinterface_fei_v1_2.time_in_force = {}

-- Size: Time In Force
miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.size = 1

-- Display: Time In Force
miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.labels = {
  ["I"] = "Time In Force: Ioc (I)",
  ["D"] = "Time In Force: Day (D)",
  ["F"] = "Time In Force: Fok (F)",
  ["C"] = "Time In Force: Gtc (C)",
  ["X"] = "Time In Force: Gtd (X)",
}

miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trade Date
miax_onyxfutures_expressinterface_fei_v1_2.trade_date = {}

-- Size: Trade Date
miax_onyxfutures_expressinterface_fei_v1_2.trade_date.size = 2

-- Display: Trade Date
miax_onyxfutures_expressinterface_fei_v1_2.trade_date.display = function(value)
  return string.format("Trade Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Trade Date
miax_onyxfutures_expressinterface_fei_v1_2.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Status
miax_onyxfutures_expressinterface_fei_v1_2.trade_status = {}

-- Size: Trade Status
miax_onyxfutures_expressinterface_fei_v1_2.trade_status.size = 1

-- Display: Trade Status
miax_onyxfutures_expressinterface_fei_v1_2.trade_status.labels = {
  ["E"] = "Trade Status: New Execution (E)",
  ["C"] = "Trade Status: Price Size Correction (C)",
  ["X"] = "Trade Status: Trade Cancellation (X)",
}

miax_onyxfutures_expressinterface_fei_v1_2.trade_status.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.trade_status.labels[value] or "Trade Status: Unknown("..value..")"
end

-- Dissect: Trade Status
miax_onyxfutures_expressinterface_fei_v1_2.trade_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.trade_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.trade_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.trade_status, range, value, display)

  return offset + length, value
end

-- Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value = {}

-- Size: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.size = 8

-- Display: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.display = function(value)
  return "Trading Collar Dollar Value: "..value
end

-- Translate: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.translate(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.trading_collar_dollar_value, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message_type.size = 2

-- Display: Unsequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message_type.labels = {
  ["N1"] = "Unsequenced Message Type: New Order Request Message (N1)",
  ["NR"] = "Unsequenced Message Type: New Order Response Message (NR)",
  ["M1"] = "Unsequenced Message Type: Modify Order Request Message (M1)",
  ["MR"] = "Unsequenced Message Type: Modify Order Response (MR)",
  ["CO"] = "Unsequenced Message Type: Cancel Order Request Message (CO)",
  ["CR"] = "Unsequenced Message Type: Cancel Order Response (CR)",
  ["XQ"] = "Unsequenced Message Type: Mass Cancel Request (XQ)",
  ["XR"] = "Unsequenced Message Type: Mass Cancel Response (XR)",
  ["SD"] = "Unsequenced Message Type: Strategy Creation Request (SD)",
  ["SR"] = "Unsequenced Message Type: Strategy Creation Response Message (SR)",
}

miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message_type.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Update Status
miax_onyxfutures_expressinterface_fei_v1_2.update_status = {}

-- Size: Update Status
miax_onyxfutures_expressinterface_fei_v1_2.update_status.size = 1

-- Display: Update Status
miax_onyxfutures_expressinterface_fei_v1_2.update_status.labels = {
  ["S"] = "Update Status: Stop Order Triggered (S)",
}

miax_onyxfutures_expressinterface_fei_v1_2.update_status.display = function(value)
  return miax_onyxfutures_expressinterface_fei_v1_2.update_status.labels[value] or "Update Status: Unknown("..value..")"
end

-- Dissect: Update Status
miax_onyxfutures_expressinterface_fei_v1_2.update_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.update_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.update_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.update_status, range, value, display)

  return offset + length, value
end

-- Username
miax_onyxfutures_expressinterface_fei_v1_2.username = {}

-- Size: Username
miax_onyxfutures_expressinterface_fei_v1_2.username.size = 5

-- Display: Username
miax_onyxfutures_expressinterface_fei_v1_2.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_onyxfutures_expressinterface_fei_v1_2.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_expressinterface_fei_v1_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.username, range, value, display)

  return offset + length, value
end

-- Version
miax_onyxfutures_expressinterface_fei_v1_2.version = {}

-- Size: Version
miax_onyxfutures_expressinterface_fei_v1_2.version.size = 8

-- Display: Version
miax_onyxfutures_expressinterface_fei_v1_2.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
miax_onyxfutures_expressinterface_fei_v1_2.version.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_2.version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_expressinterface_fei_v1_2.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Miax OnyxFutures ExpressInterface Fei 1.2
-----------------------------------------------------------------------

-- Client Heartbeat
miax_onyxfutures_expressinterface_fei_v1_2.client_heartbeat = {}

-- Display: Client Heartbeat
miax_onyxfutures_expressinterface_fei_v1_2.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_onyxfutures_expressinterface_fei_v1_2.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_expressinterface_fei_v1_2.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_onyxfutures_expressinterface_fei_v1_2.server_heartbeat = {}

-- Display: Server Heartbeat
miax_onyxfutures_expressinterface_fei_v1_2.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_onyxfutures_expressinterface_fei_v1_2.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_expressinterface_fei_v1_2.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Session
miax_onyxfutures_expressinterface_fei_v1_2.end_of_session = {}

-- Display: End Of Session
miax_onyxfutures_expressinterface_fei_v1_2.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_onyxfutures_expressinterface_fei_v1_2.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_expressinterface_fei_v1_2.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_2.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_2.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_2.logout_reason.size

  -- Parse runtime size of: Logout Text
  local sesm_packet_length = buffer(offset + index - 4, 2):le_uint()
  index = index + sesm_packet_length - 2

  return index
end

-- Display: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_2.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_2.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_onyxfutures_expressinterface_fei_v1_2.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_onyxfutures_expressinterface_fei_v1_2.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_2.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_onyxfutures_expressinterface_fei_v1_2.logout_request = {}

-- Calculate size of: Logout Request
miax_onyxfutures_expressinterface_fei_v1_2.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_2.logout_reason.size

  -- Parse runtime size of: Logout Text
  local sesm_packet_length = buffer(offset + index - 4, 2):le_uint()
  index = index + sesm_packet_length - 2

  return index
end

-- Display: Logout Request
miax_onyxfutures_expressinterface_fei_v1_2.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_onyxfutures_expressinterface_fei_v1_2.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_onyxfutures_expressinterface_fei_v1_2.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_onyxfutures_expressinterface_fei_v1_2.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_onyxfutures_expressinterface_fei_v1_2.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.logout_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_2.retransmission_request = {}

-- Size: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_2.retransmission_request.size =
  miax_onyxfutures_expressinterface_fei_v1_2.start_sequence_number.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.end_sequence_number.size

-- Display: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_2.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_2.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_onyxfutures_expressinterface_fei_v1_2.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_onyxfutures_expressinterface_fei_v1_2.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_2.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.retransmission_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_onyxfutures_expressinterface_fei_v1_2.synchronization_complete = {}

-- Display: Synchronization Complete
miax_onyxfutures_expressinterface_fei_v1_2.synchronization_complete.display = function(packet, parent, length)
  return "Synchronization Complete"
end


-- Dissect: Synchronization Complete
miax_onyxfutures_expressinterface_fei_v1_2.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_expressinterface_fei_v1_2.synchronization_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Response
miax_onyxfutures_expressinterface_fei_v1_2.login_response = {}

-- Size: Login Response
miax_onyxfutures_expressinterface_fei_v1_2.login_response.size =
  miax_onyxfutures_expressinterface_fei_v1_2.login_status.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.session_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.highest_sequence_number.size

-- Display: Login Response
miax_onyxfutures_expressinterface_fei_v1_2.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_onyxfutures_expressinterface_fei_v1_2.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: 1 Byte Ascii String Enum with 7 values
  index, login_status = miax_onyxfutures_expressinterface_fei_v1_2.login_status.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_expressinterface_fei_v1_2.session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_onyxfutures_expressinterface_fei_v1_2.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_onyxfutures_expressinterface_fei_v1_2.login_response.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.login_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_onyxfutures_expressinterface_fei_v1_2.login_request = {}

-- Size: Login Request
miax_onyxfutures_expressinterface_fei_v1_2.login_request.size =
  miax_onyxfutures_expressinterface_fei_v1_2.sesm_version.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.username.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.computer_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.application_protocol.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.requested_session.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.requested_sequence_number.size

-- Display: Login Request
miax_onyxfutures_expressinterface_fei_v1_2.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_onyxfutures_expressinterface_fei_v1_2.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_onyxfutures_expressinterface_fei_v1_2.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_onyxfutures_expressinterface_fei_v1_2.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_onyxfutures_expressinterface_fei_v1_2.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_onyxfutures_expressinterface_fei_v1_2.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Session: 1 Byte Unsigned Fixed Width Integer
  index, requested_session = miax_onyxfutures_expressinterface_fei_v1_2.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_onyxfutures_expressinterface_fei_v1_2.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_onyxfutures_expressinterface_fei_v1_2.login_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.login_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.login_request.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_response_message = {}

-- Size: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_response_message.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_status.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.size

-- Display: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Creation Status: Alphanumeric
  index, strategy_creation_status = miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_status.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  if show.padding then
    index, reserved_16 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.size
  end

  return index
end

-- Dissect: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.strategy_creation_response_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_2.strategy_leg = {}

-- Size: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_2.strategy_leg.size =
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.leg_ratio.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.size

-- Display: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_2.strategy_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_2.strategy_leg.fields = function(buffer, offset, packet, parent, strategy_leg_index)
  local index = offset

  -- Implicit Strategy Leg Index
  if strategy_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.strategy_leg_index, strategy_leg_index)
    iteration:set_generated()
  end

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio: BinaryS
  index, leg_ratio = miax_onyxfutures_expressinterface_fei_v1_2.leg_ratio.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  if show.padding then
    index, reserved_8 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.size
  end

  return index
end

-- Dissect: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_2.strategy_leg.dissect = function(buffer, offset, packet, parent, strategy_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.strategy_leg, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.strategy_leg.fields(buffer, offset, packet, parent, strategy_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.strategy_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.strategy_leg.fields(buffer, offset, packet, parent, strategy_leg_index)
  end
end

-- Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_request = {}

-- Calculate size of: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_2.number_of_legs.size

  -- Calculate field size from count
  local strategy_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + strategy_leg_count * 16

  return index
end

-- Display: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  if show.padding then
    index, reserved_16 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_16.size
  end

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_onyxfutures_expressinterface_fei_v1_2.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Leg
  for strategy_leg_index = 1, number_of_legs do
    index, strategy_leg = miax_onyxfutures_expressinterface_fei_v1_2.strategy_leg.dissect(buffer, index, packet, parent, strategy_leg_index)
  end

  return index
end

-- Dissect: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.strategy_creation_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_request.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_response = {}

-- Size: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_response.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_status.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size

-- Display: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Status: Alphanumeric
  index, mass_cancel_status = miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size
  end

  return index
end

-- Dissect: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.mass_cancel_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_response.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_request = {}

-- Size: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_request.size =
  miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.scope.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.action.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.product_group_code.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.product_type.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.purge_group.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_9.size

-- Display: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size
  end

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Scope: Alphanumeric
  index, scope = miax_onyxfutures_expressinterface_fei_v1_2.scope.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_onyxfutures_expressinterface_fei_v1_2.action.dissect(buffer, index, packet, parent)

  -- Product Group Code: String
  index, product_group_code = miax_onyxfutures_expressinterface_fei_v1_2.product_group_code.dissect(buffer, index, packet, parent)

  -- Product Type: Alphanumeric
  index, product_type = miax_onyxfutures_expressinterface_fei_v1_2.product_type.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_2.purge_group.dissect(buffer, index, packet, parent)

  -- Reserved 9: BinaryU
  if show.padding then
    index, reserved_9 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_9.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_9.size
  end

  return index
end

-- Dissect: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.mass_cancel_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_response = {}

-- Size: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_response.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.cancel_status.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size

-- Display: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_2.order_id.dissect(buffer, index, packet, parent)

  -- Cancel Status: Alphanumeric
  index, cancel_status = miax_onyxfutures_expressinterface_fei_v1_2.cancel_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size
  end

  return index
end

-- Dissect: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cancel_order_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_response.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_request_message = {}

-- Size: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_request_message.size =
  miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size

-- Display: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_2.order_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size
  end

  return index
end

-- Dissect: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cancel_order_request_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_response = {}

-- Size: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_response.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.modify_status.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size

-- Display: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_2.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.dissect(buffer, index, packet, parent)

  -- Modify Status: Alphanumeric
  index, modify_status = miax_onyxfutures_expressinterface_fei_v1_2.modify_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size
  end

  return index
end

-- Dissect: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.modify_order_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.modify_order_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.modify_order_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.modify_order_response.fields(buffer, offset, packet, parent)
  end
end

-- Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators = {}

-- Size: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.size = 1

-- Display: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Customer Of Firm Designation flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Customer Of Firm Designation"
  end
  -- Is Manual Order Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Manual Order Indicator"
  end
  -- Is Open Close Position Indicator flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Open Close Position Indicator"
  end
  -- Is Side Clearing Trade Price Type flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Side Clearing Trade Price Type"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.bits = function(range, value, packet, parent)

  -- Customer Of Firm Designation: 1 Bit Enum with 2 values
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.customer_of_firm_designation, range, value)

  -- Manual Order Indicator: 1 Bit Enum with 2 values
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.manual_order_indicator, range, value)

  -- Open Close Position Indicator: 1 Bit Enum with 2 values
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.open_close_position_indicator, range, value)

  -- Side Clearing Trade Price Type: 1 Bit Enum with 2 values
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.side_clearing_trade_price_type, range, value)

  -- Unused 4: 4 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.unused_4, range, value)
end

-- Dissect: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.dissect = function(buffer, offset, packet, parent)
  local size = miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.additional_order_indicators, range, display)

  if show.structs then
    miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_request_message = {}

-- Size: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_request_message.size =
  miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.size.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.purge_group.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size

-- Display: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_2.price.dissect(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_expressinterface_fei_v1_2.size.dissect(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_2.purge_group.dissect(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.dissect(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 5 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  if show.padding then
    index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size
  end

  return index
end

-- Dissect: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.modify_order_request_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.modify_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.modify_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.modify_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_2.new_order_response_message = {}

-- Size: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_2.new_order_response_message.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_status.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size

-- Display: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_2.new_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_2.new_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_2.order_id.dissect(buffer, index, packet, parent)

  -- Order Status: Alphanumeric
  index, order_status = miax_onyxfutures_expressinterface_fei_v1_2.order_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_10.size
  end

  return index
end

-- Dissect: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_2.new_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.new_order_response_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.new_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.new_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.new_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection = {}

-- Size: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.size = 1

-- Display: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.display = function(range, value, packet, parent)
  local flags = {}

  -- Self Trade Protection Level: 3 Bits
  flags[#flags + 1] = "Self Trade Protection Level: "..bit.rshift(bit.band(value, 0x07), 0)
  -- Self Trade Protection Instruction: 3 Bits
  flags[#flags + 1] = "Self Trade Protection Instruction: "..bit.rshift(bit.band(value, 0x38), 3)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.bits = function(range, value, packet, parent)

  -- Self Trade Protection Level: 3 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.self_trade_protection_level, range, value)

  -- Self Trade Protection Instruction: 3 Bit Unsigned Fixed Width Integer Enum with 5 values
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.self_trade_protection_instruction, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.unused_2, range, value)
end

-- Dissect: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.dissect = function(buffer, offset, packet, parent)
  local size = miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.display(range, value, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.self_trade_protection, range, display)

  if show.structs then
    miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Instructions
miax_onyxfutures_expressinterface_fei_v1_2.order_instructions = {}

-- Size: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.size = 2

-- Display: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Side flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Side"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.bits = function(range, value, packet, parent)

  -- Side: 1 Bit Enum with 2 values
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.side, range, value)

  -- Unused 15: 15 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.unused_15, range, value)
end

-- Dissect: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.dissect = function(buffer, offset, packet, parent)
  local size = miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.display(range, value, packet, parent)
  local element = parent:add_le(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_instructions, range, display)

  if show.structs then
    miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.new_order_request_message = {}

-- Size: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.new_order_request_message.size =
  miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.account.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.size.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_type.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.purge_group.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.min_qty.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.cti_code.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.text_memo.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size

-- Display: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.new_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.new_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = miax_onyxfutures_expressinterface_fei_v1_2.account.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_2.price.dissect(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_expressinterface_fei_v1_2.size.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_onyxfutures_expressinterface_fei_v1_2.order_type.dissect(buffer, index, packet, parent)

  -- Self Trade Protection: Struct of 3 fields
  index, self_trade_protection = miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_2.purge_group.dissect(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.dissect(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 5 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_onyxfutures_expressinterface_fei_v1_2.min_qty.dissect(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.dissect(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: Price9S
  index, trading_collar_dollar_value = miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = miax_onyxfutures_expressinterface_fei_v1_2.cti_code.dissect(buffer, index, packet, parent)

  -- Text Memo: String
  index, text_memo = miax_onyxfutures_expressinterface_fei_v1_2.text_memo.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  if show.padding then
    index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size
  end

  return index
end

-- Dissect: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_2.new_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.new_order_request_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.new_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.new_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.new_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message = {}

-- Dispatch: Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message.dispatch = {
  ["N1"] = miax_onyxfutures_expressinterface_fei_v1_2.new_order_request_message.dissect,
  ["NR"] = miax_onyxfutures_expressinterface_fei_v1_2.new_order_response_message.dissect,
  ["M1"] = miax_onyxfutures_expressinterface_fei_v1_2.modify_order_request_message.dissect,
  ["MR"] = miax_onyxfutures_expressinterface_fei_v1_2.modify_order_response.dissect,
  ["CO"] = miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_request_message.dissect,
  ["CR"] = miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_response.dissect,
  ["XQ"] = miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_request.dissect,
  ["XR"] = miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_response.dissect,
  ["SD"] = miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_request.dissect,
  ["SR"] = miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_response_message.dissect,
}

-- Dissect: Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 2 Byte Ascii String Enum with 10 values
  index, unsequenced_message_type = miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 10 branches
  index = miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_2.complex_execution_notification = {}

-- Size: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_2.complex_execution_notification.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.complex_trade_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.trade_date.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.last_net_price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.last_size.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size

-- Display: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_2.complex_execution_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_2.complex_execution_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Complex Trade Id: BinaryU
  index, complex_trade_id = miax_onyxfutures_expressinterface_fei_v1_2.complex_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_expressinterface_fei_v1_2.trade_date.dissect(buffer, index, packet, parent)

  -- Last Net Price: Price9S
  index, last_net_price = miax_onyxfutures_expressinterface_fei_v1_2.last_net_price.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_onyxfutures_expressinterface_fei_v1_2.last_size.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  if show.padding then
    index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size
  end

  return index
end

-- Dissect: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_2.complex_execution_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.complex_execution_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.complex_execution_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.complex_execution_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.complex_execution_notification.fields(buffer, offset, packet, parent)
  end
end

-- Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_2.simple_execution_notification = {}

-- Size: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_2.simple_execution_notification.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.simple_trade_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.complex_trade_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.execution_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.trade_date.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.correction_number.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.trade_status.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.last_price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.last_size.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.cti_code.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.text_memo.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.liquidity_indicator.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size

-- Display: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_2.simple_execution_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_2.simple_execution_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Simple Trade Id: BinaryU
  index, simple_trade_id = miax_onyxfutures_expressinterface_fei_v1_2.simple_trade_id.dissect(buffer, index, packet, parent)

  -- Complex Trade Id: BinaryU
  index, complex_trade_id = miax_onyxfutures_expressinterface_fei_v1_2.complex_trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_onyxfutures_expressinterface_fei_v1_2.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_expressinterface_fei_v1_2.trade_date.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_onyxfutures_expressinterface_fei_v1_2.correction_number.dissect(buffer, index, packet, parent)

  -- Trade Status: Alphanumeric
  index, trade_status = miax_onyxfutures_expressinterface_fei_v1_2.trade_status.dissect(buffer, index, packet, parent)

  -- Last Price: Price9S
  index, last_price = miax_onyxfutures_expressinterface_fei_v1_2.last_price.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_onyxfutures_expressinterface_fei_v1_2.last_size.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = miax_onyxfutures_expressinterface_fei_v1_2.cti_code.dissect(buffer, index, packet, parent)

  -- Text Memo: String
  index, text_memo = miax_onyxfutures_expressinterface_fei_v1_2.text_memo.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: String
  index, liquidity_indicator = miax_onyxfutures_expressinterface_fei_v1_2.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  if show.padding then
    index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size
  end

  return index
end

-- Dissect: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_2.simple_execution_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.simple_execution_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.simple_execution_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.simple_execution_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.simple_execution_notification.fields(buffer, offset, packet, parent)
  end
end

-- Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_2.order_status_update_notification = {}

-- Size: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_2.order_status_update_notification.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.update_status.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_type.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_30.size

-- Display: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_2.order_status_update_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_2.order_status_update_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_2.order_id.dissect(buffer, index, packet, parent)

  -- Update Status: Alphanumeric
  index, update_status = miax_onyxfutures_expressinterface_fei_v1_2.update_status.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_onyxfutures_expressinterface_fei_v1_2.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Reserved 30: BinaryU
  if show.padding then
    index, reserved_30 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_30.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_30.size
  end

  return index
end

-- Dissect: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_2.order_status_update_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.order_status_update_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.order_status_update_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.order_status_update_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.order_status_update_notification.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.cancel_reduce_size_order_notification = {}

-- Size: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.cancel_reduce_size_order_notification.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.cancel_reason.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.last_price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.last_size.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.size

-- Display: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.cancel_reduce_size_order_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.cancel_reduce_size_order_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_2.order_id.dissect(buffer, index, packet, parent)

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alphanumeric
  index, cancel_reason = miax_onyxfutures_expressinterface_fei_v1_2.cancel_reason.dissect(buffer, index, packet, parent)

  -- Last Price: Price9S
  index, last_price = miax_onyxfutures_expressinterface_fei_v1_2.last_price.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_onyxfutures_expressinterface_fei_v1_2.last_size.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  if show.padding then
    index, reserved_8 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.size
  end

  return index
end

-- Dissect: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.cancel_reduce_size_order_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.cancel_reduce_size_order_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.cancel_reduce_size_order_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.cancel_reduce_size_order_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.cancel_reduce_size_order_notification.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_notification = {}

-- Size: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_notification.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.size.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.purge_group.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size

-- Display: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_2.order_id.dissect(buffer, index, packet, parent)

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_onyxfutures_expressinterface_fei_v1_2.leaves_qty.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_2.price.dissect(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_expressinterface_fei_v1_2.size.dissect(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_2.purge_group.dissect(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.dissect(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 5 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  if show.padding then
    index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size
  end

  return index
end

-- Dissect: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.modify_order_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.modify_order_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.modify_order_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.modify_order_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.modify_order_notification.fields(buffer, offset, packet, parent)
  end
end

-- New Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.new_order_notification = {}

-- Size: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.new_order_notification.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.mp_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.operator_location.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.account.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.size.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_type.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.purge_group.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.min_qty.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.cti_code.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.text_memo.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size

-- Display: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.new_order_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.new_order_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_2.mp_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_2.order_id.dissect(buffer, index, packet, parent)

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_2.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_2.operator_location.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = miax_onyxfutures_expressinterface_fei_v1_2.account.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_expressinterface_fei_v1_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_2.price.dissect(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_2.stop_order_trigger_price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_expressinterface_fei_v1_2.size.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_2.order_instructions.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_onyxfutures_expressinterface_fei_v1_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_onyxfutures_expressinterface_fei_v1_2.order_type.dissect(buffer, index, packet, parent)

  -- Self Trade Protection: Struct of 3 fields
  index, self_trade_protection = miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_2.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_2.purge_group.dissect(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_2.customer_order_handling_instruction.dissect(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 5 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_2.additional_order_indicators.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_onyxfutures_expressinterface_fei_v1_2.min_qty.dissect(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_2.order_expiry_date.dissect(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: Price9S
  index, trading_collar_dollar_value = miax_onyxfutures_expressinterface_fei_v1_2.trading_collar_dollar_value.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = miax_onyxfutures_expressinterface_fei_v1_2.cti_code.dissect(buffer, index, packet, parent)

  -- Text Memo: String
  index, text_memo = miax_onyxfutures_expressinterface_fei_v1_2.text_memo.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  if show.padding then
    index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_32.size
  end

  return index
end

-- Dissect: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_2.new_order_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.new_order_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.new_order_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.new_order_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.new_order_notification.fields(buffer, offset, packet, parent)
  end
end

-- System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_2.system_state_notification_message = {}

-- Size: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_2.system_state_notification_message.size =
  miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.version.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.session_id.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.system_status.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.size

-- Display: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_2.system_state_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_2.system_state_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_2.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Version: Alphanumeric
  index, version = miax_onyxfutures_expressinterface_fei_v1_2.version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_expressinterface_fei_v1_2.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_onyxfutures_expressinterface_fei_v1_2.system_status.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  if show.padding then
    index, reserved_8 = miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_onyxfutures_expressinterface_fei_v1_2.reserved_8.size
  end

  return index
end

-- Dissect: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_2.system_state_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.system_state_notification_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.system_state_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.system_state_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.system_state_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message = {}

-- Dispatch: Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message.dispatch = {
  ["NR"] = miax_onyxfutures_expressinterface_fei_v1_2.new_order_response_message.dissect,
  ["MR"] = miax_onyxfutures_expressinterface_fei_v1_2.modify_order_response.dissect,
  ["CR"] = miax_onyxfutures_expressinterface_fei_v1_2.cancel_order_response.dissect,
  ["XR"] = miax_onyxfutures_expressinterface_fei_v1_2.mass_cancel_response.dissect,
  ["SR"] = miax_onyxfutures_expressinterface_fei_v1_2.strategy_creation_response_message.dissect,
  ["SN"] = miax_onyxfutures_expressinterface_fei_v1_2.system_state_notification_message.dissect,
  ["O1"] = miax_onyxfutures_expressinterface_fei_v1_2.new_order_notification.dissect,
  ["MN"] = miax_onyxfutures_expressinterface_fei_v1_2.modify_order_notification.dissect,
  ["XN"] = miax_onyxfutures_expressinterface_fei_v1_2.cancel_reduce_size_order_notification.dissect,
  ["OS"] = miax_onyxfutures_expressinterface_fei_v1_2.order_status_update_notification.dissect,
  ["EN"] = miax_onyxfutures_expressinterface_fei_v1_2.simple_execution_notification.dissect,
  ["CN"] = miax_onyxfutures_expressinterface_fei_v1_2.complex_execution_notification.dissect,
}

-- Dissect: Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_expressinterface_fei_v1_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 2 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = miax_onyxfutures_expressinterface_fei_v1_2.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_2.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_onyxfutures_expressinterface_fei_v1_2.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_onyxfutures_expressinterface_fei_v1_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_expressinterface_fei_v1_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_onyxfutures_expressinterface_fei_v1_2.sesm_payload = {}

-- Dispatch: Sesm Payload
miax_onyxfutures_expressinterface_fei_v1_2.sesm_payload.dispatch = {
  ["S"] = miax_onyxfutures_expressinterface_fei_v1_2.sequenced_data_packet.dissect,
  ["U"] = miax_onyxfutures_expressinterface_fei_v1_2.unsequenced_data_packet.dissect,
  ["L"] = miax_onyxfutures_expressinterface_fei_v1_2.login_request.dissect,
  ["R"] = miax_onyxfutures_expressinterface_fei_v1_2.login_response.dissect,
  ["C"] = miax_onyxfutures_expressinterface_fei_v1_2.synchronization_complete.dissect,
  ["A"] = miax_onyxfutures_expressinterface_fei_v1_2.retransmission_request.dissect,
  ["X"] = miax_onyxfutures_expressinterface_fei_v1_2.logout_request.dissect,
  ["G"] = miax_onyxfutures_expressinterface_fei_v1_2.goodbye_packet.dissect,
  ["E"] = miax_onyxfutures_expressinterface_fei_v1_2.end_of_session.dissect,
  ["0"] = miax_onyxfutures_expressinterface_fei_v1_2.server_heartbeat.dissect,
  ["1"] = miax_onyxfutures_expressinterface_fei_v1_2.client_heartbeat.dissect,
}

-- Dissect: Sesm Payload
miax_onyxfutures_expressinterface_fei_v1_2.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  local dissect = miax_onyxfutures_expressinterface_fei_v1_2.sesm_payload.dispatch[sesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header.size =
  miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_length.size + 
  miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 11 values
  index, sesm_packet_type = miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_2.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_2.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_2.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 11 branches
  index = miax_onyxfutures_expressinterface_fei_v1_2.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_2.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2.fields.sesm_tcp_packet, buffer(offset, 0))
    local decoded, failure = pcall(miax_onyxfutures_expressinterface_fei_v1_2.sesm_tcp_packet.fields, bounded, offset, packet, parent, size_of_sesm_tcp_packet)
    if not decoded then
      undecoded(failure, parent, miax_onyxfutures_expressinterface_fei_v1_2.experts.undecoded, "Sesm Tcp Packet does not decode within its "..size_of_sesm_tcp_packet.." bytes")
    end
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_onyxfutures_expressinterface_fei_v1_2.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(miax_onyxfutures_expressinterface_fei_v1_2.sesm_tcp_packet.fields, bounded, offset, packet, parent, size_of_sesm_tcp_packet)
    if not decoded then
      undecoded(failure, parent, miax_onyxfutures_expressinterface_fei_v1_2.experts.undecoded, "Sesm Tcp Packet does not decode within its "..size_of_sesm_tcp_packet.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
miax_onyxfutures_expressinterface_fei_v1_2.packet = {}

-- Verify required size of Tcp packet
miax_onyxfutures_expressinterface_fei_v1_2.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_onyxfutures_expressinterface_fei_v1_2.sesm_packet_header.size
end

-- Dissect Packet
miax_onyxfutures_expressinterface_fei_v1_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Sesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sesm_tcp_packet = sesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_sesm_tcp_packet):tvb()
      index = miax_onyxfutures_expressinterface_fei_v1_2.sesm_tcp_packet.dissect(frame, index, packet, parent, size_of_sesm_tcp_packet)
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
function omi_miax_onyxfutures_expressinterface_fei_v1_2.init()
end

-- Dissector for Miax OnyxFutures ExpressInterface Fei 1.2
function omi_miax_onyxfutures_expressinterface_fei_v1_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_onyxfutures_expressinterface_fei_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_2, buffer(), omi_miax_onyxfutures_expressinterface_fei_v1_2.description, "("..buffer:len().." Bytes)")
  return miax_onyxfutures_expressinterface_fei_v1_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax OnyxFutures ExpressInterface Fei 1.2 (Tcp)
local function omi_miax_onyxfutures_expressinterface_fei_v1_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_onyxfutures_expressinterface_fei_v1_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_onyxfutures_expressinterface_fei_v1_2
  omi_miax_onyxfutures_expressinterface_fei_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax OnyxFutures ExpressInterface Fei 1.2
omi_miax_onyxfutures_expressinterface_fei_v1_2:register_heuristic("tcp", omi_miax_onyxfutures_expressinterface_fei_v1_2_tcp_heuristic)

-- Register Miax OnyxFutures ExpressInterface Fei 1.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_onyxfutures_expressinterface_fei_v1_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.2
--   Date: Friday, November 7, 2025
--   Specification: Onyx Futures Express Interface FEI v1.2.pdf
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
