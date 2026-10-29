-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NordicEquities RiskControl Binary 1.00.1 Protocol
local omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1 = Proto("Omi.Nasdaq.NordicEquities.RiskControl.Binary.v1.00.1", "Nasdaq NordicEquities RiskControl Binary 1.00.1")

-- Protocol table
local nasdaq_nordicequities_riskcontrol_binary_v1_00_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NordicEquities RiskControl Binary 1.00.1 Fields
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.block_and_cancel = ProtoField.new("Block And Cancel", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.blockandcancel", ftypes.STRING, nil, nil, nil, "Block, unblock or cancel open orders of this PRM Account, previous value kept if ?")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.blow_through_protection = ProtoField.new("Blow Through Protection", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.blowthroughprotection", ftypes.STRING, nil, nil, nil, "Enable blow through protection, previous value kept if ?")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.currency = ProtoField.new("Currency", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.currency", ftypes.STRING, nil, nil, nil, "Currency in which the settings apply")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.in_auction_fat_finger_protection = ProtoField.new("In Auction Fat Finger Protection", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.inauctionfatfingerprotection", ftypes.STRING, nil, nil, nil, "Enable fat finger protection, previous value kept if ?")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.in_auction_market_order_prevention = ProtoField.new("In Auction Market Order Prevention", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.inauctionmarketorderprevention", ftypes.STRING, nil, nil, nil, "Enable market order prevention, previous value kept if ?")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.in_auction_market_order_protection = ProtoField.new("In Auction Market Order Protection", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.inauctionmarketorderprotection", ftypes.STRING, nil, nil, nil, "Enable market order protection, previous value kept if ?")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.last_update_time = ProtoField.new("Last Update Time", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.lastupdatetime", ftypes.UINT64)
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.market_segment = ProtoField.new("Market Segment", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.marketsegment", ftypes.UINT16, nil, nil, nil, "Market Segment to be restricted")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.max_quantity = ProtoField.new("Max Quantity", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.maxquantity", ftypes.INT64, nil, nil, nil, "Maximum number of shares allowed on a per order basis, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.max_quantity_auction = ProtoField.new("Max Quantity Auction", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.maxquantityauction", ftypes.INT64, nil, nil, nil, "Maximum number of shares allowed on a per order basis specific to auctions, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.max_value = ProtoField.new("Max Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.maxvalue", ftypes.DOUBLE, nil, nil, nil, "Maximum order value (price * quantity) allowed on a per order basis, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.max_value_auction = ProtoField.new("Max Value Auction", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.maxvalueauction", ftypes.DOUBLE, nil, nil, nil, "Maximum order value (price * quantity) allowed on a per order basis specific to auctions, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.open_order_buy_value = ProtoField.new("Open Order Buy Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.openorderbuyvalue", ftypes.DOUBLE, nil, nil, nil, "Open orders buy value, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.open_order_net_value = ProtoField.new("Open Order Net Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.openordernetvalue", ftypes.DOUBLE, nil, nil, nil, "Open orders net value, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.open_order_sell_value = ProtoField.new("Open Order Sell Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.openordersellvalue", ftypes.DOUBLE, nil, nil, nil, "Open orders sell value, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.order_book = ProtoField.new("Order Book", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.orderbook", ftypes.UINT32, nil, nil, nil, "Order Book to be restricted")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.orders_buy_value = ProtoField.new("Orders Buy Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.ordersbuyvalue", ftypes.UINT64)
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.orders_sell_value = ProtoField.new("Orders Sell Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.orderssellvalue", ftypes.UINT64)
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.orders_total_value = ProtoField.new("Orders Total Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.orderstotalvalue", ftypes.UINT64)
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.password = ProtoField.new("Password", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.prm_account = ProtoField.new("Prm Account", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.prmaccount", ftypes.STRING, nil, nil, nil, "PRM Account in which the settings apply")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.reason = ProtoField.new("Reason", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.reason", ftypes.STRING, nil, nil, nil, "The reason the PRM change request was rejected")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.reject_all_flag = ProtoField.new("Reject All Flag", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.rejectallflag", ftypes.STRING, nil, nil, nil, "Reject all orders, previous value kept if ?")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.repeated_order_generation = ProtoField.new("Repeated Order Generation", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.repeatedordergeneration", ftypes.INT32, nil, nil, nil, "Maximum allowed number of consecutive identical orders, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.risk_total_value = ProtoField.new("Risk Total Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.risktotalvalue", ftypes.UINT64)
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.state = ProtoField.new("State", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.state", ftypes.STRING, nil, nil, nil, "Describes whether the restriction is currently active, previous value kept if ?")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.timestamp", ftypes.UINT64, nil, nil, nil, "Nanoseconds past midnight in UTC")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.total_risk_value = ProtoField.new("Total Risk Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.totalriskvalue", ftypes.DOUBLE, nil, nil, nil, "Total risk value (open orders plus trades), previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trade_buy_value = ProtoField.new("Trade Buy Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.tradebuyvalue", ftypes.DOUBLE, nil, nil, nil, "Trades buy value, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trade_net_value = ProtoField.new("Trade Net Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.tradenetvalue", ftypes.DOUBLE, nil, nil, nil, "Trades net value, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trade_sell_value = ProtoField.new("Trade Sell Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.tradesellvalue", ftypes.DOUBLE, nil, nil, nil, "Trades sell value, previous value kept if -1")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trades_buy_value = ProtoField.new("Trades Buy Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.tradesbuyvalue", ftypes.UINT64)
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trades_sell_value = ProtoField.new("Trades Sell Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.tradessellvalue", ftypes.UINT64)
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trades_total_value = ProtoField.new("Trades Total Value", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.tradestotalvalue", ftypes.UINT64)
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trigger_restrict_symbol_on_repeated_order_generation = ProtoField.new("Trigger Restrict Symbol On Repeated Order Generation", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.triggerrestrictsymbolonrepeatedordergeneration", ftypes.STRING, nil, nil, nil, "Restrict symbol when order repetition limit is breached, previous value kept if ?")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.unused = ProtoField.new("Unused", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.unused", ftypes.UINT64, nil, nil, nil, "Field reserved for future use")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.user_ref_num = ProtoField.new("User Ref Num", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.userrefnum", ftypes.UINT32, nil, nil, nil, "A unique sequential number starting from 1 at start of day")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.username = ProtoField.new("Username", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Nasdaq NordicEquities RiskControl Binary 1.00.1 Framing
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.client_packet = ProtoField.new("Packet", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.server_packet = ProtoField.new("Packet", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Nasdaq NordicEquities RiskControl 1.00.1 Application Messages
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.account_currency_setting_response_message = ProtoField.new("Account Currency Setting Response Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.accountcurrencysettingresponsemessage", ftypes.STRING, nil, nil, nil, "Indicates that the settings for a given PRM Account's currency have been updated")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.account_query_message = ProtoField.new("Account Query Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.accountquerymessage", ftypes.BYTES, nil, nil, nil, "Returns the PRM API port's next expected user reference number")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.account_query_response_message = ProtoField.new("Account Query Response Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.accountqueryresponsemessage", ftypes.STRING, nil, nil, nil, "Provides the PRM API port's next expected user reference number")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.account_rate_breach_message = ProtoField.new("Account Rate Breach Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.accountratebreachmessage", ftypes.STRING, nil, nil, nil, "Indicates that a PRM Account's rate limit has been breached")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.account_settings_response_message = ProtoField.new("Account Settings Response Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.accountsettingsresponsemessage", ftypes.STRING, nil, nil, nil, "Indicates that the settings for a given PRM Account have been updated")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.accumulated_values_message = ProtoField.new("Accumulated Values Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.accumulatedvaluesmessage", ftypes.STRING, nil, nil, nil, "Indicates the current Accumulated Values for a PRM Account and Currency, sent after order or trade updates")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.api_port_rate_breach_message = ProtoField.new("Api Port Rate Breach Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.apiportratebreachmessage", ftypes.STRING, nil, nil, nil, "Indicates that the port's rate limit has been breached")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.limit_settings_response_message = ProtoField.new("Limit Settings Response Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.limitsettingsresponsemessage", ftypes.STRING, nil, nil, nil, "Indicates that the Limit settings for a given PRM Account and Currency have been updated")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.market_segment_restriction_response_message = ProtoField.new("Market Segment Restriction Response Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.marketsegmentrestrictionresponsemessage", ftypes.STRING, nil, nil, nil, "Indicates that a Market Segment has been restricted or non-restricted for a given PRM Account")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.modify_account_currency_setting_message = ProtoField.new("Modify Account Currency Setting Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.modifyaccountcurrencysettingmessage", ftypes.STRING, nil, nil, nil, "Updates the settings for a given PRM Account's currency")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.modify_account_settings_message = ProtoField.new("Modify Account Settings Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.modifyaccountsettingsmessage", ftypes.STRING, nil, nil, nil, "Updates the settings for a given PRM Account")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.modify_limit_settings_message = ProtoField.new("Modify Limit Settings Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.modifylimitsettingsmessage", ftypes.STRING, nil, nil, nil, "Updates the Limit settings for a given PRM Account and Currency")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.modify_market_segment_restriction_message = ProtoField.new("Modify Market Segment Restriction Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.modifymarketsegmentrestrictionmessage", ftypes.STRING, nil, nil, nil, "Marks a Market Segment as restricted or non-restricted for a given PRM Account")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.modify_order_book_restriction_message = ProtoField.new("Modify Order Book Restriction Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.modifyorderbookrestrictionmessage", ftypes.STRING, nil, nil, nil, "Marks an Order Book as restricted or non-restricted for a given PRM Account")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.order_book_restriction_response_message = ProtoField.new("Order Book Restriction Response Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.orderbookrestrictionresponsemessage", ftypes.STRING, nil, nil, nil, "Indicates that an Order Book has been restricted or non-restricted for a given PRM Account")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.reject_message = ProtoField.new("Reject Message", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.rejectmessage", ftypes.STRING, nil, nil, nil, "Indicates that an inbound message has been rejected")

-- Nasdaq NordicEquities RiskControl 1.00.1 Session Messages
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.endofsession", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server signals end of session; client may now disconnect. Carries no payload")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Nasdaq NordicEquities RiskControl Binary 1.00.1 Generated Fields
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nordicequities.riskcontrol.binary.v1.00.1.sequenceddatapacketsequencenumber", ftypes.UINT64)

-- Nasdaq NordicEquities RiskControl Binary 1.00.1 Expert Info
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.experts = {}
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.experts.not_a_number = ProtoExpert.new("nasdaq.nordicequities.riskcontrol.binary.v1.00.1.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.experts = { nasdaq_nordicequities_riskcontrol_binary_v1_00_1.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq NordicEquities RiskControl Binary 1.00.1 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp_format = 2

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

-- Nasdaq NordicEquities RiskControl Binary 1.00.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq NordicEquities RiskControl Binary 1.00.1 Show Options
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_headers then
    show.headers = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_structs then
    show.structs = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_sequences then
    show.sequences = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.show_sequences
  end
  if nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp_format ~= omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.timestamp_format then
    nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp_format = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation = {}
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.stream_frame = nil
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.data = function(packet)
  local key = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.key(packet)
  local data = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.current = nil


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
-- Nasdaq NordicEquities RiskControl Binary 1.00.1 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nordicequities_riskcontrol_binary_v1_00_1.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_session = {}

-- Size: Accepted Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Block And Cancel
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel = {}

-- Size: Block And Cancel
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.size = 1

-- Display: Block And Cancel
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.labels = {
  ["B"] = "Block And Cancel: Block (B)",
  ["U"] = "Block And Cancel: Unblock (U)",
  ["C"] = "Block And Cancel: Block And Cancel (C)",
  ["?"] = "Block And Cancel: Previous Value Kept (?)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.labels[value] or "Block And Cancel: Unknown("..value..")"
end

-- Dissect: Block And Cancel
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.block_and_cancel, range, value, display)

  return offset + length, value
end

-- Blow Through Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection = {}

-- Size: Blow Through Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.size = 1

-- Display: Blow Through Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.labels = {
  ["Y"] = "Blow Through Protection: Enabled (Y)",
  ["N"] = "Blow Through Protection: Disabled (N)",
  ["?"] = "Blow Through Protection: Previous Value Kept (?)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.labels[value] or "Blow Through Protection: Unknown("..value..")"
end

-- Dissect: Blow Through Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.blow_through_protection, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_type.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Currency
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency = {}

-- Size: Currency
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.size = 3

-- Display: Currency
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_text = {}

-- Display: Debug Text
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.debug_text, range, value, display)

  return offset + size, value
end

-- In Auction Fat Finger Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection = {}

-- Size: In Auction Fat Finger Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.size = 1

-- Display: In Auction Fat Finger Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.labels = {
  ["Y"] = "In Auction Fat Finger Protection: Enabled (Y)",
  ["N"] = "In Auction Fat Finger Protection: Disabled (N)",
  ["?"] = "In Auction Fat Finger Protection: Previous Value Kept (?)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.labels[value] or "In Auction Fat Finger Protection: Unknown("..value..")"
end

-- Dissect: In Auction Fat Finger Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.in_auction_fat_finger_protection, range, value, display)

  return offset + length, value
end

-- In Auction Market Order Prevention
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention = {}

-- Size: In Auction Market Order Prevention
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.size = 1

-- Display: In Auction Market Order Prevention
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.labels = {
  ["Y"] = "In Auction Market Order Prevention: Enabled (Y)",
  ["N"] = "In Auction Market Order Prevention: Disabled (N)",
  ["?"] = "In Auction Market Order Prevention: Previous Value Kept (?)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.labels[value] or "In Auction Market Order Prevention: Unknown("..value..")"
end

-- Dissect: In Auction Market Order Prevention
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.in_auction_market_order_prevention, range, value, display)

  return offset + length, value
end

-- In Auction Market Order Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection = {}

-- Size: In Auction Market Order Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.size = 1

-- Display: In Auction Market Order Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.labels = {
  ["Y"] = "In Auction Market Order Protection: Enabled (Y)",
  ["N"] = "In Auction Market Order Protection: Disabled (N)",
  ["?"] = "In Auction Market Order Protection: Previous Value Kept (?)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.labels[value] or "In Auction Market Order Protection: Unknown("..value..")"
end

-- Dissect: In Auction Market Order Protection
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.in_auction_market_order_protection, range, value, display)

  return offset + length, value
end

-- Last Update Time
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.last_update_time = {}

-- Size: Last Update Time
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.last_update_time.size = 8

-- Display: Last Update Time
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.last_update_time.display = function(value)
  return "Last Update Time: "..value
end

-- Dissect: Last Update Time
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.last_update_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.last_update_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.last_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Market Segment
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment = {}

-- Size: Market Segment
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment.size = 2

-- Display: Market Segment
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment.display = function(value)
  return "Market Segment: "..value
end

-- Dissect: Market Segment
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.market_segment, range, value, display)

  return offset + length, value
end

-- Max Quantity
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity = {}

-- Size: Max Quantity
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity.size = 8

-- Display: Max Quantity
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity.display = function(value)
  return "Max Quantity: "..value
end

-- Dissect: Max Quantity
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.max_quantity, range, value, display)

  return offset + length, value
end

-- Max Quantity Auction
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity_auction = {}

-- Size: Max Quantity Auction
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity_auction.size = 8

-- Display: Max Quantity Auction
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity_auction.display = function(value)
  return "Max Quantity Auction: "..value
end

-- Dissect: Max Quantity Auction
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity_auction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity_auction.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity_auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.max_quantity_auction, range, value, display)

  return offset + length, value
end

-- Max Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value = {}

-- Size: Max Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.size = 8

-- Display: Max Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.display = function(value)
  return "Max Value: "..value
end

-- Translate: Max Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Max Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.translate(raw)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.max_value, range, value, display)

  return offset + length, value
end

-- Max Value Auction
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction = {}

-- Size: Max Value Auction
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.size = 8

-- Display: Max Value Auction
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.display = function(value)
  return "Max Value Auction: "..value
end

-- Translate: Max Value Auction
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Max Value Auction
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.translate(raw)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.max_value_auction, range, value, display)

  return offset + length, value
end

-- Open Order Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value = {}

-- Size: Open Order Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.size = 8

-- Display: Open Order Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.display = function(value)
  return "Open Order Buy Value: "..value
end

-- Translate: Open Order Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Open Order Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.translate(raw)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.open_order_buy_value, range, value, display)

  return offset + length, value
end

-- Open Order Net Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value = {}

-- Size: Open Order Net Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.size = 8

-- Display: Open Order Net Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.display = function(value)
  return "Open Order Net Value: "..value
end

-- Translate: Open Order Net Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Open Order Net Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.translate(raw)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.open_order_net_value, range, value, display)

  return offset + length, value
end

-- Open Order Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value = {}

-- Size: Open Order Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.size = 8

-- Display: Open Order Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.display = function(value)
  return "Open Order Sell Value: "..value
end

-- Translate: Open Order Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Open Order Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.translate(raw)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.open_order_sell_value, range, value, display)

  return offset + length, value
end

-- Order Book
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book = {}

-- Size: Order Book
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book.size = 4

-- Display: Order Book
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book.display = function(value)
  return "Order Book: "..value
end

-- Dissect: Order Book
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.order_book, range, value, display)

  return offset + length, value
end

-- Orders Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_buy_value = {}

-- Size: Orders Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_buy_value.size = 8

-- Display: Orders Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_buy_value.display = function(value)
  return "Orders Buy Value: "..value
end

-- Dissect: Orders Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_buy_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_buy_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_buy_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.orders_buy_value, range, value, display)

  return offset + length, value
end

-- Orders Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_sell_value = {}

-- Size: Orders Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_sell_value.size = 8

-- Display: Orders Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_sell_value.display = function(value)
  return "Orders Sell Value: "..value
end

-- Dissect: Orders Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_sell_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_sell_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_sell_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.orders_sell_value, range, value, display)

  return offset + length, value
end

-- Orders Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_total_value = {}

-- Size: Orders Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_total_value.size = 8

-- Display: Orders Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_total_value.display = function(value)
  return "Orders Total Value: "..value
end

-- Dissect: Orders Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_total_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_total_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_total_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.orders_total_value, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.packet_length = {}

-- Size: Packet Length
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.packet_length.size = 2

-- Display: Packet Length
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.password = {}

-- Size: Password
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.password.size = 10

-- Display: Password
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.password, range, value, display)

  return offset + length, value
end

-- Prm Account
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account = {}

-- Size: Prm Account
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size = 6

-- Display: Prm Account
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.display = function(value)
  return "Prm Account: "..value
end

-- Dissect: Prm Account
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.prm_account, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reason = {}

-- Size: Reason
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reason.size = 1

-- Display: Reason
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reason.labels = {
  ["C"] = "Reason: Invalid Currency (C)",
  ["A"] = "Reason: Invalid Prm Account (A)",
  ["N"] = "Reason: No Setting Present (N)",
  ["U"] = "Reason: Unauthorized (U)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reason.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reason.labels[value] or "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject All Flag
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag = {}

-- Size: Reject All Flag
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.size = 1

-- Display: Reject All Flag
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.labels = {
  ["Y"] = "Reject All Flag: Enabled (Y)",
  ["N"] = "Reject All Flag: Disabled (N)",
  ["?"] = "Reject All Flag: Previous Value Kept (?)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.labels[value] or "Reject All Flag: Unknown("..value..")"
end

-- Dissect: Reject All Flag
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.reject_all_flag, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_reason_code.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Repeated Order Generation
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.repeated_order_generation = {}

-- Size: Repeated Order Generation
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.repeated_order_generation.size = 4

-- Display: Repeated Order Generation
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.repeated_order_generation.display = function(value)
  return "Repeated Order Generation: "..value
end

-- Dissect: Repeated Order Generation
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.repeated_order_generation.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.repeated_order_generation.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.repeated_order_generation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.repeated_order_generation, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nordicequities_riskcontrol_binary_v1_00_1.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_session = {}

-- Size: Requested Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Risk Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.risk_total_value = {}

-- Size: Risk Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.risk_total_value.size = 8

-- Display: Risk Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.risk_total_value.display = function(value)
  return "Risk Total Value: "..value
end

-- Dissect: Risk Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.risk_total_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.risk_total_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.risk_total_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.risk_total_value, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message_type.labels = {
  ["Q"] = "Sequenced Message Type: Account Query Response Message (Q)",
  ["C"] = "Sequenced Message Type: Account Settings Response Message (C)",
  ["R"] = "Sequenced Message Type: Order Book Restriction Response Message (R)",
  ["S"] = "Sequenced Message Type: Market Segment Restriction Response Message (S)",
  ["L"] = "Sequenced Message Type: Limit Settings Response Message (L)",
  ["F"] = "Sequenced Message Type: Account Currency Setting Response Message (F)",
  ["J"] = "Sequenced Message Type: Reject Message (J)",
  ["P"] = "Sequenced Message Type: Api Port Rate Breach Message (P)",
  ["B"] = "Sequenced Message Type: Account Rate Breach Message (B)",
  ["V"] = "Sequenced Message Type: Accumulated Values Message (V)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message_type.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_type.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- State
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state = {}

-- Size: State
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.size = 1

-- Display: State
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.labels = {
  ["A"] = "State: Active (A)",
  ["I"] = "State: Inactive (I)",
  ["?"] = "State: Previous Value Kept (?)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.labels[value] or "State: Unknown("..value..")"
end

-- Dissect: State
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.state, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp = {}

-- Size: Timestamp
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp_format == 2 and packet then
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
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Risk Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value = {}

-- Size: Total Risk Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.size = 8

-- Display: Total Risk Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.display = function(value)
  return "Total Risk Value: "..value
end

-- Translate: Total Risk Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Total Risk Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.translate(raw)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.total_risk_value, range, value, display)

  return offset + length, value
end

-- Trade Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value = {}

-- Size: Trade Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.size = 8

-- Display: Trade Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.display = function(value)
  return "Trade Buy Value: "..value
end

-- Translate: Trade Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Trade Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.translate(raw)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trade_buy_value, range, value, display)

  return offset + length, value
end

-- Trade Net Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value = {}

-- Size: Trade Net Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.size = 8

-- Display: Trade Net Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.display = function(value)
  return "Trade Net Value: "..value
end

-- Translate: Trade Net Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Trade Net Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.translate(raw)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trade_net_value, range, value, display)

  return offset + length, value
end

-- Trade Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value = {}

-- Size: Trade Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.size = 8

-- Display: Trade Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.display = function(value)
  return "Trade Sell Value: "..value
end

-- Translate: Trade Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Trade Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.translate(raw)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trade_sell_value, range, value, display)

  return offset + length, value
end

-- Trades Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_buy_value = {}

-- Size: Trades Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_buy_value.size = 8

-- Display: Trades Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_buy_value.display = function(value)
  return "Trades Buy Value: "..value
end

-- Dissect: Trades Buy Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_buy_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_buy_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_buy_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trades_buy_value, range, value, display)

  return offset + length, value
