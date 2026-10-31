-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X A2XEquities TradingProtocol Atp 2.9 Protocol
local omi_a2x_a2xequities_tradingprotocol_atp_v2_9 = Proto("Omi.A2X.A2XEquities.TradingProtocol.Atp.v2.9", "A2X A2XEquities TradingProtocol Atp 2.9")

-- Protocol table
local a2x_a2xequities_tradingprotocol_atp_v2_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X A2XEquities TradingProtocol Atp 2.9 Fields
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.account = ProtoField.new("Account", "a2x.a2xequities.tradingprotocol.atp.v2.9.account", ftypes.UINT16, nil, nil, nil, "Clearing account identifier")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.atp_seq_no = ProtoField.new("Atp Seq No", "a2x.a2xequities.tradingprotocol.atp.v2.9.atpseqno", ftypes.UINT32, nil, nil, nil, "The next sequence number from A2X that the trading Member is expecting. After a drop or break in the session this can be used by A2X to identify a gap and trigger any missed messages to be re-sent (see Login Response).")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.bust_timestamp = ProtoField.new("Timestamp", "a2x.a2xequities.tradingprotocol.atp.v2.9.busttimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time that the trade was busted by A2X Market Operations")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.bust_timestamp_utc = ProtoField.new("Timestamp", "a2x.a2xequities.tradingprotocol.atp.v2.9.busttimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time that the trade was busted by A2X Market Operations")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.buy_account = ProtoField.new("Buy Account", "a2x.a2xequities.tradingprotocol.atp.v2.9.buyaccount", ftypes.UINT16, nil, nil, nil, "Clearing account identifier of the buy side")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.buy_order_capacity = ProtoField.new("Buy Order Capacity", "a2x.a2xequities.tradingprotocol.atp.v2.9.buyordercapacity", ftypes.UINT8, nil, nil, nil, "Order capacity of the buy side")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.cancellation_timestamp = ProtoField.new("Timestamp", "a2x.a2xequities.tradingprotocol.atp.v2.9.cancellationtimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time that the cancellation was accepted or rejected by the A2X system")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.cancellation_timestamp_utc = ProtoField.new("Timestamp", "a2x.a2xequities.tradingprotocol.atp.v2.9.cancellationtimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time that the cancellation was accepted or rejected by the A2X system")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.ccp_code = ProtoField.new("Ccp Code", "a2x.a2xequities.tradingprotocol.atp.v2.9.ccpcode", ftypes.UINT8, nil, nil, nil, "Clearing CCP code")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.client_seq_no = ProtoField.new("Client Seq No", "a2x.a2xequities.tradingprotocol.atp.v2.9.clientseqno", ftypes.UINT32, nil, nil, nil, "Next sequence number A2X expects to receive")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.display_quantity = ProtoField.new("Display Quantity", "a2x.a2xequities.tradingprotocol.atp.v2.9.displayquantity", ftypes.UINT32, nil, nil, nil, "Display quantity for an iceberg order")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.inactivity_timeout = ProtoField.new("Inactivity Timeout", "a2x.a2xequities.tradingprotocol.atp.v2.9.inactivitytimeout", ftypes.UINT16, nil, nil, nil, "Optional inactivity timeout in seconds. If there are no messages received for this period of time then A2X will close the session (triggering cancel on disconnect)")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.length = ProtoField.new("Length", "a2x.a2xequities.tradingprotocol.atp.v2.9.length", ftypes.UINT16, nil, nil, nil, "Length of message including this header")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.liq_indicator = ProtoField.new("Liq Indicator", "a2x.a2xequities.tradingprotocol.atp.v2.9.liqindicator", ftypes.UINT8, nil, nil, nil, "Liquidity indicator")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.logout_reason_code = ProtoField.new("Logout Reason Code", "a2x.a2xequities.tradingprotocol.atp.v2.9.logoutreasoncode", ftypes.UINT8, nil, nil, nil, "Reason code for logout")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.market_data_id = ProtoField.new("Market Data Id", "a2x.a2xequities.tradingprotocol.atp.v2.9.marketdataid", ftypes.UINT32, nil, nil, nil, "The id of this order as seen in the A2X market data")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.min_qty = ProtoField.new("Min Qty", "a2x.a2xequities.tradingprotocol.atp.v2.9.minqty", ftypes.UINT32, nil, nil, nil, "Minimum quantity (shares) of an order to be executed. Only valid when OrderType = 2 or 3")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.modification_timestamp = ProtoField.new("Timestamp", "a2x.a2xequities.tradingprotocol.atp.v2.9.modificationtimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time that the modification was accepted or rejected by the A2X system")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.modification_timestamp_utc = ProtoField.new("Timestamp", "a2x.a2xequities.tradingprotocol.atp.v2.9.modificationtimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time that the modification was accepted or rejected by the A2X system")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.msg_seq_no = ProtoField.new("Msg Seq No", "a2x.a2xequities.tradingprotocol.atp.v2.9.msgseqno", ftypes.UINT32, nil, nil, nil, "Message sequence number from the user or A2X")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.msg_type = ProtoField.new("Msg Type", "a2x.a2xequities.tradingprotocol.atp.v2.9.msgtype", ftypes.UINT8, nil, nil, nil, "Message type")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.new_a2x_ord_id = ProtoField.new("New A2X Ord Id", "a2x.a2xequities.tradingprotocol.atp.v2.9.newa2xordid", ftypes.UINT32, nil, nil, nil, "The ID of the Iceberg order refresh as seen in the A2X market data")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_capacity = ProtoField.new("Order Capacity", "a2x.a2xequities.tradingprotocol.atp.v2.9.ordercapacity", ftypes.UINT8)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_ref = ProtoField.new("Order Ref", "a2x.a2xequities.tradingprotocol.atp.v2.9.orderref", ftypes.UINT32, nil, nil, nil, "Order reference number")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_status = ProtoField.new("Order Status", "a2x.a2xequities.tradingprotocol.atp.v2.9.orderstatus", ftypes.UINT8, {[1]="Pending New", [2]="Acknowledged", [3]="Cancelled", [4]="Rejected", [5]="Filled", [6]="Modified"}, base.DEC, 0xE0)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_type = ProtoField.new("Order Type", "a2x.a2xequities.tradingprotocol.atp.v2.9.ordertype", ftypes.UINT8)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.orig_a2x_ord_id = ProtoField.new("Orig A2X Ord Id", "a2x.a2xequities.tradingprotocol.atp.v2.9.origa2xordid", ftypes.UINT32, nil, nil, nil, "The ID of the original order as seen in the A2X market data")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.password = ProtoField.new("Password", "a2x.a2xequities.tradingprotocol.atp.v2.9.password", ftypes.STRING, nil, nil, nil, "Password as agreed with A2X to verify the user")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.price = ProtoField.new("Price", "a2x.a2xequities.tradingprotocol.atp.v2.9.price", ftypes.DOUBLE, nil, nil, nil, "Price of the order or trade")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.protocol_version = ProtoField.new("Protocol Version", "a2x.a2xequities.tradingprotocol.atp.v2.9.protocolversion", ftypes.UINT16, nil, nil, nil, "A two byte field to represent the version of the ATP protocol that the user conforms to with major version number in the most significant byte and minor version number in the least significant byte. i.e. The current version v2.9 is LSB =9 MSB = 2 represented by value 0x0209")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.quantity = ProtoField.new("Quantity", "a2x.a2xequities.tradingprotocol.atp.v2.9.quantity", ftypes.UINT32, nil, nil, nil, "Number of shares")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reason_code = ProtoField.new("Reason Code", "a2x.a2xequities.tradingprotocol.atp.v2.9.reasoncode", ftypes.UINT8, nil, base.DEC, 0x1F, "Reason code if rejected or cancelled; otherwise zero")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reason_text = ProtoField.new("Reason Text", "a2x.a2xequities.tradingprotocol.atp.v2.9.reasontext", ftypes.STRING, nil, nil, nil, "Text describing reason for logout")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.request_ref = ProtoField.new("Request Ref", "a2x.a2xequities.tradingprotocol.atp.v2.9.requestref", ftypes.UINT32, nil, nil, nil, "Sequence number (msgSeqNo) of the trading Member's request message")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_1 = ProtoField.new("Reserved 1", "a2x.a2xequities.tradingprotocol.atp.v2.9.reserved1", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_4 = ProtoField.new("Reserved 4", "a2x.a2xequities.tradingprotocol.atp.v2.9.reserved4", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_8 = ProtoField.new("Reserved 8", "a2x.a2xequities.tradingprotocol.atp.v2.9.reserved8", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_byte_2 = ProtoField.new("Reserved", "a2x.a2xequities.tradingprotocol.atp.v2.9.reservedbyte2", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_byte_3 = ProtoField.new("Reserved", "a2x.a2xequities.tradingprotocol.atp.v2.9.reservedbyte3", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_byte_4 = ProtoField.new("Reserved", "a2x.a2xequities.tradingprotocol.atp.v2.9.reservedbyte4", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_byte_5 = ProtoField.new("Reserved", "a2x.a2xequities.tradingprotocol.atp.v2.9.reservedbyte5", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_int_2 = ProtoField.new("Reserved", "a2x.a2xequities.tradingprotocol.atp.v2.9.reservedint2", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_int_3 = ProtoField.new("Reserved", "a2x.a2xequities.tradingprotocol.atp.v2.9.reservedint3", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_int_4 = ProtoField.new("Reserved", "a2x.a2xequities.tradingprotocol.atp.v2.9.reservedint4", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_long_2 = ProtoField.new("Reserved", "a2x.a2xequities.tradingprotocol.atp.v2.9.reservedlong2", ftypes.BYTES)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.result_code = ProtoField.new("Result Code", "a2x.a2xequities.tradingprotocol.atp.v2.9.resultcode", ftypes.UINT8, nil, nil, nil, "Login result code")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.security_id_long = ProtoField.new("Security Id", "a2x.a2xequities.tradingprotocol.atp.v2.9.securityidlong", ftypes.UINT32, nil, nil, nil, "Numeric security identifier")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.security_id_short = ProtoField.new("Security Id", "a2x.a2xequities.tradingprotocol.atp.v2.9.securityidshort", ftypes.UINT16, nil, nil, nil, "Numeric security identifier")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.sell_account = ProtoField.new("Sell Account", "a2x.a2xequities.tradingprotocol.atp.v2.9.sellaccount", ftypes.UINT16, nil, nil, nil, "Clearing account identifier of the sell side")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.sell_order_capacity = ProtoField.new("Sell Order Capacity", "a2x.a2xequities.tradingprotocol.atp.v2.9.sellordercapacity", ftypes.UINT8, nil, nil, nil, "Order capacity of the sell side")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.sender_id = ProtoField.new("Sender Id", "a2x.a2xequities.tradingprotocol.atp.v2.9.senderid", ftypes.STRING, nil, nil, nil, "Value as agreed with A2X to identify the Members ATP session")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.side = ProtoField.new("Side", "a2x.a2xequities.tradingprotocol.atp.v2.9.side", ftypes.UINT8, nil, nil, nil, "Side of the order")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.status = ProtoField.new("Status", "a2x.a2xequities.tradingprotocol.atp.v2.9.status", ftypes.STRING, nil, nil, nil, "Status of order and reject or cancel code")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.time_in_force = ProtoField.new("Time In Force", "a2x.a2xequities.tradingprotocol.atp.v2.9.timeinforce", ftypes.UINT8, nil, nil, nil, "Time in force for this order")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.timestamp = ProtoField.new("Timestamp", "a2x.a2xequities.tradingprotocol.atp.v2.9.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time that the order was accepted or rejected by the A2X system")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.timestamp_utc = ProtoField.new("Timestamp", "a2x.a2xequities.tradingprotocol.atp.v2.9.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time that the order was accepted or rejected by the A2X system")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_capture_type = ProtoField.new("Trade Capture Type", "a2x.a2xequities.tradingprotocol.atp.v2.9.tradecapturetype", ftypes.UINT8)
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_ref = ProtoField.new("Trade Ref", "a2x.a2xequities.tradingprotocol.atp.v2.9.traderef", ftypes.UINT32, nil, nil, nil, "Trade reference number.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_timestamp = ProtoField.new("Timestamp", "a2x.a2xequities.tradingprotocol.atp.v2.9.tradetimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time that the trade occurred on the A2X system")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_timestamp_utc = ProtoField.new("Timestamp", "a2x.a2xequities.tradingprotocol.atp.v2.9.tradetimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time that the trade occurred on the A2X system")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.traded_quantity = ProtoField.new("Traded Quantity", "a2x.a2xequities.tradingprotocol.atp.v2.9.tradedquantity", ftypes.UINT32, nil, nil, nil, "Number of shares traded if any")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.user_tag = ProtoField.new("User Tag", "a2x.a2xequities.tradingprotocol.atp.v2.9.usertag", ftypes.UINT64, nil, nil, nil, "Free form tag assigned by trading Member")

-- A2X A2XEquities TradingProtocol Atp 2.9 Framing
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.message = ProtoField.new("Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.message", ftypes.STRING, nil, nil, nil, "A2X Atp Message")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.message_header = ProtoField.new("Message Header", "a2x.a2xequities.tradingprotocol.atp.v2.9.messageheader", ftypes.STRING, nil, nil, nil, "A2X Atp message header")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.packet = ProtoField.new("Packet", "a2x.a2xequities.tradingprotocol.atp.v2.9.packet", ftypes.STRING, nil, nil, nil, "A2X Atp Tcp Message Block")

-- A2X A2XEquities TradingProtocol 2.9 Application Messages
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.heartbeat = ProtoField.new("Heartbeat", "a2x.a2xequities.tradingprotocol.atp.v2.9.heartbeat", ftypes.BYTES, nil, nil, nil, "A Heartbeat message is simply a message header with a heartbeat id as the message content. For a heartbeat, msgType is set to 0 and msgSeqNo is set to the sequence number that will be set on the next business message.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.iceberg_order_refresh_message = ProtoField.new("Iceberg Order Refresh Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.icebergorderrefreshmessage", ftypes.STRING, nil, nil, nil, "A2X sends an Iceberg Order Refresh message to notify the Member when an iceberg order is refreshed from the non-displayed reserve quantity.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.login_message = ProtoField.new("Login Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.loginmessage", ftypes.STRING, nil, nil, nil, "The Login message is the initial message used to establish a trading session. It is also used to re-establish a session after a break.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.login_response_message = ProtoField.new("Login Response Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.loginresponsemessage", ftypes.STRING, nil, nil, nil, "The Login Response message is sent by A2X to acknowledge a Login request, and either accept or reject it.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.logout_message = ProtoField.new("Logout Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.logoutmessage", ftypes.STRING, nil, nil, nil, "The Logout message is usually sent as a response to the Logout Request however it may also be sent by A2X in case of a low sequence number or other protocol violation, or for other reasons. The TCP/IP connection is closed immediately after this message has been sent.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.logout_request_message = ProtoField.new("Logout Request Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.logoutrequestmessage", ftypes.BYTES, nil, nil, nil, "The Logout Request message is used by the trading Member to request the closure of a trading session.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_add_extended_message = ProtoField.new("Order Add Extended Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.orderaddextendedmessage", ftypes.STRING, nil, nil, nil, "The Order Add Extended message is sent by the trading Member to enter an order for a particular security with additional attributes.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_add_message = ProtoField.new("Order Add Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.orderaddmessage", ftypes.STRING, nil, nil, nil, "The Add Order message is sent by the trading Member to enter an order for a particular security.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_add_response_message = ProtoField.new("Order Add Response Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.orderaddresponsemessage", ftypes.STRING, nil, nil, nil, "A2X sends an Add Order Response message to acknowledge the receipt of an Order Add message.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.ordercancelmessage", ftypes.STRING, nil, nil, nil, "The Order Cancel message is sent when a user wishes to cancel an open order.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_cancel_response_message = ProtoField.new("Order Cancel Response Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.ordercancelresponsemessage", ftypes.STRING, nil, nil, nil, "A2X sends an Order Cancel Response to accept or reject an Order Cancel message. The message is also used if an order is cancelled by Market Operations or due to cancel on disconnect.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_modify_extended_message = ProtoField.new("Order Modify Extended Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.ordermodifyextendedmessage", ftypes.STRING, nil, nil, nil, "The Order Modify Extended message is sent when a user wants to modify an open Order Add Extended. Order quantity and/or limit price and/or display quantity and/or minimum quantity may be modified. All values must be included, even if some are unchanged.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_modify_message = ProtoField.new("Order Modify Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.ordermodifymessage", ftypes.STRING, nil, nil, nil, "The Order Modify message is sent when a user wishes to modify an open order. Order quantity and/or limit price may be modified. Both values must be included, even if one of them is unchanged.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_modify_response_message = ProtoField.new("Order Modify Response Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.ordermodifyresponsemessage", ftypes.STRING, nil, nil, nil, "A2X sends an Order Modify Response to accept or reject an Order Modify or an Order Modify Extended message.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.tradebustmessage", ftypes.STRING, nil, nil, nil, "If a trade is invalidated, a Trade Bust message is sent to notify the trading Member.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_capture_message = ProtoField.new("Trade Capture Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.tradecapturemessage", ftypes.STRING, nil, nil, nil, "A2X uses a Trade Capture Report message for the purpose of allowing members to submit Large in Scale (LS), Negotiated Benchmark Cross (NBC) and Matched Principal (MP) trades to the exchange.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_capture_response_message = ProtoField.new("Trade Capture Response Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.tradecaptureresponsemessage", ftypes.STRING, nil, nil, nil, "A2X sends a Trade Capture Response Message to accept or reject a Trade Capture Message.")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_message = ProtoField.new("Trade Message", "a2x.a2xequities.tradingprotocol.atp.v2.9.trademessage", ftypes.STRING, nil, nil, nil, "The Trade message is published when an order executes. The Trade message is also used to communicate indicative trade reports at lock time for Market at Close orders. Note that the price and tradeRef values will be zero for indicative trade reports published when MaC orders are matched at lock time.")

-----------------------------------------------------------------------
-- A2X A2XEquities TradingProtocol Atp 2.9 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
a2x_a2xequities_tradingprotocol_atp_v2_9.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- A2X A2XEquities TradingProtocol Atp 2.9 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register A2X A2XEquities TradingProtocol Atp 2.9 Show Options
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.show_application_messages then
    show.application_messages = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.show_application_messages
  end
  if show.headers ~= omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.show_headers then
    show.headers = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.show_headers
  end
  if show.structs ~= omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.show_structs then
    show.structs = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.show_structs
  end
  if a2x_a2xequities_tradingprotocol_atp_v2_9.absolute_time_base ~= omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.absolute_time_base then
    a2x_a2xequities_tradingprotocol_atp_v2_9.absolute_time_base = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- A2X A2XEquities TradingProtocol Atp 2.9 Fields
-----------------------------------------------------------------------

-- Account
a2x_a2xequities_tradingprotocol_atp_v2_9.account = {}

-- Size: Account
a2x_a2xequities_tradingprotocol_atp_v2_9.account.size = 2

-- Display: Account
a2x_a2xequities_tradingprotocol_atp_v2_9.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
a2x_a2xequities_tradingprotocol_atp_v2_9.account.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.account, range, value, display)

  return offset + length, value
end

-- Atp Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.atp_seq_no = {}

-- Size: Atp Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.atp_seq_no.size = 4

-- Display: Atp Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.atp_seq_no.display = function(value)
  return "Atp Seq No: "..value
end

-- Dissect: Atp Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.atp_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.atp_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.atp_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.atp_seq_no, range, value, display)

  return offset + length, value
end

-- Bust Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.bust_timestamp = {}

-- Size: Bust Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.bust_timestamp.size = 8

-- Dissect: Bust Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.bust_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.bust_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.bust_timestamp
  if a2x_a2xequities_tradingprotocol_atp_v2_9.absolute_time_base == 1 then field = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.bust_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Buy Account
a2x_a2xequities_tradingprotocol_atp_v2_9.buy_account = {}

-- Size: Buy Account
a2x_a2xequities_tradingprotocol_atp_v2_9.buy_account.size = 2

-- Display: Buy Account
a2x_a2xequities_tradingprotocol_atp_v2_9.buy_account.display = function(value)
  return "Buy Account: "..value
end

-- Dissect: Buy Account
a2x_a2xequities_tradingprotocol_atp_v2_9.buy_account.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.buy_account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.buy_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.buy_account, range, value, display)

  return offset + length, value
end

-- Buy Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.buy_order_capacity = {}

-- Size: Buy Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.buy_order_capacity.size = 1

-- Display: Buy Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.buy_order_capacity.labels = {
  [1] = "Buy Order Capacity: Agency (1)",
  [2] = "Buy Order Capacity: Principal (2)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.buy_order_capacity.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.buy_order_capacity.labels[value] or "Buy Order Capacity: Unknown("..value..")"
end

-- Dissect: Buy Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.buy_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.buy_order_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.buy_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.buy_order_capacity, range, value, display)

  return offset + length, value
end

-- Cancellation Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.cancellation_timestamp = {}

-- Size: Cancellation Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.cancellation_timestamp.size = 8

-- Dissect: Cancellation Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.cancellation_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.cancellation_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.cancellation_timestamp
  if a2x_a2xequities_tradingprotocol_atp_v2_9.absolute_time_base == 1 then field = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.cancellation_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ccp Code
a2x_a2xequities_tradingprotocol_atp_v2_9.ccp_code = {}

-- Size: Ccp Code
a2x_a2xequities_tradingprotocol_atp_v2_9.ccp_code.size = 1

-- Display: Ccp Code
a2x_a2xequities_tradingprotocol_atp_v2_9.ccp_code.labels = {
  [1] = "Ccp Code: Self Clearing (1)",
  [2] = "Ccp Code: Emcfnl 2 A (2)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.ccp_code.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.ccp_code.labels[value] or "Ccp Code: Unknown("..value..")"
end

-- Dissect: Ccp Code
a2x_a2xequities_tradingprotocol_atp_v2_9.ccp_code.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.ccp_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.ccp_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.ccp_code, range, value, display)

  return offset + length, value
end

-- Client Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.client_seq_no = {}

-- Size: Client Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.client_seq_no.size = 4

-- Display: Client Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.client_seq_no.display = function(value)
  return "Client Seq No: "..value
end

-- Dissect: Client Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.client_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.client_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.client_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.client_seq_no, range, value, display)

  return offset + length, value
end

-- Display Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.display_quantity = {}

-- Size: Display Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.display_quantity.size = 4

-- Display: Display Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.display_quantity.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Display Quantity: No Value"
  end

  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.display_quantity.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.display_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.display_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Inactivity Timeout
a2x_a2xequities_tradingprotocol_atp_v2_9.inactivity_timeout = {}

-- Size: Inactivity Timeout
a2x_a2xequities_tradingprotocol_atp_v2_9.inactivity_timeout.size = 2

-- Display: Inactivity Timeout
a2x_a2xequities_tradingprotocol_atp_v2_9.inactivity_timeout.display = function(value)
  return "Inactivity Timeout: "..value
end

-- Dissect: Inactivity Timeout
a2x_a2xequities_tradingprotocol_atp_v2_9.inactivity_timeout.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.inactivity_timeout.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.inactivity_timeout.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.inactivity_timeout, range, value, display)

  return offset + length, value
end

-- Length
a2x_a2xequities_tradingprotocol_atp_v2_9.length = {}

-- Size: Length
a2x_a2xequities_tradingprotocol_atp_v2_9.length.size = 2

-- Display: Length
a2x_a2xequities_tradingprotocol_atp_v2_9.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
a2x_a2xequities_tradingprotocol_atp_v2_9.length.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.length, range, value, display)

  return offset + length, value
end

-- Liq Indicator
a2x_a2xequities_tradingprotocol_atp_v2_9.liq_indicator = {}

-- Size: Liq Indicator
a2x_a2xequities_tradingprotocol_atp_v2_9.liq_indicator.size = 1

-- Display: Liq Indicator
a2x_a2xequities_tradingprotocol_atp_v2_9.liq_indicator.labels = {
  [1] = "Liq Indicator: Added Liquidity (1)",
  [2] = "Liq Indicator: Removed Liquidity (2)",
  [3] = "Liq Indicator: Removed Liquidity Hidden Quantity (3)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.liq_indicator.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.liq_indicator.labels[value] or "Liq Indicator: Unknown("..value..")"
end

-- Dissect: Liq Indicator
a2x_a2xequities_tradingprotocol_atp_v2_9.liq_indicator.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.liq_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.liq_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.liq_indicator, range, value, display)

  return offset + length, value
end

-- Logout Reason Code
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_reason_code = {}

-- Size: Logout Reason Code
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_reason_code.size = 1

-- Display: Logout Reason Code
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_reason_code.labels = {
  [0] = "Logout Reason Code: User Requested (0)",
  [1] = "Logout Reason Code: Admin (1)",
  [2] = "Logout Reason Code: Disconnect (2)",
  [3] = "Logout Reason Code: End Of Day (3)",
  [4] = "Logout Reason Code: Inactivity Timeout (4)",
  [5] = "Logout Reason Code: Protocol Error (5)",
  [6] = "Logout Reason Code: Sequence Number Error (6)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.logout_reason_code.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.logout_reason_code.labels[value] or "Logout Reason Code: Unknown("..value..")"
end

-- Dissect: Logout Reason Code
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.logout_reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.logout_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.logout_reason_code, range, value, display)

  return offset + length, value
end

-- Market Data Id
a2x_a2xequities_tradingprotocol_atp_v2_9.market_data_id = {}

-- Size: Market Data Id
a2x_a2xequities_tradingprotocol_atp_v2_9.market_data_id.size = 4

-- Display: Market Data Id
a2x_a2xequities_tradingprotocol_atp_v2_9.market_data_id.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Market Data Id: No Value"
  end

  return "Market Data Id: "..value
end

-- Dissect: Market Data Id
a2x_a2xequities_tradingprotocol_atp_v2_9.market_data_id.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.market_data_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.market_data_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.market_data_id, range, value, display)

  return offset + length, value
end

-- Min Qty
a2x_a2xequities_tradingprotocol_atp_v2_9.min_qty = {}

-- Size: Min Qty
a2x_a2xequities_tradingprotocol_atp_v2_9.min_qty.size = 4

-- Display: Min Qty
a2x_a2xequities_tradingprotocol_atp_v2_9.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
a2x_a2xequities_tradingprotocol_atp_v2_9.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modification Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.modification_timestamp = {}

-- Size: Modification Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.modification_timestamp.size = 8

-- Dissect: Modification Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.modification_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.modification_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.modification_timestamp
  if a2x_a2xequities_tradingprotocol_atp_v2_9.absolute_time_base == 1 then field = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.modification_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Msg Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.msg_seq_no = {}

-- Size: Msg Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.msg_seq_no.size = 4

-- Display: Msg Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.msg_seq_no.display = function(value)
  return "Msg Seq No: "..value
end

-- Dissect: Msg Seq No
a2x_a2xequities_tradingprotocol_atp_v2_9.msg_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.msg_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.msg_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.msg_seq_no, range, value, display)

  return offset + length, value
end

-- Msg Type
a2x_a2xequities_tradingprotocol_atp_v2_9.msg_type = {}

-- Size: Msg Type
a2x_a2xequities_tradingprotocol_atp_v2_9.msg_type.size = 1

-- Display: Msg Type
a2x_a2xequities_tradingprotocol_atp_v2_9.msg_type.labels = {
  [1] = "Msg Type: Login Message (1)",
  [2] = "Msg Type: Login Response Message (2)",
  [0] = "Msg Type: Heartbeat (0)",
  [3] = "Msg Type: Logout Request Message (3)",
  [4] = "Msg Type: Logout Message (4)",
  [24] = "Msg Type: Order Add Message (24)",
  [25] = "Msg Type: Order Add Extended Message (25)",
  [7] = "Msg Type: Order Cancel Message (7)",
  [9] = "Msg Type: Order Modify Message (9)",
  [22] = "Msg Type: Order Modify Extended Message (22)",
  [6] = "Msg Type: Order Add Response Message (6)",
  [8] = "Msg Type: Order Cancel Response Message (8)",
  [10] = "Msg Type: Order Modify Response Message (10)",
  [23] = "Msg Type: Iceberg Order Refresh Message (23)",
  [26] = "Msg Type: Trade Capture Message (26)",
  [18] = "Msg Type: Trade Capture Response Message (18)",
  [11] = "Msg Type: Trade Message (11)",
  [12] = "Msg Type: Trade Bust Message (12)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.msg_type.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
a2x_a2xequities_tradingprotocol_atp_v2_9.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New A2X Ord Id
a2x_a2xequities_tradingprotocol_atp_v2_9.new_a2x_ord_id = {}

-- Size: New A2X Ord Id
a2x_a2xequities_tradingprotocol_atp_v2_9.new_a2x_ord_id.size = 4

-- Display: New A2X Ord Id
a2x_a2xequities_tradingprotocol_atp_v2_9.new_a2x_ord_id.display = function(value)
  return "New A2X Ord Id: "..value
end

-- Dissect: New A2X Ord Id
a2x_a2xequities_tradingprotocol_atp_v2_9.new_a2x_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.new_a2x_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.new_a2x_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.new_a2x_ord_id, range, value, display)

  return offset + length, value
end

-- Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity = {}

-- Size: Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.size = 1

-- Display: Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.labels = {
  [1] = "Order Capacity: Agency (1)",
  [2] = "Order Capacity: Principal (2)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.labels[value] or "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref = {}

-- Size: Order Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size = 4

-- Display: Order Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.display = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Order Type
a2x_a2xequities_tradingprotocol_atp_v2_9.order_type = {}

-- Size: Order Type
a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.size = 1

-- Display: Order Type
a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.labels = {
  [1] = "Order Type: Limit Order (1)",
  [2] = "Order Type: Auction On Demand Limit Order (2)",
  [3] = "Order Type: Auction On Demand Trade At Middle Limit Or Pegged Limit (3)",
  [6] = "Order Type: Market At Close (6)",
  [8] = "Order Type: Post Only Cancel Replace (8)",
  [9] = "Order Type: Post Only (9)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_type, range, value, display)

  return offset + length, value
end

-- Orig A2X Ord Id
a2x_a2xequities_tradingprotocol_atp_v2_9.orig_a2x_ord_id = {}

-- Size: Orig A2X Ord Id
a2x_a2xequities_tradingprotocol_atp_v2_9.orig_a2x_ord_id.size = 4

-- Display: Orig A2X Ord Id
a2x_a2xequities_tradingprotocol_atp_v2_9.orig_a2x_ord_id.display = function(value)
  return "Orig A2X Ord Id: "..value
end

-- Dissect: Orig A2X Ord Id
a2x_a2xequities_tradingprotocol_atp_v2_9.orig_a2x_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.orig_a2x_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.orig_a2x_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.orig_a2x_ord_id, range, value, display)

  return offset + length, value
end

-- Password
a2x_a2xequities_tradingprotocol_atp_v2_9.password = {}

-- Size: Password
a2x_a2xequities_tradingprotocol_atp_v2_9.password.size = 16

-- Display: Password
a2x_a2xequities_tradingprotocol_atp_v2_9.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
a2x_a2xequities_tradingprotocol_atp_v2_9.password.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.password.size
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

  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.password, range, value, display)

  return offset + length, value
end

-- Price
a2x_a2xequities_tradingprotocol_atp_v2_9.price = {}

-- Size: Price
a2x_a2xequities_tradingprotocol_atp_v2_9.price.size = 8

-- Display: Price
a2x_a2xequities_tradingprotocol_atp_v2_9.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
a2x_a2xequities_tradingprotocol_atp_v2_9.price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Price
a2x_a2xequities_tradingprotocol_atp_v2_9.price.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = a2x_a2xequities_tradingprotocol_atp_v2_9.price.translate(raw)
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.price, range, value, display)

  return offset + length, value
end

-- Protocol Version
a2x_a2xequities_tradingprotocol_atp_v2_9.protocol_version = {}

-- Size: Protocol Version
a2x_a2xequities_tradingprotocol_atp_v2_9.protocol_version.size = 2

-- Display: Protocol Version
a2x_a2xequities_tradingprotocol_atp_v2_9.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
a2x_a2xequities_tradingprotocol_atp_v2_9.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.protocol_version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.quantity = {}

-- Size: Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.size = 4

-- Display: Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reason Text
a2x_a2xequities_tradingprotocol_atp_v2_9.reason_text = {}

-- Size: Reason Text
a2x_a2xequities_tradingprotocol_atp_v2_9.reason_text.size = 32

-- Display: Reason Text
a2x_a2xequities_tradingprotocol_atp_v2_9.reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason Text: No Value"
  end

  return "Reason Text: "..value
end

-- Dissect: Reason Text
a2x_a2xequities_tradingprotocol_atp_v2_9.reason_text.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reason_text.size
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

  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reason_text, range, value, display)

  return offset + length, value
end

-- Request Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref = {}

-- Size: Request Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.size = 4

-- Display: Request Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Request Ref: No Value"
  end

  return "Request Ref: "..value
end

-- Dissect: Request Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.request_ref, range, value, display)

  return offset + length, value
end

-- Reserved 1
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1 = {}

-- Size: Reserved 1
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.size = 1

-- Display: Reserved 1
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4 = {}

-- Size: Reserved 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.size = 4

-- Display: Reserved 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_8 = {}

-- Size: Reserved 8
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_8.size = 8

-- Display: Reserved 8
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Reserved Byte 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2 = {}

-- Size: Reserved Byte 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.size = 1

-- Display: Reserved Byte 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved Byte 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_byte_2, range, value, display)

  return offset + length, value
end

-- Reserved Byte 3
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3 = {}

-- Size: Reserved Byte 3
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.size = 1

-- Display: Reserved Byte 3
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved Byte 3
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_byte_3, range, value, display)

  return offset + length, value
end

-- Reserved Byte 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4 = {}

-- Size: Reserved Byte 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.size = 1

-- Display: Reserved Byte 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved Byte 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_byte_4, range, value, display)

  return offset + length, value
end

-- Reserved Byte 5
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_5 = {}

-- Size: Reserved Byte 5
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_5.size = 1

-- Display: Reserved Byte 5
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_5.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved Byte 5
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_5.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_byte_5, range, value, display)

  return offset + length, value
end

-- Reserved Int 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2 = {}

-- Size: Reserved Int 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.size = 4

-- Display: Reserved Int 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved Int 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_int_2, range, value, display)

  return offset + length, value
end

-- Reserved Int 3
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3 = {}

-- Size: Reserved Int 3
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.size = 4

-- Display: Reserved Int 3
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved Int 3
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_int_3, range, value, display)

  return offset + length, value
end

-- Reserved Int 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_4 = {}

-- Size: Reserved Int 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_4.size = 4

-- Display: Reserved Int 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_4.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved Int 4
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_4.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_int_4, range, value, display)

  return offset + length, value
