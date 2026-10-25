-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34 Protocol
local omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34 = Proto("Omi.Cboe.BxeEquities.TcpDepthOfBook.AsciiPitch.v4.34", "Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34")

-- Protocol table
local cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34 Fields
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.auction_type = ProtoField.new("Auction Type", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.auctiontype", ftypes.STRING, nil, nil, nil, "O=Opening C=Closing H=Halt V=Volatility P=Periodic U=Cboe Closing Cross")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.cancelled_shares_long = ProtoField.new("Cancelled Shares Long", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.cancelledshareslong", ftypes.UINT64, nil, nil, nil, "Number of shares cancelled.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.cancelled_shares_short = ProtoField.new("Cancelled Shares Short", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.cancelledsharesshort", ftypes.UINT24, nil, nil, nil, "Number of shares cancelled.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.cboe_trade_flags = ProtoField.new("Cboe Trade Flags", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.cboetradeflags", ftypes.STRING, nil, nil, nil, "Cboe trade timing / regulated entity flags.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.currency = ProtoField.new("Currency", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.currency", ftypes.STRING, nil, nil, nil, "Traded currency.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.display = ProtoField.new("Display", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.display", ftypes.STRING, nil, nil, nil, "Always Y. Maintained for compatibility reasons.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.executed_shares_long = ProtoField.new("Executed Shares Long", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.executedshareslong", ftypes.UINT64, nil, nil, nil, "Number of shares executed.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.executed_shares_short = ProtoField.new("Executed Shares Short", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.executedsharesshort", ftypes.UINT24, nil, nil, nil, "Number of shares executed.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.execution_flag = ProtoField.new("Execution Flag", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.executionflag", ftypes.STRING, nil, nil, nil, "Type flags based on MMT standard.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.execution_flags = ProtoField.new("Execution Flags", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.executionflags", ftypes.STRING, nil, nil, nil, "Type flags based on MMT standard.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.execution_id = ProtoField.new("Execution Id", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.executionid", ftypes.STRING, nil, nil, nil, "Cboe generated day-unique execution identifier.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.executionvenue", ftypes.STRING, nil, nil, nil, "MIC of the venue on which the trade executed (LISX/LISZ/XWAP/VWAP/SINT/XOFF...).")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.extended_trade_flags = ProtoField.new("Extended Trade Flags", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.extendedtradeflags", ftypes.STRING, nil, nil, nil, "Type flags based on the MMT standard.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.includes_primary = ProtoField.new("Includes Primary", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.includesprimary", ftypes.STRING, nil, nil, nil, "P=Includes Primary N=Excludes Primary -=Not specified")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction would match if executed now.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.indicative_shares = ProtoField.new("Indicative Shares", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.indicativeshares", ftypes.UINT64, nil, nil, nil, "Number of shares at the Indicative Price.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 server sends a Login Accepted Packet in response to receiving a valid Login Request from the client.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 server sends this packet in response to an invalid Login Request Packet from the client.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.order_id = ProtoField.new("Order Id", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.orderid", ftypes.STRING, nil, nil, nil, "Day-specific identifier assigned to this order.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.outside_tolerance = ProtoField.new("Outside Tolerance", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.outsidetolerance", ftypes.STRING, nil, nil, nil, "O=Outside tolerance I=Inside tolerance -=Not specified")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.packet_type = ProtoField.new("Packet Type", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.packettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.password = ProtoField.new("Password", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.price_determination = ProtoField.new("Price Determination", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.pricedetermination", ftypes.STRING, nil, nil, nil, "0=Normal 1=Manual (price override by Market Supervision)")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.price_long = ProtoField.new("Price Long", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.pricelong", ftypes.DOUBLE, nil, nil, nil, "Order price (long format).")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.price_short = ProtoField.new("Price Short", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.priceshort", ftypes.DOUBLE, nil, nil, nil, "Order price.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.reference_price = ProtoField.new("Reference Price", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference price used in tie-breaker situations.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.requestedsequencenumber", ftypes.STRING, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.requested_session = ProtoField.new("Requested Session", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.reserved = ProtoField.new("Reserved", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.reserved", ftypes.STRING)
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.sequencenumber", ftypes.STRING, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Single ASCII character identifying the sequenced message type")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.session = ProtoField.new("Session", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.session", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.shares_extended = ProtoField.new("Shares Extended", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.sharesextended", ftypes.UINT64, nil, nil, nil, "Number of shares executed.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.shares_long = ProtoField.new("Shares Long", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.shareslong", ftypes.UINT64, nil, nil, nil, "Number of shares being added to the book.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.shares_short = ProtoField.new("Shares Short", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.sharesshort", ftypes.UINT24, nil, nil, nil, "Number of shares being added to the book.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.sideindicator", ftypes.STRING, nil, nil, nil, "B = Buy, S = Sell")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.souplf", ftypes.INT8, nil, nil, nil, "Terminating line feed character")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.statistic_type = ProtoField.new("Statistic Type", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.statistictype", ftypes.STRING, nil, nil, nil, "C=Closing H=High L=Low O=Opening P=Previous Closing Price")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.status = ProtoField.new("Status", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.status", ftypes.STRING, nil, nil, nil, "T=Trading R=Off-Book Reporting C=Closed S=Suspended N=No Reference Price V=Volatility(Static Collar) I=Volatility Auction O=Opening Auction E=Closing Auction H=Halt M=Market Order Imbalance P=Price Monitoring Extension U=Cboe Closing Cross Y=Halt Auction")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.symbol_extended = ProtoField.new("Symbol Extended", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.symbolextended", ftypes.STRING, nil, nil, nil, "Symbol in ISIN.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.symbol_long = ProtoField.new("Symbol Long", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.symbollong", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.symbolshort", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.text = ProtoField.new("Text", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.text", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.timestamp = ProtoField.new("Timestamp", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.timestamp", ftypes.STRING, nil, nil, nil, "Microseconds past midnight London time, ASCII numeric, left-padded")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_date = ProtoField.new("Trade Date", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.tradedate", ftypes.STRING, nil, nil, nil, "Date the trade occurred, YYYYMMDD.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.tradeflags", ftypes.STRING, nil, nil, nil, "Type flags based on MMT standard.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_id = ProtoField.new("Trade Id", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.tradeid", ftypes.STRING, nil, nil, nil, "Cboe generated identifier, unique for at least 7 calendar days.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_time = ProtoField.new("Trade Time", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.tradetime", ftypes.UINT32, nil, nil, nil, "Milliseconds since midnight London time on Trade Date.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server. These messages are not sequenced and may be lost in the event of a socket failure.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "Raw unsequenced message bytes")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.username = ProtoField.new("Username", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34 Framing
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.frame = ProtoField.new("Frame", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.frame", ftypes.STRING, nil, nil, nil, "Soup 2.0 Lf terminated record")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.packet = ProtoField.new("Packet", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.packet", ftypes.STRING, nil, nil, nil, "Soup 2.0 Packet")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.sequencedmessageheader", ftypes.STRING, nil, nil, nil, "Cboe Europe ASCII Soup sequenced message header (microsecond timestamp)")

-- Cboe BxeEquities TcpDepthOfBook 4.34 Application Messages
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.add_order_message = ProtoField.new("Add Order Message", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.addordermessage", ftypes.STRING, nil, nil, nil, "Represents a newly accepted visible order on the Cboe book with a day-specific Order ID.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.add_order_message_long_form = ProtoField.new("Add Order Message Long Form", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.addordermessagelongform", ftypes.STRING, nil, nil, nil, "Cboe European platform only. As Add Order Message but with longer Shares, Symbol and Price fields.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "Disseminates the results of an auction in a Cboe auction-eligible security.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.auctionupdatemessage", ftypes.STRING, nil, nil, nil, "Disseminates indicative price and size information during auctions for Cboe auction-eligible securities.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.ordercancelmessage", ftypes.STRING, nil, nil, nil, "Sent when a visible order on the Cboe book is cancelled in whole or in part.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.order_cancel_message_long_form = ProtoField.new("Order Cancel Message Long Form", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.ordercancelmessagelongform", ftypes.STRING, nil, nil, nil, "Cboe European platform only. As Order Cancel Message but with a longer Cancelled Shares field.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Sent when a visible order on the Cboe book is executed in whole or in part at the original Add Order price.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.order_executed_message_long_form = ProtoField.new("Order Executed Message Long Form", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.orderexecutedmessagelongform", ftypes.STRING, nil, nil, nil, "Cboe European platform only. As Order Executed Message but with a longer Executed Shares field.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.statistics_message = ProtoField.new("Statistics Message", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.statisticsmessage", ftypes.STRING, nil, nil, nil, "Cboe European platform only. Disseminates statistics prices: opening, closing, high, low, previous close.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.symbolclearmessage", ftypes.STRING, nil, nil, nil, "Instructs feed recipients to clear all orders for the Cboe book in the specified symbol; sent in recovery events such as a data centre fail-over.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_message = ProtoField.new("Trade Message", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.trademessage", ftypes.STRING, nil, nil, nil, "Provides information about executions of non-displayed orders/shares and negotiated trades. Does not alter the book.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_message_extended_form = ProtoField.new("Trade Message Extended Form", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.trademessageextendedform", ftypes.STRING, nil, nil, nil, "Cboe European platform only. Extended details of trades reported to or executed by Cboe (e.g. privately negotiated trades brought on-exchange).")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_message_long_form = ProtoField.new("Trade Message Long Form", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.trademessagelongform", ftypes.STRING, nil, nil, nil, "Cboe European platform only. As Trade Message but with longer Shares and Price fields.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_message_unknown_symbol = ProtoField.new("Trade Message Unknown Symbol", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.trademessageunknownsymbol", ftypes.STRING, nil, nil, nil, "Cboe European Trade Reporting Facility only. Trades reported to Cboe on a symbol not currently known, identified by ISIN and currency.")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "Indicates the current trading status of a security; sent whenever the status changes and for all Suspended securities before trading hours.")

-- Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34 Expert Info
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts = {}
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number = ProtoExpert.new("cboe.bxeequities.tcpdepthofbook.asciipitch.v4.34.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts = { cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number }

-----------------------------------------------------------------------
-- Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp_format = 2

-- Hours behind UTC (Europe/London) for midnight calculation
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.utc_offset_hours = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34 Show Options
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 0, "Hours behind UTC (Europe/London) for midnight calculation")

-- Handle changed preferences
function omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.show_application_messages then
    show.application_messages = omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.show_headers then
    show.headers = omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.show_headers
  end
  if show.structs ~= omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.show_structs then
    show.structs = omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.show_structs
  end
  if cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp_format ~= omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.timestamp_format then
    cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp_format = omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.timestamp_format
  end
  if cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.utc_offset_hours ~= omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.utc_offset_hours then
    cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.utc_offset_hours = omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.prefs.utc_offset_hours
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

-- trim leading spaces
trim_left_spaces = function(str)
  local start = 1

  while start <= str:len() and str:byte(start) == 0x20 do
    start = start + 1
  end

  return str:sub(start)
end

-- trim leading zeros
trim_left_zeros = function(str)
  local start = 1

  while start < str:len() and str:byte(start) == 0x30 do
    start = start + 1
  end

  return str:sub(start)
end

-- is every character a digit
is_digits = function(str)
  if str:len() == 0 then
    return false
  end

  for index = 1, str:len() do
    local byte = str:byte(index)

    if byte < 0x30 or byte > 0x39 then
      return false
    end
  end

  return true
end

-- the number a digit run of implied decimal places spells
format_implied_decimal_text = function(str, places)
  local digits = trim_left_spaces(str)
  local sign = ""
  local first = digits:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    digits = digits:sub(2)
  end

  if not is_digits(digits) then
    return nil
  end

  digits = trim_left_zeros(digits)

  while digits:len() <= places do
    digits = "0"..digits
  end

  return sign..digits:sub(1, digits:len() - places).."."..digits:sub(-places)
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
-- Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34 Fields
-----------------------------------------------------------------------

-- Auction Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_type = {}

-- Size: Auction Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_type.size = 1

-- Display: Auction Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_type.display = function(value)
  return "Auction Type: "..value
end

-- Dissect: Auction Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Cancelled Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_long = {}

-- Size: Cancelled Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_long.size = 10

-- Display: Cancelled Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_long.display = function(value)
  return "Cancelled Shares Long: "..value
end

-- Dissect: Cancelled Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_long.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.cancelled_shares_long, range, value, "Cancelled Shares Long: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Cancelled Shares Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.cancelled_shares_long, range, value, display)

  return offset + length, value
end

-- Cancelled Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_short = {}

-- Size: Cancelled Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_short.size = 6

-- Display: Cancelled Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_short.display = function(value)
  return "Cancelled Shares Short: "..value
end

-- Dissect: Cancelled Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.cancelled_shares_short, range, value, "Cancelled Shares Short: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Cancelled Shares Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.cancelled_shares_short, range, value, display)

  return offset + length, value
end

-- Cboe Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cboe_trade_flags = {}

-- Size: Cboe Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cboe_trade_flags.size = 1

-- Display: Cboe Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cboe_trade_flags.display = function(value)
  return "Cboe Trade Flags: "..value
end

-- Dissect: Cboe Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cboe_trade_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cboe_trade_flags.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cboe_trade_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.cboe_trade_flags, range, value, display)

  return offset + length, value
end

-- Currency
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.currency = {}

-- Size: Currency
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.currency.size = 3

-- Display: Currency
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.currency, range, value, display)

  return offset + length, value
end

-- Display
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.display = {}

-- Size: Display
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.display.size = 1

-- Display: Display
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.display.display = function(value)
  return "Display: "..value
end

-- Dissect: Display
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.display.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.display, range, value, display)

  return offset + length, value
end

-- Executed Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_long = {}

-- Size: Executed Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_long.size = 10

-- Display: Executed Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_long.display = function(value)
  return "Executed Shares Long: "..value
end

-- Dissect: Executed Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_long.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.executed_shares_long, range, value, "Executed Shares Long: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Executed Shares Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.executed_shares_long, range, value, display)

  return offset + length, value
end

-- Executed Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_short = {}

-- Size: Executed Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_short.size = 6

-- Display: Executed Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_short.display = function(value)
  return "Executed Shares Short: "..value
end

-- Dissect: Executed Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.executed_shares_short, range, value, "Executed Shares Short: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Executed Shares Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.executed_shares_short, range, value, display)

  return offset + length, value
end

-- Execution Flag
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flag = {}

-- Size: Execution Flag
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flag.size = 4

-- Display: Execution Flag
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flag.display = function(value)
  return "Execution Flag: "..value
end

-- Dissect: Execution Flag
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.execution_flag, range, value, display)

  return offset + length, value
end

-- Execution Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flags = {}

-- Size: Execution Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flags.size = 4

-- Display: Execution Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flags.display = function(value)
  return "Execution Flags: "..value
end

-- Dissect: Execution Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flags.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.execution_flags, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id = {}

-- Size: Execution Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.size = 12

-- Display: Execution Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Execution Venue
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_venue = {}

-- Size: Execution Venue
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_venue.size = 4

-- Display: Execution Venue
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_venue.display = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Extended Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.extended_trade_flags = {}

-- Size: Extended Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.extended_trade_flags.size = 14

-- Display: Extended Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.extended_trade_flags.display = function(value)
  return "Extended Trade Flags: "..value
end

-- Dissect: Extended Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.extended_trade_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.extended_trade_flags.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.extended_trade_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.extended_trade_flags, range, value, display)

  return offset + length, value
end

-- Includes Primary
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.includes_primary = {}

-- Size: Includes Primary
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.includes_primary.size = 1

-- Display: Includes Primary
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.includes_primary.display = function(value)
  return "Includes Primary: "..value
end

-- Dissect: Includes Primary
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.includes_primary.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.includes_primary.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.includes_primary.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.includes_primary, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_price = {}

-- Size: Indicative Price
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_price.size = 19

-- Display: Indicative Price
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_price.size):string(), 6)

  if text == nil then
    return "Indicative Price: "..tostring(value)
  end

  return "Indicative Price: "..text