end

-- Trades Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_sell_value = {}

-- Size: Trades Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_sell_value.size = 8

-- Display: Trades Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_sell_value.display = function(value)
  return "Trades Sell Value: "..value
end

-- Dissect: Trades Sell Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_sell_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_sell_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_sell_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trades_sell_value, range, value, display)

  return offset + length, value
end

-- Trades Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_total_value = {}

-- Size: Trades Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_total_value.size = 8

-- Display: Trades Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_total_value.display = function(value)
  return "Trades Total Value: "..value
end

-- Dissect: Trades Total Value
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_total_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_total_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_total_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trades_total_value, range, value, display)

  return offset + length, value
end

-- Trigger Restrict Symbol On Repeated Order Generation
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation = {}

-- Size: Trigger Restrict Symbol On Repeated Order Generation
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.size = 1

-- Display: Trigger Restrict Symbol On Repeated Order Generation
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.labels = {
  ["Y"] = "Trigger Restrict Symbol On Repeated Order Generation: Enabled (Y)",
  ["N"] = "Trigger Restrict Symbol On Repeated Order Generation: Disabled (N)",
  ["?"] = "Trigger Restrict Symbol On Repeated Order Generation: Previous Value Kept (?)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.labels[value] or "Trigger Restrict Symbol On Repeated Order Generation: Unknown("..value..")"
end

-- Dissect: Trigger Restrict Symbol On Repeated Order Generation
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.trigger_restrict_symbol_on_repeated_order_generation, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message_type.labels = {
  ["Q"] = "Unsequenced Message Type: Account Query Message (Q)",
  ["C"] = "Unsequenced Message Type: Modify Account Settings Message (C)",
  ["R"] = "Unsequenced Message Type: Modify Order Book Restriction Message (R)",
  ["S"] = "Unsequenced Message Type: Modify Market Segment Restriction Message (S)",
  ["L"] = "Unsequenced Message Type: Modify Limit Settings Message (L)",
  ["F"] = "Unsequenced Message Type: Modify Account Currency Setting Message (F)",
}

nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message_type.display = function(value)
  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Unused
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unused = {}

-- Size: Unused
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unused.size = 8

-- Display: Unused
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unused.display = function(value)
  return "Unused: "..value
end

-- Dissect: Unused
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unused.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unused.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unused.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.unused, range, value, display)

  return offset + length, value