end

-- Reserved Long 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_long_2 = {}

-- Size: Reserved Long 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_long_2.size = 8

-- Display: Reserved Long 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_long_2.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved Long 2
a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_long_2.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_long_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_long_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reserved_long_2, range, value, display)

  return offset + length, value
end

-- Result Code
a2x_a2xequities_tradingprotocol_atp_v2_9.result_code = {}

-- Size: Result Code
a2x_a2xequities_tradingprotocol_atp_v2_9.result_code.size = 1

-- Display: Result Code
a2x_a2xequities_tradingprotocol_atp_v2_9.result_code.labels = {
  [0] = "Result Code: Successful Login (0)",
  [1] = "Result Code: Already Logged In (1)",
  [2] = "Result Code: Sequence Number Error (2)",
  [3] = "Result Code: Unsupported Protocol (3)",
  [4] = "Result Code: Failed Authentication (4)",
  [5] = "Result Code: Unknown Source Network (5)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.result_code.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.result_code.labels[value] or "Result Code: Unknown("..value..")"
end

-- Dissect: Result Code
a2x_a2xequities_tradingprotocol_atp_v2_9.result_code.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.result_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.result_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.result_code, range, value, display)

  return offset + length, value
end

-- Security Id Long
a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long = {}

-- Size: Security Id Long
a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.size = 4