end

-- Dissect: Indicative Price
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.indicative_price, range, value, "Indicative Price: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Indicative Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Indicative Shares
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_shares = {}

-- Size: Indicative Shares
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_shares.size = 10

-- Display: Indicative Shares
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_shares.display = function(value)
  return "Indicative Shares: "..value
end

-- Dissect: Indicative Shares
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.indicative_shares, range, value, "Indicative Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Indicative Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.indicative_shares, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id = {}

-- Size: Order Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.size = 12

-- Display: Order Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.order_id, range, value, display)

  return offset + length, value
end

-- Outside Tolerance
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.outside_tolerance = {}

-- Size: Outside Tolerance
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.outside_tolerance.size = 1

-- Display: Outside Tolerance
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.outside_tolerance.display = function(value)
  return "Outside Tolerance: "..value
end

-- Dissect: Outside Tolerance
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.outside_tolerance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.outside_tolerance.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.outside_tolerance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.outside_tolerance, range, value, display)

  return offset + length, value
end

-- Packet Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet_type = {}

-- Size: Packet Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet_type.size = 1

-- Display: Packet Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet_type.display = function(value)
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

-- Dissect: Packet Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.password = {}

-- Size: Password
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.password.size = 10

-- Display: Password
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.password, range, value, display)

  return offset + length, value
end