end

-- User Ref Num
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num = {}

-- Size: User Ref Num
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size = 4

-- Display: User Ref Num
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.display = function(value)
  return "User Ref Num: "..value
end

-- Dissect: User Ref Num
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.user_ref_num, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.username = {}

-- Size: Username
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.username.size = 6

-- Display: Username
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NordicEquities RiskControl Binary 1.00.1
-----------------------------------------------------------------------

-- End Of Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.end_of_session = {}

-- Display: End Of Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Accumulated Values Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accumulated_values_message = {}

-- Size: Accumulated Values Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accumulated_values_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.last_update_time.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.risk_total_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_buy_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_sell_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_total_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_buy_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_sell_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_total_value.size

-- Display: Accumulated Values Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accumulated_values_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accumulated Values Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accumulated_values_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.dissect(buffer, index, packet, parent)

  -- Last Update Time: Integer
  index, last_update_time = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.last_update_time.dissect(buffer, index, packet, parent)

  -- Risk Total Value: Integer
  index, risk_total_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.risk_total_value.dissect(buffer, index, packet, parent)

  -- Trades Buy Value: Integer
  index, trades_buy_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_buy_value.dissect(buffer, index, packet, parent)

  -- Trades Sell Value: Integer
  index, trades_sell_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_sell_value.dissect(buffer, index, packet, parent)

  -- Trades Total Value: Integer
  index, trades_total_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trades_total_value.dissect(buffer, index, packet, parent)

  -- Orders Buy Value: Integer
  index, orders_buy_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_buy_value.dissect(buffer, index, packet, parent)

  -- Orders Sell Value: Integer
  index, orders_sell_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_sell_value.dissect(buffer, index, packet, parent)

  -- Orders Total Value: Integer
  index, orders_total_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.orders_total_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Accumulated Values Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accumulated_values_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.accumulated_values_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accumulated_values_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accumulated_values_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accumulated_values_message.fields(buffer, offset, packet, parent)
  end