-- Display: Security Id Long
a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id Long
a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.security_id_long, range, value, display)

  return offset + length, value
end

-- Security Id Short
a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_short = {}

-- Size: Security Id Short
a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_short.size = 2

-- Display: Security Id Short
a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_short.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id Short
a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_short.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.security_id_short, range, value, display)

  return offset + length, value
end

-- Sell Account
a2x_a2xequities_tradingprotocol_atp_v2_9.sell_account = {}

-- Size: Sell Account
a2x_a2xequities_tradingprotocol_atp_v2_9.sell_account.size = 2

-- Display: Sell Account
a2x_a2xequities_tradingprotocol_atp_v2_9.sell_account.display = function(value)
  return "Sell Account: "..value
end

-- Dissect: Sell Account
a2x_a2xequities_tradingprotocol_atp_v2_9.sell_account.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.sell_account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.sell_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.sell_account, range, value, display)

  return offset + length, value
end

-- Sell Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.sell_order_capacity = {}

-- Size: Sell Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.sell_order_capacity.size = 1

-- Display: Sell Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.sell_order_capacity.labels = {
  [1] = "Sell Order Capacity: Agency (1)",
  [2] = "Sell Order Capacity: Principal (2)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.sell_order_capacity.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.sell_order_capacity.labels[value] or "Sell Order Capacity: Unknown("..value..")"
end

-- Dissect: Sell Order Capacity
a2x_a2xequities_tradingprotocol_atp_v2_9.sell_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.sell_order_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.sell_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.sell_order_capacity, range, value, display)

  return offset + length, value