-- Price Determination
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_determination = {}

-- Size: Price Determination
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_determination.size = 1

-- Display: Price Determination
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_determination.display = function(value)
  return "Price Determination: "..value
end

-- Dissect: Price Determination
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_determination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_determination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_determination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.price_determination, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long = {}

-- Size: Price Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.size = 19

-- Display: Price Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.size):string(), 6)

  if text == nil then
    return "Price Long: "..tostring(value)
  end

  return "Price Long: "..text
end

-- Dissect: Price Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.price_long, range, value, "Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short = {}

-- Size: Price Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short.size = 10

-- Display: Price Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short.size):string(), 4)

  if text == nil then
    return "Price Short: "..tostring(value)
  end

  return "Price Short: "..text
end

-- Dissect: Price Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.price_short, range, value, "Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.price_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reference_price = {}

-- Size: Reference Price
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reference_price.size = 19

-- Display: Reference Price
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reference_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reference_price.size):string(), 6)

  if text == nil then
    return "Reference Price: "..tostring(value)
  end

  return "Reference Price: "..text
end

-- Dissect: Reference Price
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reference_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.reference_price, range, value, "Reference Price: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Reference Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_session = {}

-- Size: Requested Session
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_session.size = 10

-- Display: Requested Session
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reserved = {}

-- Size: Reserved
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reserved.size = 3