end

-- Account Rate Breach Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_rate_breach_message = {}

-- Size: Account Rate Breach Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_rate_breach_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size

-- Display: Account Rate Breach Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_rate_breach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Rate Breach Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_rate_breach_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.dissect(buffer, index, packet, parent)

  -- State: Alpha
  index, state = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Account Rate Breach Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_rate_breach_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.account_rate_breach_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_rate_breach_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_rate_breach_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_rate_breach_message.fields(buffer, offset, packet, parent)
  end
end

-- Api Port Rate Breach Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.api_port_rate_breach_message = {}

-- Size: Api Port Rate Breach Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.api_port_rate_breach_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.size

-- Display: Api Port Rate Breach Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.api_port_rate_breach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Api Port Rate Breach Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.api_port_rate_breach_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Api Port Rate Breach Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.api_port_rate_breach_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.api_port_rate_breach_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.api_port_rate_breach_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.api_port_rate_breach_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.api_port_rate_breach_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_message = {}

-- Size: Reject Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reason.size

-- Display: Reject Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.reject_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Account Currency Setting Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_currency_setting_response_message = {}

-- Size: Account Currency Setting Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_currency_setting_response_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.size

-- Display: Account Currency Setting Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_currency_setting_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Currency Setting Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_currency_setting_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.dissect(buffer, index, packet, parent)

  -- Reject All Flag: Alpha
  index, reject_all_flag = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.dissect(buffer, index, packet, parent)

  -- Blow Through Protection: Alpha
  index, blow_through_protection = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Account Currency Setting Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_currency_setting_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.account_currency_setting_response_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_currency_setting_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_currency_setting_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_currency_setting_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Settings Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.limit_settings_response_message = {}