end

-- Sender Id
a2x_a2xequities_tradingprotocol_atp_v2_9.sender_id = {}

-- Size: Sender Id
a2x_a2xequities_tradingprotocol_atp_v2_9.sender_id.size = 16

-- Display: Sender Id
a2x_a2xequities_tradingprotocol_atp_v2_9.sender_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Id: No Value"
  end

  return "Sender Id: "..value
end

-- Dissect: Sender Id
a2x_a2xequities_tradingprotocol_atp_v2_9.sender_id.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.sender_id.size
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

  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.sender_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.sender_id, range, value, display)

  return offset + length, value
end

-- Side
a2x_a2xequities_tradingprotocol_atp_v2_9.side = {}

-- Size: Side
a2x_a2xequities_tradingprotocol_atp_v2_9.side.size = 1

-- Display: Side
a2x_a2xequities_tradingprotocol_atp_v2_9.side.labels = {
  [1] = "Side: Buy Order (1)",
  [2] = "Side: Sell Order (2)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.side.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
a2x_a2xequities_tradingprotocol_atp_v2_9.side.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.side, range, value, display)

  return offset + length, value
end

-- Time In Force
a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force = {}

-- Size: Time In Force
a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.size = 1

-- Display: Time In Force
a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.labels = {
  [1] = "Time In Force: Day (1)",
  [2] = "Time In Force: Fill Or Kill (2)",
  [3] = "Time In Force: Immediate Or Cancel (3)",
  [9] = "Time In Force: Good For Auction (9)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.timestamp = {}

-- Size: Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.timestamp.size = 8

-- Dissect: Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.timestamp
  if a2x_a2xequities_tradingprotocol_atp_v2_9.absolute_time_base == 1 then field = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trade Capture Type
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_type = {}

-- Size: Trade Capture Type
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_type.size = 1

-- Display: Trade Capture Type
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_type.labels = {
  [1] = "Trade Capture Type: Large In Scale (1)",
  [3] = "Trade Capture Type: Negotiated Benchmark Cross (3)",
  [5] = "Trade Capture Type: Matched Principal (5)",
}

a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_type.display = function(value)
  return a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_type.labels[value] or "Trade Capture Type: Unknown("..value..")"
end

-- Dissect: Trade Capture Type
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_type.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_capture_type, range, value, display)

  return offset + length, value