-- Display: Reserved
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reserved.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reserved.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.reserved, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequence_number = {}

-- Size: Sequence Number
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequence_number.size = 10

-- Display: Sequence Number
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_type.display = function(value)
  if value == "h" then
    return "Sequenced Message Type: Symbol Clear Message (h)"
  end
  if value == "K" then
    return "Sequenced Message Type: Add Order Message (K)"
  end
  if value == "M" then
    return "Sequenced Message Type: Add Order Message Long Form (M)"
  end
  if value == "N" then
    return "Sequenced Message Type: Order Executed Message (N)"
  end
  if value == "g" then
    return "Sequenced Message Type: Order Executed Message Long Form (g)"
  end
  if value == "F" then
    return "Sequenced Message Type: Order Cancel Message (F)"
  end
  if value == "G" then
    return "Sequenced Message Type: Order Cancel Message Long Form (G)"
  end
  if value == "V" then
    return "Sequenced Message Type: Trade Message (V)"
  end
  if value == "W" then
    return "Sequenced Message Type: Trade Message Long Form (W)"
  end
  if value == "v" then
    return "Sequenced Message Type: Trade Message Extended Form (v)"
  end
  if value == "w" then
    return "Sequenced Message Type: Trade Message Unknown Symbol (w)"
  end
  if value == "a" then
    return "Sequenced Message Type: Trading Status Message (a)"
  end
  if value == "Y" then
    return "Sequenced Message Type: Statistics Message (Y)"
  end
  if value == "b" then
    return "Sequenced Message Type: Auction Update Message (b)"
  end
  if value == "f" then
    return "Sequenced Message Type: Auction Summary Message (f)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.session = {}