-- Size: Limit Settings Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.limit_settings_response_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unused.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity_auction.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.size

-- Display: Limit Settings Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.limit_settings_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Settings Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.limit_settings_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.dissect(buffer, index, packet, parent)

  -- Max Quantity: Signed Integer
  index, max_quantity = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity.dissect(buffer, index, packet, parent)

  -- Max Value: Price
  index, max_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.dissect(buffer, index, packet, parent)

  -- Unused: Integer
  index, unused = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unused.dissect(buffer, index, packet, parent)

  -- Total Risk Value: Price
  index, total_risk_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.dissect(buffer, index, packet, parent)

  -- Trade Buy Value: Price
  index, trade_buy_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.dissect(buffer, index, packet, parent)

  -- Trade Sell Value: Price
  index, trade_sell_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.dissect(buffer, index, packet, parent)

  -- Trade Net Value: Price
  index, trade_net_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.dissect(buffer, index, packet, parent)

  -- Open Order Buy Value: Price
  index, open_order_buy_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.dissect(buffer, index, packet, parent)

  -- Open Order Sell Value: Price
  index, open_order_sell_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.dissect(buffer, index, packet, parent)

  -- Open Order Net Value: Price
  index, open_order_net_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.dissect(buffer, index, packet, parent)

  -- Max Quantity Auction: Signed Integer
  index, max_quantity_auction = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity_auction.dissect(buffer, index, packet, parent)

  -- Max Value Auction: Price
  index, max_value_auction = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Settings Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.limit_settings_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.limit_settings_response_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.limit_settings_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.limit_settings_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.limit_settings_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Segment Restriction Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment_restriction_response_message = {}