end

-- Trade Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref = {}

-- Size: Trade Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.size = 4

-- Display: Trade Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.display = function(value)
  return "Trade Ref: "..value
end

-- Dissect: Trade Ref
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_ref, range, value, display)

  return offset + length, value
end

-- Trade Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_timestamp = {}

-- Size: Trade Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_timestamp.size = 8

-- Dissect: Trade Timestamp
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_timestamp
  if a2x_a2xequities_tradingprotocol_atp_v2_9.absolute_time_base == 1 then field = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Traded Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.traded_quantity = {}

-- Size: Traded Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.traded_quantity.size = 4

-- Display: Traded Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.traded_quantity.display = function(value)
  return "Traded Quantity: "..value
end

-- Dissect: Traded Quantity
a2x_a2xequities_tradingprotocol_atp_v2_9.traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.traded_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.traded_quantity, range, value, display)

  return offset + length, value
end

-- User Tag
a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag = {}

-- Size: User Tag
a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size = 8

-- Display: User Tag
a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.display = function(value)
  return "User Tag: "..value
end

-- Dissect: User Tag
a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.user_tag, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect A2X A2XEquities TradingProtocol Atp 2.9
-----------------------------------------------------------------------

-- Trade Bust Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_bust_message = {}

-- Size: Trade Bust Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_bust_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.price.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.side.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.bust_timestamp.size