-- Size: Session
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.session.size = 10

-- Display: Session
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.session, range, value, display)

  return offset + length, value
end

-- Shares Extended
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_extended = {}

-- Size: Shares Extended
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_extended.size = 12

-- Display: Shares Extended
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_extended.display = function(value)
  return "Shares Extended: "..value
end

-- Dissect: Shares Extended
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_extended.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.shares_extended, range, value, "Shares Extended: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Shares Extended is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.shares_extended, range, value, display)

  return offset + length, value
end

-- Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long = {}

-- Size: Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.size = 10

-- Display: Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.display = function(value)
  return "Shares Long: "..value
end

-- Dissect: Shares Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.shares_long, range, value, "Shares Long: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Shares Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.shares_long, range, value, display)

  return offset + length, value
end

-- Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_short = {}

-- Size: Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_short.size = 6

-- Display: Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_short.display = function(value)
  return "Shares Short: "..value
end

-- Dissect: Shares Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.shares_short, range, value, "Shares Short: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Shares Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.shares_short, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator = {}

-- Size: Side Indicator
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.size = 1

-- Display: Side Indicator
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.display = function(value)
  return "Side Indicator: "..value
end

-- Dissect: Side Indicator
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Soup Lf
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.soup_lf = {}

-- Size: Soup Lf
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.soup_lf.size = 1

-- Display: Soup Lf
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Statistic Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistic_type = {}

-- Size: Statistic Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistic_type.size = 1

-- Display: Statistic Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistic_type.display = function(value)
  return "Statistic Type: "..value
end

-- Dissect: Statistic Type
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistic_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistic_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistic_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Status
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.status = {}

-- Size: Status
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.status.size = 1

-- Display: Status
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.status.display = function(value)
  return "Status: "..value
end

-- Dissect: Status
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol Extended
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_extended = {}

-- Size: Symbol Extended
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_extended.size = 12

-- Display: Symbol Extended
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_extended.display = function(value)
  return "Symbol Extended: "..value
end

-- Dissect: Symbol Extended
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_extended.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.symbol_extended, range, value, display)

  return offset + length, value