-- Size: Market Segment Restriction Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment_restriction_response_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.size

-- Display: Market Segment Restriction Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment_restriction_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Segment Restriction Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment_restriction_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Market Segment: Integer
  index, market_segment = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment.dissect(buffer, index, packet, parent)

  -- State: Alpha
  index, state = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Segment Restriction Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment_restriction_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.market_segment_restriction_response_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment_restriction_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment_restriction_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment_restriction_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Restriction Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book_restriction_response_message = {}

-- Size: Order Book Restriction Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book_restriction_response_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.size

-- Display: Order Book Restriction Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book_restriction_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Restriction Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book_restriction_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.timestamp.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book.dissect(buffer, index, packet, parent)

  -- State: Alpha
  index, state = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Restriction Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book_restriction_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.order_book_restriction_response_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book_restriction_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book_restriction_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book_restriction_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Account Settings Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_settings_response_message = {}

-- Size: Account Settings Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_settings_response_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.repeated_order_generation.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.size

-- Display: Account Settings Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_settings_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Settings Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_settings_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Repeated Order Generation: Signed Integer
  index, repeated_order_generation = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.repeated_order_generation.dissect(buffer, index, packet, parent)

  -- Trigger Restrict Symbol On Repeated Order Generation: Alpha
  index, trigger_restrict_symbol_on_repeated_order_generation = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.dissect(buffer, index, packet, parent)

  -- In Auction Market Order Prevention: Alpha
  index, in_auction_market_order_prevention = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.dissect(buffer, index, packet, parent)

  -- In Auction Fat Finger Protection: Alpha
  index, in_auction_fat_finger_protection = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.dissect(buffer, index, packet, parent)

  -- In Auction Market Order Protection: Alpha
  index, in_auction_market_order_protection = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.dissect(buffer, index, packet, parent)

  -- Block And Cancel: Alpha
  index, block_and_cancel = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Account Settings Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_settings_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.account_settings_response_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_settings_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_settings_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_settings_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Account Query Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_response_message = {}