-- Display: Trade Bust Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_tradingprotocol_atp_v2_9.price.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = a2x_a2xequities_tradingprotocol_atp_v2_9.side.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.dissect(buffer, index, packet, parent)

  -- Bust Timestamp: u64
  index, bust_timestamp = a2x_a2xequities_tradingprotocol_atp_v2_9.bust_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_bust_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_message = {}

-- Size: Trade Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.price.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.side.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.ccp_code.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.liq_indicator.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_short.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.trade_timestamp.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.size

-- Display: Trade Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_tradingprotocol_atp_v2_9.price.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = a2x_a2xequities_tradingprotocol_atp_v2_9.side.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.dissect(buffer, index, packet, parent)

  -- Ccp Code: u8
  index, ccp_code = a2x_a2xequities_tradingprotocol_atp_v2_9.ccp_code.dissect(buffer, index, packet, parent)

  -- Liq Indicator: u8
  index, liq_indicator = a2x_a2xequities_tradingprotocol_atp_v2_9.liq_indicator.dissect(buffer, index, packet, parent)

  -- Security Id Short: u16
  index, security_id_short = a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_short.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: u64
  index, trade_timestamp = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_timestamp.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  -- Reserved 1: u8
  index, reserved_1 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Status
a2x_a2xequities_tradingprotocol_atp_v2_9.status = {}

-- Size: Status
a2x_a2xequities_tradingprotocol_atp_v2_9.status.size = 1

-- Display: Status
a2x_a2xequities_tradingprotocol_atp_v2_9.status.display = function(range, value, packet, parent)
  local flags = {}

  -- Reason Code: 5 Bits
  flags[#flags + 1] = "Reason Code: "..bit.rshift(bit.band(value, 0x1F), 0)
  -- Order Status: 3 Bits
  flags[#flags + 1] = "Order Status: "..bit.rshift(bit.band(value, 0xE0), 5)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Status
a2x_a2xequities_tradingprotocol_atp_v2_9.status.bits = function(range, value, packet, parent)

  -- Reason Code: 5 Bit Unsigned Fixed Width Integer
  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.reason_code, range, value)

  -- Order Status: 3 Bit Unsigned Fixed Width Integer Enum with 6 values
  parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_status, range, value)
end

-- Dissect: Status
a2x_a2xequities_tradingprotocol_atp_v2_9.status.dissect = function(buffer, offset, packet, parent)
  local size = a2x_a2xequities_tradingprotocol_atp_v2_9.status.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.status.display(range, value, packet, parent)
  local element = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.status, range, display)

  if show.structs then
    a2x_a2xequities_tradingprotocol_atp_v2_9.status.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_response_message = {}

-- Size: Trade Capture Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_response_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.status.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size

-- Display: Trade Capture Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status: Struct of 2 fields
  index, status = a2x_a2xequities_tradingprotocol_atp_v2_9.status.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_ref.dissect(buffer, index, packet, parent)

  -- Request Ref: u32
  index, request_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Capture Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_capture_response_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Capture Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_message = {}

-- Size: Trade Capture Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.price.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_type.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_8.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.buy_account.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.buy_order_capacity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_long_2.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.sell_account.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.sell_order_capacity.size

-- Display: Trade Capture Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quantity: u32
  index, quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_tradingprotocol_atp_v2_9.price.dissect(buffer, index, packet, parent)

  -- Security Id Long: u32
  index, security_id_long = a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.dissect(buffer, index, packet, parent)

  -- Trade Capture Type: u8
  index, trade_capture_type = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: u8
  index, reserved_1 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  -- Reserved 8: u64
  index, reserved_8 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_8.dissect(buffer, index, packet, parent)

  -- Buy Account: u16
  index, buy_account = a2x_a2xequities_tradingprotocol_atp_v2_9.buy_account.dissect(buffer, index, packet, parent)

  -- Buy Order Capacity: u8
  index, buy_order_capacity = a2x_a2xequities_tradingprotocol_atp_v2_9.buy_order_capacity.dissect(buffer, index, packet, parent)

  -- Reserved Long 2: u64
  index, reserved_long_2 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_long_2.dissect(buffer, index, packet, parent)

  -- Sell Account: u16
  index, sell_account = a2x_a2xequities_tradingprotocol_atp_v2_9.sell_account.dissect(buffer, index, packet, parent)

  -- Sell Order Capacity: u8
  index, sell_order_capacity = a2x_a2xequities_tradingprotocol_atp_v2_9.sell_order_capacity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Capture Message
a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.trade_capture_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_message.fields(buffer, offset, packet, parent)
  end
end

-- Iceberg Order Refresh Message
a2x_a2xequities_tradingprotocol_atp_v2_9.iceberg_order_refresh_message = {}

-- Size: Iceberg Order Refresh Message
a2x_a2xequities_tradingprotocol_atp_v2_9.iceberg_order_refresh_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.orig_a2x_ord_id.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.new_a2x_ord_id.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.size

-- Display: Iceberg Order Refresh Message
a2x_a2xequities_tradingprotocol_atp_v2_9.iceberg_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Iceberg Order Refresh Message
a2x_a2xequities_tradingprotocol_atp_v2_9.iceberg_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.dissect(buffer, index, packet, parent)

  -- Orig A2X Ord Id: u32
  index, orig_a2x_ord_id = a2x_a2xequities_tradingprotocol_atp_v2_9.orig_a2x_ord_id.dissect(buffer, index, packet, parent)

  -- New A2X Ord Id: u32
  index, new_a2x_ord_id = a2x_a2xequities_tradingprotocol_atp_v2_9.new_a2x_ord_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Iceberg Order Refresh Message
a2x_a2xequities_tradingprotocol_atp_v2_9.iceberg_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.iceberg_order_refresh_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.iceberg_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.iceberg_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.iceberg_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_response_message = {}

-- Size: Order Modify Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_response_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.status.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.modification_timestamp.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.size

-- Display: Order Modify Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.dissect(buffer, index, packet, parent)

  -- Request Ref: u32
  index, request_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.dissect(buffer, index, packet, parent)

  -- Status: Struct of 2 fields
  index, status = a2x_a2xequities_tradingprotocol_atp_v2_9.status.dissect(buffer, index, packet, parent)

  -- Modification Timestamp: u32
  index, modification_timestamp = a2x_a2xequities_tradingprotocol_atp_v2_9.modification_timestamp.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  -- Reserved 1: u8
  index, reserved_1 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_modify_response_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_response_message = {}

-- Size: Order Cancel Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_response_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.status.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.cancellation_timestamp.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size

-- Display: Order Cancel Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.dissect(buffer, index, packet, parent)

  -- Request Ref: u32
  index, request_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.request_ref.dissect(buffer, index, packet, parent)

  -- Status: Struct of 2 fields
  index, status = a2x_a2xequities_tradingprotocol_atp_v2_9.status.dissect(buffer, index, packet, parent)

  -- Cancellation Timestamp: Time
  index, cancellation_timestamp = a2x_a2xequities_tradingprotocol_atp_v2_9.cancellation_timestamp.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_cancel_response_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_response_message = {}