end

-- Symbol Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long = {}

-- Size: Symbol Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.size = 8

-- Display: Symbol Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_short = {}

-- Size: Symbol Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_short.size = 6

-- Display: Symbol Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Text
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.text = {}

-- Size: Text
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.text.size = 1

-- Display: Text
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp = {}

-- Size: Timestamp
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp.size = 11

-- Display: Timestamp
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse microseconds since midnight
  local seconds = math.floor(value / 1000000)
  local microseconds = value % 1000000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%06d", microseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%06d", microseconds)
end

-- Dissect: Timestamp
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.timestamp, range, value, "Timestamp: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_date = {}

-- Size: Trade Date
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_date.size = 8

-- Display: Trade Date
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_flags = {}

-- Size: Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_flags.size = 5

-- Display: Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_flags.display = function(value)
  return "Trade Flags: "..value
end

-- Dissect: Trade Flags
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_flags.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_flags, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_id = {}

-- Size: Trade Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_id.size = 12

-- Display: Trade Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Time
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_time = {}

-- Size: Trade Time
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_time.size = 8

-- Display: Trade Time
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_time, range, value, "Trade Time: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.experts.not_a_number, "Trade Time is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_message = {}

-- Display: Unsequenced Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Username
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.username = {}

-- Size: Username
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.username.size = 6

-- Display: Username
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34
-----------------------------------------------------------------------

-- Unsequenced Data Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_data_packet = {}

-- Calculate size of: Unsequenced Data Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_data_packet.size = function(buffer, offset)
  local index = 0

  -- Remaining size of: Unsequenced Message
  index = index + (buffer:len() - (offset + index))

  return index
end

-- Display: Unsequenced Data Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = buffer:len() - index

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_request_packet = {}

-- Size: Login Request Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_request_packet.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.username.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.password.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_session.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_sequence_number.size

-- Display: Login Request Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_summary_message.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_type.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.size

-- Display: Auction Summary Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Long Price
  index, price_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.dissect(buffer, index, packet, parent)

  -- Shares Long: Numeric
  index, shares_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_update_message = {}

-- Size: Auction Update Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_update_message.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_type.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reference_price.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_price.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_shares.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.outside_tolerance.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.includes_primary.size

-- Display: Auction Update Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Long Price
  index, reference_price = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reference_price.dissect(buffer, index, packet, parent)

  -- Indicative Price: Long Price
  index, indicative_price = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_price.dissect(buffer, index, packet, parent)

  -- Indicative Shares: Numeric
  index, indicative_shares = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.indicative_shares.dissect(buffer, index, packet, parent)

  -- Outside Tolerance: Alphanumeric
  index, outside_tolerance = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.outside_tolerance.dissect(buffer, index, packet, parent)

  -- Includes Primary: Alphanumeric
  index, includes_primary = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.includes_primary.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistics_message = {}

-- Size: Statistics Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistics_message.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistic_type.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_determination.size

-- Display: Statistics Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Long Price
  index, price_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.dissect(buffer, index, packet, parent)

  -- Statistic Type: Alpha
  index, statistic_type = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistic_type.dissect(buffer, index, packet, parent)

  -- Price Determination: Alphanumeric
  index, price_determination = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_determination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.statistics_message, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trading_status_message = {}

-- Size: Trading Status Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trading_status_message.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.status.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reserved.size