-- Size: Account Query Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_response_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size

-- Display: Account Query Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Account Query Response Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.account_query_response_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message = {}

-- Dispatch: Sequenced Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message.dispatch = {
  ["Q"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_response_message.dissect,
  ["C"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_settings_response_message.dissect,
  ["R"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book_restriction_response_message.dissect,
  ["S"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment_restriction_response_message.dissect,
  ["L"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.limit_settings_response_message.dissect,
  ["F"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_currency_setting_response_message.dissect,
  ["J"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_message.dissect,
  ["P"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.api_port_rate_breach_message.dissect,
  ["B"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_rate_breach_message.dissect,
  ["V"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accumulated_values_message.dissect,
}

-- Dissect: Sequenced Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_nordicequities_riskcontrol_binary_v1_00_1.stream_frame ~= packet.number or nasdaq_nordicequities_riskcontrol_binary_v1_00_1.stream_occurrence >= #memo then
          nasdaq_nordicequities_riskcontrol_binary_v1_00_1.stream_frame = packet.number
          nasdaq_nordicequities_riskcontrol_binary_v1_00_1.stream_occurrence = 0
        end
        nasdaq_nordicequities_riskcontrol_binary_v1_00_1.stream_occurrence = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.stream_occurrence + 1
        local value = memo[nasdaq_nordicequities_riskcontrol_binary_v1_00_1.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 10 values
  index, sequenced_message_type = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 10 branches
  index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_rejected_packet.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_accepted_packet.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_session.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_payload = {}

-- Dispatch: Server Payload
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_payload.dispatch = {
  ["+"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_packet.dissect,
  ["A"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_accepted_packet.dissect,
  ["J"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_rejected_packet.dissect,
  ["S"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.sequenced_data_packet.dissect,
  ["H"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_heartbeat.dissect,
  ["Z"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.end_of_session.dissect,
}

-- Dissect: Server Payload
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.packet_length.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header.size then
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
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.current = data

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
      index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.logout_request = {}

-- Display: Logout Request
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Modify Account Currency Setting Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_currency_setting_message = {}

-- Size: Modify Account Currency Setting Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_currency_setting_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.size

-- Display: Modify Account Currency Setting Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_currency_setting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Account Currency Setting Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_currency_setting_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.dissect(buffer, index, packet, parent)

  -- Reject All Flag: Alpha
  index, reject_all_flag = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.reject_all_flag.dissect(buffer, index, packet, parent)

  -- Blow Through Protection: Alpha
  index, blow_through_protection = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.blow_through_protection.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Account Currency Setting Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_currency_setting_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.modify_account_currency_setting_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_currency_setting_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_currency_setting_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_currency_setting_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Limit Settings Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_limit_settings_message = {}

-- Size: Modify Limit Settings Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_limit_settings_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unused.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity_auction.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.size

-- Display: Modify Limit Settings Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_limit_settings_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Limit Settings Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_limit_settings_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.currency.dissect(buffer, index, packet, parent)

  -- Max Quantity: Signed Integer
  index, max_quantity = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity.dissect(buffer, index, packet, parent)

  -- Max Value: Price
  index, max_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value.dissect(buffer, index, packet, parent)

  -- Unused: Integer
  index, unused = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unused.dissect(buffer, index, packet, parent)

  -- Total Risk Value: Price
  index, total_risk_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.total_risk_value.dissect(buffer, index, packet, parent)

  -- Trade Buy Value: Price
  index, trade_buy_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_buy_value.dissect(buffer, index, packet, parent)

  -- Trade Sell Value: Price
  index, trade_sell_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_sell_value.dissect(buffer, index, packet, parent)

  -- Trade Net Value: Price
  index, trade_net_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trade_net_value.dissect(buffer, index, packet, parent)

  -- Open Order Buy Value: Price
  index, open_order_buy_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_buy_value.dissect(buffer, index, packet, parent)

  -- Open Order Sell Value: Price
  index, open_order_sell_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_sell_value.dissect(buffer, index, packet, parent)

  -- Open Order Net Value: Price
  index, open_order_net_value = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.open_order_net_value.dissect(buffer, index, packet, parent)

  -- Max Quantity Auction: Signed Integer
  index, max_quantity_auction = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_quantity_auction.dissect(buffer, index, packet, parent)

  -- Max Value Auction: Price
  index, max_value_auction = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.max_value_auction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Limit Settings Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_limit_settings_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.modify_limit_settings_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_limit_settings_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_limit_settings_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_limit_settings_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Market Segment Restriction Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_market_segment_restriction_message = {}

-- Size: Modify Market Segment Restriction Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_market_segment_restriction_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.size

-- Display: Modify Market Segment Restriction Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_market_segment_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Market Segment Restriction Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_market_segment_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Market Segment: Integer
  index, market_segment = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.market_segment.dissect(buffer, index, packet, parent)

  -- State: Alpha
  index, state = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Market Segment Restriction Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_market_segment_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.modify_market_segment_restriction_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_market_segment_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_market_segment_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_market_segment_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Book Restriction Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_order_book_restriction_message = {}

-- Size: Modify Order Book Restriction Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_order_book_restriction_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.size

-- Display: Modify Order Book Restriction Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_order_book_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Book Restriction Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_order_book_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.order_book.dissect(buffer, index, packet, parent)

  -- State: Alpha
  index, state = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Book Restriction Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_order_book_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.modify_order_book_restriction_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_order_book_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_order_book_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_order_book_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Account Settings Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_settings_message = {}

-- Size: Modify Account Settings Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_settings_message.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.repeated_order_generation.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.size

-- Display: Modify Account Settings Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_settings_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Account Settings Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_settings_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: UserRefNum
  index, user_ref_num = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.user_ref_num.dissect(buffer, index, packet, parent)

  -- Prm Account: Alpha-numeric
  index, prm_account = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prm_account.dissect(buffer, index, packet, parent)

  -- Repeated Order Generation: Signed Integer
  index, repeated_order_generation = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.repeated_order_generation.dissect(buffer, index, packet, parent)

  -- Trigger Restrict Symbol On Repeated Order Generation: Alpha
  index, trigger_restrict_symbol_on_repeated_order_generation = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.trigger_restrict_symbol_on_repeated_order_generation.dissect(buffer, index, packet, parent)

  -- In Auction Market Order Prevention: Alpha
  index, in_auction_market_order_prevention = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_prevention.dissect(buffer, index, packet, parent)

  -- In Auction Fat Finger Protection: Alpha
  index, in_auction_fat_finger_protection = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_fat_finger_protection.dissect(buffer, index, packet, parent)

  -- In Auction Market Order Protection: Alpha
  index, in_auction_market_order_protection = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.in_auction_market_order_protection.dissect(buffer, index, packet, parent)

  -- Block And Cancel: Alpha
  index, block_and_cancel = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.block_and_cancel.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Account Settings Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_settings_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.modify_account_settings_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_settings_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_settings_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_settings_message.fields(buffer, offset, packet, parent)
  end
end

-- Account Query Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_message = {}

-- Display: Account Query Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_message.display = function(packet, parent, length)
  return "Account Query Message"
end


-- Dissect: Account Query Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_message.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message = {}

-- Dispatch: Unsequenced Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message.dispatch = {
  ["Q"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.account_query_message.dissect,
  ["C"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_settings_message.dissect,
  ["R"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_order_book_restriction_message.dissect,
  ["S"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_market_segment_restriction_message.dissect,
  ["L"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_limit_settings_message.dissect,
  ["F"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.modify_account_currency_setting_message.dissect,
}

-- Dissect: Unsequenced Message
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 6 values
  index, unsequenced_message_type = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 6 branches
  index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_request_packet.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.username.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.password.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_session.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_payload = {}

-- Dispatch: Client Payload
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_payload.dispatch = {
  ["+"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.debug_packet.dissect,
  ["L"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.login_request_packet.dissect,
  ["U"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.unsequenced_data_packet.dissect,
  ["R"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_heartbeat.dissect,
  ["O"] = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.logout_request.dissect,
}

-- Dissect: Client Payload
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header.size =
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.packet_length.size + 
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header.size then
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
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet.dissect = function(buffer, packet, parent)
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
      index = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.init()
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.accepted_sequence_number.current = nil
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.current = nil
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.conversation.flows = {}
end

-- Connection roles for Nasdaq NordicEquities RiskControl Binary 1.00.1: Client is the initiator, Server is the acceptor
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
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.role = function(packet)
  if omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.acceptor_port

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

  if omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.prefs.swap_sides then
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
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NordicEquities RiskControl Binary 1.00.1
function omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1, buffer(), omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.role(packet)

  if role == "initiator" then
    return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet.fingerprint = function(buffer)
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
nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Nasdaq NordicEquities RiskControl Binary 1.00.1 (Tcp)
local function omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nasdaq_nordicequities_riskcontrol_binary_v1_00_1.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1
  omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NordicEquities RiskControl Binary 1.00.1 (Tcp)
local function omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nasdaq_nordicequities_riskcontrol_binary_v1_00_1.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1
  omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NordicEquities RiskControl Binary 1.00.1 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nordicequities_riskcontrol_binary_v1_00_1.role(packet)
  local initiator = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nordicequities_riskcontrol_binary_v1_00_1.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NordicEquities RiskControl Binary 1.00.1
omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1:register_heuristic("tcp", omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1_tcp_heuristic)

-- Register Nasdaq NordicEquities RiskControl Binary 1.00.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nordicequities_riskcontrol_binary_v1_00_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.00.1
--   Date: Tuesday, February 10, 2026
--   Specification: Nasdaq-Nordic---PRM-v.1.00.1.pdf
--   Specification: SoupBinTCP-for-Nasdaq-Nordic-v.3.00.4.pdf
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