-- Size: Order Add Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_response_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.market_data_id.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.status.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.traded_quantity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.timestamp.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.size

-- Display: Order Add Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.dissect(buffer, index, packet, parent)

  -- Market Data Id: u32
  index, market_data_id = a2x_a2xequities_tradingprotocol_atp_v2_9.market_data_id.dissect(buffer, index, packet, parent)

  -- Status: Struct of 2 fields
  index, status = a2x_a2xequities_tradingprotocol_atp_v2_9.status.dissect(buffer, index, packet, parent)

  -- Traded Quantity: u32
  index, traded_quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.traded_quantity.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = a2x_a2xequities_tradingprotocol_atp_v2_9.timestamp.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  -- Reserved 1: u8
  index, reserved_1 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_add_response_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Extended Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_extended_message = {}

-- Size: Order Modify Extended Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_extended_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.price.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.display_quantity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_4.size

-- Display: Order Modify Extended Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Extended Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_tradingprotocol_atp_v2_9.price.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  -- Reserved 1: u8
  index, reserved_1 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved Byte 2: u8
  index, reserved_byte_2 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.dissect(buffer, index, packet, parent)

  -- Reserved Byte 3: u8
  index, reserved_byte_3 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.dissect(buffer, index, packet, parent)

  -- Reserved Int 2: u32
  index, reserved_int_2 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.dissect(buffer, index, packet, parent)

  -- Reserved Byte 4: u8
  index, reserved_byte_4 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.dissect(buffer, index, packet, parent)

  -- Reserved Int 3: u32
  index, reserved_int_3 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.dissect(buffer, index, packet, parent)

  -- Order Capacity: u8
  index, order_capacity = a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.dissect(buffer, index, packet, parent)

  -- Display Quantity: u32
  index, display_quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.display_quantity.dissect(buffer, index, packet, parent)

  -- Reserved Int 4: u32
  index, reserved_int_4 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Extended Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_modify_extended_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_message = {}

-- Size: Order Modify Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.price.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size

-- Display: Order Modify Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_tradingprotocol_atp_v2_9.price.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_modify_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_message = {}

-- Size: Order Cancel Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size

-- Display: Order Cancel Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = a2x_a2xequities_tradingprotocol_atp_v2_9.order_ref.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_cancel_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Extended Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_extended_message = {}

-- Size: Order Add Extended Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_extended_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.side.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.price.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.account.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.display_quantity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.min_qty.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_5.size

-- Display: Order Add Extended Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Extended Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id Long: u32
  index, security_id_long = a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.dissect(buffer, index, packet, parent)

  -- Order Type: u8
  index, order_type = a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: u8
  index, time_in_force = a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = a2x_a2xequities_tradingprotocol_atp_v2_9.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_tradingprotocol_atp_v2_9.price.dissect(buffer, index, packet, parent)

  -- Order Capacity: u8
  index, order_capacity = a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.dissect(buffer, index, packet, parent)

  -- Account: u16
  index, account = a2x_a2xequities_tradingprotocol_atp_v2_9.account.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  -- Reserved 1: u8
  index, reserved_1 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved Byte 2: u8
  index, reserved_byte_2 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.dissect(buffer, index, packet, parent)

  -- Reserved Byte 3: u8
  index, reserved_byte_3 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.dissect(buffer, index, packet, parent)

  -- Reserved Int 2: u32
  index, reserved_int_2 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.dissect(buffer, index, packet, parent)

  -- Reserved Byte 4: u8
  index, reserved_byte_4 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.dissect(buffer, index, packet, parent)

  -- Reserved Int 3: u32
  index, reserved_int_3 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.dissect(buffer, index, packet, parent)

  -- Display Quantity: u32
  index, display_quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.display_quantity.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = a2x_a2xequities_tradingprotocol_atp_v2_9.min_qty.dissect(buffer, index, packet, parent)

  -- Reserved Byte 5: u8
  index, reserved_byte_5 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Extended Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_add_extended_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_message = {}

-- Size: Order Add Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.side.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.price.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.account.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.size

-- Display: Order Add Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id Long: u32
  index, security_id_long = a2x_a2xequities_tradingprotocol_atp_v2_9.security_id_long.dissect(buffer, index, packet, parent)

  -- Order Type: u8
  index, order_type = a2x_a2xequities_tradingprotocol_atp_v2_9.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: u8
  index, time_in_force = a2x_a2xequities_tradingprotocol_atp_v2_9.time_in_force.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = a2x_a2xequities_tradingprotocol_atp_v2_9.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = a2x_a2xequities_tradingprotocol_atp_v2_9.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = a2x_a2xequities_tradingprotocol_atp_v2_9.price.dissect(buffer, index, packet, parent)

  -- Order Capacity: u8
  index, order_capacity = a2x_a2xequities_tradingprotocol_atp_v2_9.order_capacity.dissect(buffer, index, packet, parent)

  -- Account: u16
  index, account = a2x_a2xequities_tradingprotocol_atp_v2_9.account.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = a2x_a2xequities_tradingprotocol_atp_v2_9.user_tag.dissect(buffer, index, packet, parent)

  -- Reserved 1: u8
  index, reserved_1 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved Byte 2: u8
  index, reserved_byte_2 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_2.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_4.dissect(buffer, index, packet, parent)

  -- Reserved Byte 3: u8
  index, reserved_byte_3 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_3.dissect(buffer, index, packet, parent)

  -- Reserved Int 2: u32
  index, reserved_int_2 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_2.dissect(buffer, index, packet, parent)

  -- Reserved Byte 4: u8
  index, reserved_byte_4 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_byte_4.dissect(buffer, index, packet, parent)

  -- Reserved Int 3: u32
  index, reserved_int_3 = a2x_a2xequities_tradingprotocol_atp_v2_9.reserved_int_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.order_add_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_message = {}

-- Size: Logout Message
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.logout_reason_code.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.reason_text.size

-- Display: Logout Message
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason Code: u8
  index, logout_reason_code = a2x_a2xequities_tradingprotocol_atp_v2_9.logout_reason_code.dissect(buffer, index, packet, parent)

  -- Reason Text: char(n)
  index, reason_text = a2x_a2xequities_tradingprotocol_atp_v2_9.reason_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.logout_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request Message
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_request_message = {}

-- Display: Logout Request Message
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_request_message.display = function(packet, parent, length)
  return "Logout Request Message"
end


-- Dissect: Logout Request Message
a2x_a2xequities_tradingprotocol_atp_v2_9.logout_request_message.dissect = function(buffer, offset, packet, parent)
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.logout_request_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
a2x_a2xequities_tradingprotocol_atp_v2_9.heartbeat = {}

-- Display: Heartbeat
a2x_a2xequities_tradingprotocol_atp_v2_9.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
a2x_a2xequities_tradingprotocol_atp_v2_9.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = a2x_a2xequities_tradingprotocol_atp_v2_9.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.login_response_message = {}

-- Size: Login Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.login_response_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.result_code.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.client_seq_no.size

-- Display: Login Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Result Code: u8
  index, result_code = a2x_a2xequities_tradingprotocol_atp_v2_9.result_code.dissect(buffer, index, packet, parent)

  -- Client Seq No: u32
  index, client_seq_no = a2x_a2xequities_tradingprotocol_atp_v2_9.client_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
a2x_a2xequities_tradingprotocol_atp_v2_9.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.login_response_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
a2x_a2xequities_tradingprotocol_atp_v2_9.login_message = {}

-- Size: Login Message
a2x_a2xequities_tradingprotocol_atp_v2_9.login_message.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.protocol_version.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.sender_id.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.password.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.inactivity_timeout.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.atp_seq_no.size