-- Display: Trading Status Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.dissect(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.status.dissect(buffer, index, packet, parent)

  -- Reserved: Alpha
  index, reserved = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message Unknown Symbol
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_unknown_symbol = {}

-- Size: Trade Message Unknown Symbol
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_unknown_symbol.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_extended.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_extended.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_date.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_time.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_venue.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.currency.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cboe_trade_flags.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.extended_trade_flags.size

-- Display: Trade Message Unknown Symbol
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_unknown_symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message Unknown Symbol
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_unknown_symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Shares Extended: Numeric
  index, shares_extended = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_extended.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Alphanumeric
  index, symbol_extended = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_extended.dissect(buffer, index, packet, parent)

  -- Price Long: Long Price
  index, price_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.dissect(buffer, index, packet, parent)

  -- Trade Id: Base 36 Numeric
  index, trade_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: Alphanumeric
  index, trade_date = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Time: Timestamp
  index, trade_time = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_time.dissect(buffer, index, packet, parent)

  -- Execution Venue: Alphanumeric
  index, execution_venue = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_venue.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.currency.dissect(buffer, index, packet, parent)

  -- Cboe Trade Flags: Alphanumeric
  index, cboe_trade_flags = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cboe_trade_flags.dissect(buffer, index, packet, parent)

  -- Extended Trade Flags: Alphanumeric
  index, extended_trade_flags = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.extended_trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message Unknown Symbol
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_unknown_symbol.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_message_unknown_symbol, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_unknown_symbol.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_unknown_symbol.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_unknown_symbol.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message Extended Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_extended_form = {}

-- Size: Trade Message Extended Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_extended_form.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_extended.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_date.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_time.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_venue.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.currency.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cboe_trade_flags.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.extended_trade_flags.size

-- Display: Trade Message Extended Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_extended_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message Extended Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_extended_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Shares Extended: Numeric
  index, shares_extended = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_extended.dissect(buffer, index, packet, parent)

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Long Price
  index, price_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.dissect(buffer, index, packet, parent)

  -- Trade Id: Base 36 Numeric
  index, trade_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: Alphanumeric
  index, trade_date = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Time: Timestamp
  index, trade_time = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_time.dissect(buffer, index, packet, parent)

  -- Execution Venue: Alphanumeric
  index, execution_venue = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_venue.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.currency.dissect(buffer, index, packet, parent)

  -- Cboe Trade Flags: Alphanumeric
  index, cboe_trade_flags = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cboe_trade_flags.dissect(buffer, index, packet, parent)

  -- Extended Trade Flags: Alphanumeric
  index, extended_trade_flags = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.extended_trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message Extended Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_extended_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_message_extended_form, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_extended_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_extended_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_extended_form.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_long_form = {}

-- Size: Trade Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_long_form.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_flags.size

-- Display: Trade Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Long: Numeric
  index, shares_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.dissect(buffer, index, packet, parent)

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Long Price
  index, price_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Alphanumeric
  index, trade_flags = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_message_long_form, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message = {}

-- Size: Trade Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_short.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_short.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_flags.size

-- Display: Trade Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Short: Numeric
  index, shares_short = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_short.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alpha
  index, symbol_short = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Short: Price
  index, price_short = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Alphanumeric
  index, trade_flags = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.trade_message, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message_long_form = {}

-- Size: Order Cancel Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message_long_form.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_long.size

-- Display: Order Cancel Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.dissect(buffer, index, packet, parent)

  -- Cancelled Shares Long: Numeric
  index, cancelled_shares_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.order_cancel_message_long_form, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message = {}

-- Size: Order Cancel Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_short.size

-- Display: Order Cancel Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.dissect(buffer, index, packet, parent)

  -- Cancelled Shares Short: Numeric
  index, cancelled_shares_short = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.cancelled_shares_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.order_cancel_message, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message_long_form = {}

-- Size: Order Executed Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message_long_form.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flags.size

-- Display: Order Executed Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.dissect(buffer, index, packet, parent)

  -- Executed Shares Long: Numeric
  index, executed_shares_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.dissect(buffer, index, packet, parent)

  -- Execution Flags: Alphanumeric
  index, execution_flags = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.order_executed_message_long_form, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message = {}

-- Size: Order Executed Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_short.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flag.size

-- Display: Order Executed Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.dissect(buffer, index, packet, parent)

  -- Executed Shares Short: Numeric
  index, executed_shares_short = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.executed_shares_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_id.dissect(buffer, index, packet, parent)

  -- Execution Flag: Alphanumeric
  index, execution_flag = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.execution_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message_long_form = {}

-- Size: Add Order Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message_long_form.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.display.size

-- Display: Add Order Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Long: Numeric
  index, shares_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_long.dissect(buffer, index, packet, parent)

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Long Price
  index, price_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_long.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.display.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Long Form
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.add_order_message_long_form, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message = {}

-- Size: Add Order Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_short.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_short.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.display.size

-- Display: Add Order Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Short: Numeric
  index, shares_short = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.shares_short.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alpha
  index, symbol_short = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Short: Price
  index, price_short = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.price_short.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.display.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.add_order_message, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_clear_message = {}

-- Size: Symbol Clear Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_clear_message.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.size

-- Display: Symbol Clear Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Long: Alpha
  index, symbol_long = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.symbol_clear_message, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message = {}

-- Dissect: Sequenced Message
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Symbol Clear Message
  if sequenced_message_type == "h" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if sequenced_message_type == "K" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Long Form
  if sequenced_message_type == "M" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.add_order_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "N" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message Long Form
  if sequenced_message_type == "g" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_executed_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if sequenced_message_type == "F" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message Long Form
  if sequenced_message_type == "G" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.order_cancel_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if sequenced_message_type == "V" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message Long Form
  if sequenced_message_type == "W" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message Extended Form
  if sequenced_message_type == "v" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_extended_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message Unknown Symbol
  if sequenced_message_type == "w" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trade_message_unknown_symbol.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if sequenced_message_type == "a" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if sequenced_message_type == "Y" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if sequenced_message_type == "b" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if sequenced_message_type == "f" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.auction_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_header.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 11 Byte Ascii String
  index, timestamp = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 15 values
  index, sequenced_message_type = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = buffer(index - 1, 1):string()

  -- Sequenced Message: Runtime Type with 15 branches
  index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.sequenced_data_packet, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_rejected_packet.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_accepted_packet.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.session.size + 
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequence_number.size

-- Display: Login Accepted Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.debug_packet = {}

-- Size: Debug Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.debug_packet.size =
  cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.text.size

-- Display: Debug Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.debug_packet, buffer(offset, 0))
    local index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.payload = {}