-- Display: Login Message
a2x_a2xequities_tradingprotocol_atp_v2_9.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
a2x_a2xequities_tradingprotocol_atp_v2_9.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Version: u16
  index, protocol_version = a2x_a2xequities_tradingprotocol_atp_v2_9.protocol_version.dissect(buffer, index, packet, parent)

  -- Sender Id: char(n)
  index, sender_id = a2x_a2xequities_tradingprotocol_atp_v2_9.sender_id.dissect(buffer, index, packet, parent)

  -- Password: char(n)
  index, password = a2x_a2xequities_tradingprotocol_atp_v2_9.password.dissect(buffer, index, packet, parent)

  -- Inactivity Timeout: u16
  index, inactivity_timeout = a2x_a2xequities_tradingprotocol_atp_v2_9.inactivity_timeout.dissect(buffer, index, packet, parent)

  -- Atp Seq No: u32
  index, atp_seq_no = a2x_a2xequities_tradingprotocol_atp_v2_9.atp_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
a2x_a2xequities_tradingprotocol_atp_v2_9.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.login_message, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
a2x_a2xequities_tradingprotocol_atp_v2_9.payload = {}

-- Dispatch: Payload
a2x_a2xequities_tradingprotocol_atp_v2_9.payload.dispatch = {
  [1] = a2x_a2xequities_tradingprotocol_atp_v2_9.login_message.dissect,
  [2] = a2x_a2xequities_tradingprotocol_atp_v2_9.login_response_message.dissect,
  [0] = a2x_a2xequities_tradingprotocol_atp_v2_9.heartbeat.dissect,
  [3] = a2x_a2xequities_tradingprotocol_atp_v2_9.logout_request_message.dissect,
  [4] = a2x_a2xequities_tradingprotocol_atp_v2_9.logout_message.dissect,
  [24] = a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_message.dissect,
  [25] = a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_extended_message.dissect,
  [7] = a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_message.dissect,
  [9] = a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_message.dissect,
  [22] = a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_extended_message.dissect,
  [6] = a2x_a2xequities_tradingprotocol_atp_v2_9.order_add_response_message.dissect,
  [8] = a2x_a2xequities_tradingprotocol_atp_v2_9.order_cancel_response_message.dissect,
  [10] = a2x_a2xequities_tradingprotocol_atp_v2_9.order_modify_response_message.dissect,
  [23] = a2x_a2xequities_tradingprotocol_atp_v2_9.iceberg_order_refresh_message.dissect,
  [26] = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_message.dissect,
  [18] = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_capture_response_message.dissect,
  [11] = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_message.dissect,
  [12] = a2x_a2xequities_tradingprotocol_atp_v2_9.trade_bust_message.dissect,
}

-- Dissect: Payload
a2x_a2xequities_tradingprotocol_atp_v2_9.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = a2x_a2xequities_tradingprotocol_atp_v2_9.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
a2x_a2xequities_tradingprotocol_atp_v2_9.message_header = {}

-- Size: Message Header
a2x_a2xequities_tradingprotocol_atp_v2_9.message_header.size =
  a2x_a2xequities_tradingprotocol_atp_v2_9.length.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.msg_type.size + 
  a2x_a2xequities_tradingprotocol_atp_v2_9.msg_seq_no.size

-- Display: Message Header
a2x_a2xequities_tradingprotocol_atp_v2_9.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
a2x_a2xequities_tradingprotocol_atp_v2_9.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = a2x_a2xequities_tradingprotocol_atp_v2_9.length.dissect(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, msg_type = a2x_a2xequities_tradingprotocol_atp_v2_9.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Seq No: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_no = a2x_a2xequities_tradingprotocol_atp_v2_9.msg_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
a2x_a2xequities_tradingprotocol_atp_v2_9.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.message_header, buffer(offset, 0))
    local index = a2x_a2xequities_tradingprotocol_atp_v2_9.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tradingprotocol_atp_v2_9.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
a2x_a2xequities_tradingprotocol_atp_v2_9.message = {}

-- Display: Message
a2x_a2xequities_tradingprotocol_atp_v2_9.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
a2x_a2xequities_tradingprotocol_atp_v2_9.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = a2x_a2xequities_tradingprotocol_atp_v2_9.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 5, 1):uint()

  -- Payload: Runtime Type with 18 branches
  index = a2x_a2xequities_tradingprotocol_atp_v2_9.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
a2x_a2xequities_tradingprotocol_atp_v2_9.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9.fields.message, buffer(offset, 0))
    local current = a2x_a2xequities_tradingprotocol_atp_v2_9.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = a2x_a2xequities_tradingprotocol_atp_v2_9.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    a2x_a2xequities_tradingprotocol_atp_v2_9.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < a2x_a2xequities_tradingprotocol_atp_v2_9.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
a2x_a2xequities_tradingprotocol_atp_v2_9.packet = {}

-- Verify required size of Tcp packet
a2x_a2xequities_tradingprotocol_atp_v2_9.packet.requiredsize = function(buffer)
  return buffer:len() >= a2x_a2xequities_tradingprotocol_atp_v2_9.message_header.size
end

-- Dissect Packet
a2x_a2xequities_tradingprotocol_atp_v2_9.packet.dissect = function(buffer, packet, parent)
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
      index = a2x_a2xequities_tradingprotocol_atp_v2_9.message.dissect(frame, index, packet, parent, size_of_message)
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
function omi_a2x_a2xequities_tradingprotocol_atp_v2_9.init()
end

-- Dissector for A2X A2XEquities TradingProtocol Atp 2.9
function omi_a2x_a2xequities_tradingprotocol_atp_v2_9.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_a2x_a2xequities_tradingprotocol_atp_v2_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_a2x_a2xequities_tradingprotocol_atp_v2_9, buffer(), omi_a2x_a2xequities_tradingprotocol_atp_v2_9.description, "("..buffer:len().." Bytes)")
  return a2x_a2xequities_tradingprotocol_atp_v2_9.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
a2x_a2xequities_tradingprotocol_atp_v2_9.packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local msg_type = buffer(2, 1):uint()

  -- Login Message
  if msg_type == 1 then
    return true
  end

  -- Login Response Message
  if msg_type == 2 then
    return true
  end

  -- Heartbeat
  if msg_type == 0 then
    return true
  end

  -- Logout Request Message
  if msg_type == 3 then
    return true
  end

  -- Logout Message
  if msg_type == 4 then
    return true
  end

  -- Order Add Message
  if msg_type == 24 then
    return true
  end

  -- Order Add Extended Message
  if msg_type == 25 then
    return true
  end

  -- Order Cancel Message
  if msg_type == 7 then
    return true
  end

  -- Order Modify Message
  if msg_type == 9 then
    return true
  end

  -- Order Modify Extended Message
  if msg_type == 22 then
    return true
  end

  -- Order Add Response Message
  if msg_type == 6 then
    return true
  end

  -- Order Cancel Response Message
  if msg_type == 8 then
    return true
  end

  -- Order Modify Response Message
  if msg_type == 10 then
    return true
  end

  -- Iceberg Order Refresh Message
  if msg_type == 23 then
    return true
  end

  -- Trade Capture Message
  if msg_type == 26 then
    return true
  end

  -- Trade Capture Response Message
  if msg_type == 18 then
    return true
  end

  -- Trade Message
  if msg_type == 11 then
    return true
  end

  -- Trade Bust Message
  if msg_type == 12 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for A2X A2XEquities TradingProtocol Atp 2.9 (Tcp)
local function omi_a2x_a2xequities_tradingprotocol_atp_v2_9_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not a2x_a2xequities_tradingprotocol_atp_v2_9.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not a2x_a2xequities_tradingprotocol_atp_v2_9.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_a2x_a2xequities_tradingprotocol_atp_v2_9
  omi_a2x_a2xequities_tradingprotocol_atp_v2_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for A2X A2XEquities TradingProtocol Atp 2.9
omi_a2x_a2xequities_tradingprotocol_atp_v2_9:register_heuristic("tcp", omi_a2x_a2xequities_tradingprotocol_atp_v2_9_tcp_heuristic)

-- Register A2X A2XEquities TradingProtocol Atp 2.9 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_a2x_a2xequities_tradingprotocol_atp_v2_9)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: A2X Markets
--   Version: 2.9
--   Date: Wednesday, May 24, 2023
--   Specification: A2X ATP Binary Protocol Specification v2.9.pdf
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