-- Dissect: Payload
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Frame
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.frame = {}

-- Display: Frame
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.frame.fields = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset

  -- Packet Type: 1 Byte Ascii String Enum with 9 values
  index, packet_type = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 6 branches
  index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.payload.dissect(buffer, index, packet, parent, packet_type)

  -- Soup Lf: 1 Byte Fixed Width Integer Static
  index, soup_lf = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.soup_lf.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.frame.dissect = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset + size_of_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.fields.frame, buffer(offset, 0))
    local current = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.frame.fields(buffer, offset, packet, parent, size_of_frame)
    parent:set_len(size_of_frame)
    local display = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.frame.fields(buffer, offset, packet, parent, size_of_frame)

    return index
  end
end

-- Remaining Bytes For: Frame
local frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- A message runs to the first terminator byte: scan for it
  local terminator = 10
  local current = 0
  while current < remaining and buffer(index + current, 1):uint() ~= terminator do
    current = current + 1
  end

  -- The terminator is not in the bytes available yet: ask for one more segment
  if current >= remaining then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- The message includes the terminator byte it ends on
  current = current + 1

  return remaining, current
end

-- Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet = {}

-- Verify required size of Tcp packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet_type.size
end

-- Dissect Packet
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Frame
  local end_of_payload = buffer:len()

  -- Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_frame = frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_frame):tvb()
      index = cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.frame.dissect(frame, index, packet, parent, size_of_frame)
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
function omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.init()
end

-- Dissector for Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34
function omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34, buffer(), omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.description, "("..buffer:len().." Bytes)")
  return cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local packet_type = buffer(0, 1):string()

  -- Debug Packet
  if packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if packet_type == "S" then
    if buffer:len() < 13 then
      return false
    end

    local sequenced_message_type = buffer(12, 1):string()

    -- Symbol Clear Message
    if sequenced_message_type == "h" then
      return true
    end

    -- Add Order Message
    if sequenced_message_type == "K" then
      return true
    end

    -- Add Order Message Long Form
    if sequenced_message_type == "M" then
      return true
    end

    -- Order Executed Message
    if sequenced_message_type == "N" then
      return true
    end

    -- Order Executed Message Long Form
    if sequenced_message_type == "g" then
      return true
    end

    -- Order Cancel Message
    if sequenced_message_type == "F" then
      return true
    end

    -- Order Cancel Message Long Form
    if sequenced_message_type == "G" then
      return true
    end

    -- Trade Message
    if sequenced_message_type == "V" then
      return true
    end

    -- Trade Message Long Form
    if sequenced_message_type == "W" then
      return true
    end

    -- Trade Message Extended Form
    if sequenced_message_type == "v" then
      return true
    end

    -- Trade Message Unknown Symbol
    if sequenced_message_type == "w" then
      return true
    end

    -- Trading Status Message
    if sequenced_message_type == "a" then
      return true
    end

    -- Statistics Message
    if sequenced_message_type == "Y" then
      return true
    end

    -- Auction Update Message
    if sequenced_message_type == "b" then
      return true
    end

    -- Auction Summary Message
    if sequenced_message_type == "f" then
      return true
    end

    return false
  end

  -- Login Request Packet
  if packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet
  if packet_type == "U" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34 (Tcp)
local function omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34
  omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34
omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34:register_heuristic("tcp", omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34_tcp_heuristic)

-- Register Cboe BxeEquities TcpDepthOfBook AsciiPitch 4.34 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_bxeequities_tcpdepthofbook_asciipitch_v4_34)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 4.34
--   Since: 4.17
--   Date: Friday, January 30, 2026
--   Specification: BATS_Europe_PITCH_Specification.pdf
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
