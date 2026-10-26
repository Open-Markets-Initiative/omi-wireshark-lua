-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16 Protocol
local omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16 = Proto("Omi.Cboe.BzxEquities.TcpDepthOfBook.AsciiPitch.v1.15.16", "Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16")

-- Protocol table
local cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16 Fields
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_only_price_long = ProtoField.new("Auction Only Price Long", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.auctiononlypricelong", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction book would match using only Eligible Auction Orders.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_only_price_short = ProtoField.new("Auction Only Price Short", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.auctiononlypriceshort", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction book would match using only Eligible Auction Orders.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_type = ProtoField.new("Auction Type", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.auctiontype", ftypes.STRING)
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.buyshares", ftypes.UINT64, nil, nil, nil, "Number of shares on buy side at the Reference Price. Shares matched for Cboe Market Close.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.canceled_shares = ProtoField.new("Canceled Shares", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.canceledshares", ftypes.UINT24, nil, nil, nil, "Number of shares canceled")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.customerindicator", ftypes.STRING, nil, nil, nil, "(EDGX Only), space filled on other Cboe Equities Exchanges.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.display = ProtoField.new("Display", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.display", ftypes.STRING, nil, nil, nil, "Y = The order is aggregated in the Cboe SIP quote.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.executedshares", ftypes.UINT24, nil, nil, nil, "Number of shares executed")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.execution_id = ProtoField.new("Execution Id", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.executionid", ftypes.STRING, nil, nil, nil, "Cboe generated day-unique execution identifier of this execution. Execution ID is also referenced in the Trade Break message.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.halt_status = ProtoField.new("Halt Status", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.haltstatus", ftypes.STRING, nil, nil, nil, "Trading Status")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.indicative_price_long = ProtoField.new("Indicative Price Long", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.indicativepricelong", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction book and the continuous book would match.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.indicative_price_short = ProtoField.new("Indicative Price Short", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.indicativepriceshort", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction book and the continuous book would match.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 server sends a Login Accepted Packet in response to receiving a valid Login Request from the client.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 server sends this packet in response to an invalid Login Request Packet from the client.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.midnightreference", ftypes.UINT64, nil, nil, nil, "Midnight Eastern Time reference time for subsequent Timestamp values, expressed as number of whole seconds since the Epoch (Midnight January 1, 1970 UTC).")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.order_id = ProtoField.new("Order Id", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.orderid", ftypes.STRING, nil, nil, nil, "Day-specific identifier assigned to this order")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.packet_type = ProtoField.new("Packet Type", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.packettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.participant_id = ProtoField.new("Participant Id", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.participantid", ftypes.STRING, nil, nil, nil, "Optionally specified. If specified, MPID or 'RTAL' for retail specified orders (equities) of firm attributed to this quote. Space filled otherwise.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.password = ProtoField.new("Password", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.price_long = ProtoField.new("Price Long", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.pricelong", ftypes.DOUBLE, nil, nil, nil, "The limit order price")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.price_short = ProtoField.new("Price Short", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.priceshort", ftypes.DOUBLE, nil, nil, nil, "The limit order price")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reference_price_long = ProtoField.new("Reference Price Long", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.referencepricelong", ftypes.DOUBLE, nil, nil, nil, "BBO Collared auction price.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reference_price_short = ProtoField.new("Reference Price Short", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.referencepriceshort", ftypes.DOUBLE, nil, nil, nil, "BBO Collared auction price.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.regshoaction", ftypes.UINT8)
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.requestedsequencenumber", ftypes.STRING, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.requested_session = ProtoField.new("Requested Session", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reserved = ProtoField.new("Reserved", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.reserved", ftypes.STRING, nil, nil, nil, "Set to 'Y'")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.reserved1", ftypes.STRING, nil, nil, nil, "Reserved")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.reserved2", ftypes.STRING, nil, nil, nil, "Reserved")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.retailpriceimprovement", ftypes.STRING)
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.sellshares", ftypes.UINT64, nil, nil, nil, "Number of shares on sell side at the Reference Price. Shares matched for Cboe Market Close.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.sequencenumber", ftypes.STRING, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.sequencedmessageheader", ftypes.STRING)
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.sequencedmessagetype", ftypes.STRING)
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.session = ProtoField.new("Session", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.session", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.shares_long = ProtoField.new("Shares Long", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.shareslong", ftypes.UINT64, nil, nil, nil, "Cumulative number of shares executed during the auction. Shares executed in the CMC match.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.shares_short = ProtoField.new("Shares Short", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.sharesshort", ftypes.UINT24, nil, nil, nil, "Number of shares being added to the book (may be less than the number of shares entered).")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.sideindicator", ftypes.STRING)
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.souplf", ftypes.INT8, nil, nil, nil, "Terminating line feed character")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.stock_symbol_long = ProtoField.new("Stock Symbol Long", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.stocksymbollong", ftypes.STRING, nil, nil, nil, "Stock symbol right padded with spaces.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.stock_symbol_short = ProtoField.new("Stock Symbol Short", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.stocksymbolshort", ftypes.STRING, nil, nil, nil, "Stock symbol right padded with spaces.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.text = ProtoField.new("Text", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.text", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.time = ProtoField.new("Time", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.time", ftypes.UINT64, nil, nil, nil, "Number of whole seconds elapsed since the start of the current Eastern Time calendar day, derived by converting the current Eastern wall clock time (HH:MM:SS) to seconds.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.timestamp = ProtoField.new("Timestamp", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.timestamp", ftypes.INT32)
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_date = ProtoField.new("Trade Date", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.tradedate", ftypes.UINT32, nil, nil, nil, "Current Trade Date as represented by YYYYMMDD")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server. These messages are not sequenced and may be lost in the event of a socket failure.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "Raw unsequenced message bytes")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.username = ProtoField.new("Username", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16 Framing
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.frame = ProtoField.new("Frame", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.frame", ftypes.STRING, nil, nil, nil, "Soup 2.0 Lf terminated record")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.packet = ProtoField.new("Packet", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.packet", ftypes.STRING, nil, nil, nil, "Soup 2.0 Packet")

-- Cboe BzxEquities TcpDepthOfBook 1.15.16 Application Messages
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.add_order_extended_message = ProtoField.new("Add Order Extended Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.addorderextendedmessage", ftypes.STRING, nil, nil, nil, "The extended version of the Add Order message accommodates larger prices.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.addorderlongmessage", ftypes.STRING, nil, nil, nil, "The long version of the Add Order message accommodates larger symbol sizes possible through the ISRA plan.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.addordershortmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the Cboe book.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "Auction Summary messages are used to disseminate the results of an auction of a Cboe listed security on BZX, and for Periodic Auctions on BYX.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.auctionupdatemessage", ftypes.STRING, nil, nil, nil, "Auction Update messages are used to disseminate Cboe price and size information during auctions for Cboe listed securities on BZX, and for Periodic Auctions on BYX.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.extended_auction_summary_message = ProtoField.new("Extended Auction Summary Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.extendedauctionsummarymessage", ftypes.STRING, nil, nil, nil, "The extended version of the Auction Summary message accommodates larger prices.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.extended_auction_update_message = ProtoField.new("Extended Auction Update Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.extendedauctionupdatemessage", ftypes.STRING, nil, nil, nil, "The extended version of the BZX Auction Update message accommodates larger prices.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.ordercancelmessage", ftypes.STRING, nil, nil, nil, "Order Cancel messages are sent when a visible order on the Cboe book is canceled in whole or in part.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Order Executed messages are sent when a visible order on the Cboe book is executed in whole or in part.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.retailpriceimprovementmessage", ftypes.STRING, nil, nil, nil, "The Retail Price Improvement message is only available on the BYX and EDGX Exchanges. This message is a Retail Liquidity Indicator (RLI) that includes symbol and side, but not price and size.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.symbolclearmessage", ftypes.STRING, nil, nil, nil, "The Symbol Clear message instructs feed recipients to clear all orders for the Cboe book in the specified symbol.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.timereferencemessage", ftypes.STRING, nil, nil, nil, "The Time Reference message is used to provide a midnight reference point for recipients of the feed. It is sent whenever the system starts up and when the system crosses a midnight boundary. All subsequent Timestamp values will use the last Midnight Reference until another Time Reference message is received. The Timestamp field will contain the offset from the Trade Date of the Time Reference message.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.tradebreakmessage", ftypes.STRING, nil, nil, nil, "The Trade Break message is sent whenever an execution on Cboe is broken.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_extended_message = ProtoField.new("Trade Extended Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.tradeextendedmessage", ftypes.STRING, nil, nil, nil, "The extended version of the Trade message accommodates larger prices.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.tradelongmessage", ftypes.STRING, nil, nil, nil, "The long version of the Trade message accommodates larger symbol sizes possible through the ISRA plan.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.tradeshortmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions of non-displayed orders or shares on the Cboe book and routed orders.")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status message is used to indicate the current trading status of a security.")

-- Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16 Expert Info
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts = {}
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number = ProtoExpert.new("cboe.bzxequities.tcpdepthofbook.asciipitch.v1.15.16.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts = { cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16 Show Options
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.prefs.show_application_messages then
    show.application_messages = omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.prefs.show_application_messages
  end
  if show.structs ~= omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.prefs.show_structs then
    show.structs = omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.prefs.show_structs
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
-- Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16 Fields
-----------------------------------------------------------------------

-- Auction Only Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_long = {}

-- Size: Auction Only Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_long.size = 14

-- Display: Auction Only Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_long.size):string(), 6)

  if text == nil then
    return "Auction Only Price Long: "..tostring(value)
  end

  return "Auction Only Price Long: "..text
end

-- Dissect: Auction Only Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_only_price_long, range, value, "Auction Only Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Auction Only Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_only_price_long, range, value, display)

  return offset + length, value
end

-- Auction Only Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_short = {}

-- Size: Auction Only Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_short.size = 10

-- Display: Auction Only Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_short.size):string(), 4)

  if text == nil then
    return "Auction Only Price Short: "..tostring(value)
  end

  return "Auction Only Price Short: "..text
end

-- Dissect: Auction Only Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_only_price_short, range, value, "Auction Only Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Auction Only Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_only_price_short, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type = {}

-- Size: Auction Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.size = 1

-- Display: Auction Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.labels = {
  ["O"] = "Auction Type: Opening Auction (O)",
  ["C"] = "Auction Type: Closing Auction (C)",
  ["H"] = "Auction Type: Halt Auction (H)",
  ["I"] = "Auction Type: Ipo Auction (I)",
  ["M"] = "Auction Type: Cboe Market Close (M)",
  ["P"] = "Auction Type: Periodic Auction Byx Only (P)",
}

cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.display = function(value)
  return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.labels[value] or "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.buy_shares = {}

-- Size: Buy Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.buy_shares.size = 10

-- Display: Buy Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.buy_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.buy_shares, range, value, "Buy Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Buy Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Canceled Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.canceled_shares = {}

-- Size: Canceled Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.canceled_shares.size = 6

-- Display: Canceled Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.canceled_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.canceled_shares, range, value, "Canceled Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Canceled Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator = {}

-- Size: Customer Indicator
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.labels = {
  ["R"] = "Customer Indicator: Retail (R)",
}

cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.display = function(value)
  return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.labels[value] or "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Display
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.display = {}

-- Size: Display
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.display.size = 1

-- Display: Display
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.display.display = function(value)
  return "Display: "..value
end

-- Dissect: Display
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.display.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.display, range, value, display)

  return offset + length, value
end

-- Executed Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.executed_shares = {}

-- Size: Executed Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.executed_shares.size = 6

-- Display: Executed Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.executed_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.executed_shares, range, value, "Executed Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Executed Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id = {}

-- Size: Execution Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.size = 12

-- Display: Execution Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.halt_status = {}

-- Size: Halt Status
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.halt_status.size = 1

-- Display: Halt Status
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.halt_status.labels = {
  ["A"] = "Halt Status: Accepting Orders For Queuing (A)",
  ["H"] = "Halt Status: Halted (H)",
  ["Q"] = "Halt Status: Quote Only Cboe Listings (Q)",
  ["S"] = "Halt Status: Exchange Specific Suspension (S)",
  ["T"] = "Halt Status: Trading (T)",
}

cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.halt_status.display = function(value)
  return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.halt_status.labels[value] or "Halt Status: Unknown("..value..")"
end

-- Dissect: Halt Status
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Indicative Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_long = {}

-- Size: Indicative Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_long.size = 14

-- Display: Indicative Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_long.size):string(), 6)

  if text == nil then
    return "Indicative Price Long: "..tostring(value)
  end

  return "Indicative Price Long: "..text
end

-- Dissect: Indicative Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.indicative_price_long, range, value, "Indicative Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Indicative Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.indicative_price_long, range, value, display)

  return offset + length, value
end

-- Indicative Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_short = {}

-- Size: Indicative Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_short.size = 10

-- Display: Indicative Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_short.size):string(), 4)

  if text == nil then
    return "Indicative Price Short: "..tostring(value)
  end

  return "Indicative Price Short: "..text
end

-- Dissect: Indicative Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.indicative_price_short, range, value, "Indicative Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Indicative Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.indicative_price_short, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.midnight_reference = {}

-- Size: Midnight Reference
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.midnight_reference.size = 10

-- Display: Midnight Reference
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.midnight_reference.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.midnight_reference, range, value, "Midnight Reference: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Midnight Reference is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id = {}

-- Size: Order Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.size = 12

-- Display: Order Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet_type = {}

-- Size: Packet Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet_type.size = 1

-- Display: Packet Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet_type.display = function(value)
  return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.participant_id = {}

-- Size: Participant Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.participant_id.size = 4

-- Display: Participant Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Password
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.password = {}

-- Size: Password
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.password.size = 10

-- Display: Password
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long = {}

-- Size: Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.size = 14

-- Display: Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.size):string(), 6)

  if text == nil then
    return "Price Long: "..tostring(value)
  end

  return "Price Long: "..text
end

-- Dissect: Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.price_long, range, value, "Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short = {}

-- Size: Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.size = 10

-- Display: Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.size):string(), 4)

  if text == nil then
    return "Price Short: "..tostring(value)
  end

  return "Price Short: "..text
end

-- Dissect: Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.price_short, range, value, "Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.price_short, range, value, display)

  return offset + length, value
end

-- Reference Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_long = {}

-- Size: Reference Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_long.size = 14

-- Display: Reference Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_long.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_long.size):string(), 6)

  if text == nil then
    return "Reference Price Long: "..tostring(value)
  end

  return "Reference Price Long: "..text
end

-- Dissect: Reference Price Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_long.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reference_price_long, range, value, "Reference Price Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Reference Price Long is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reference_price_long, range, value, display)

  return offset + length, value
end

-- Reference Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_short = {}

-- Size: Reference Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_short.size = 10

-- Display: Reference Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_short.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_short.size):string(), 4)

  if text == nil then
    return "Reference Price Short: "..tostring(value)
  end

  return "Reference Price Short: "..text
end

-- Dissect: Reference Price Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reference_price_short, range, value, "Reference Price Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Reference Price Short is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reference_price_short, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reg_sho_action.labels = {
  [0] = "Reg Sho Action: No Price Test In Effect (0)",
  [1] = "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)",
}

cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reg_sho_action.display = function(value)
  return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reg_sho_action.labels[value] or "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reg_sho_action.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reg_sho_action, range, value, "Reg Sho Action: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Reg Sho Action is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_session = {}

-- Size: Requested Session
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_session.size = 10

-- Display: Requested Session
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved = {}

-- Size: Reserved
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved.size = 1

-- Display: Reserved
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_1 = {}

-- Size: Reserved 1
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_1.size = 1

-- Display: Reserved 1
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_2 = {}

-- Size: Reserved 2
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_2.size = 1

-- Display: Reserved 2
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement.labels = {
  ["B"] = "Retail Price Improvement: Buy Side Rpi (B)",
  ["S"] = "Retail Price Improvement: Sell Side Rpi (S)",
  ["A"] = "Retail Price Improvement: Buy And Sell Rpi (A)",
  ["N"] = "Retail Price Improvement: No Rpi (N)",
}

cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement.display = function(value)
  return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement.labels[value] or "Retail Price Improvement: Unknown("..value..")"
end

-- Dissect: Retail Price Improvement
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sell_shares = {}

-- Size: Sell Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sell_shares.size = 10

-- Display: Sell Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sell_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sell_shares, range, value, "Sell Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Sell Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequence_number = {}

-- Size: Sequence Number
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequence_number.size = 10

-- Display: Sequence Number
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_type.labels = {
  ["s"] = "Sequenced Message Type: Symbol Clear Message (s)",
  ["A"] = "Sequenced Message Type: Add Order Short Message (A)",
  ["d"] = "Sequenced Message Type: Add Order Long Message (d)",
  ["1"] = "Sequenced Message Type: Add Order Extended Message (1)",
  ["E"] = "Sequenced Message Type: Order Executed Message (E)",
  ["X"] = "Sequenced Message Type: Order Cancel Message (X)",
  ["T"] = "Sequenced Message Type: Time Reference Message (T)",
  ["P"] = "Sequenced Message Type: Trade Short Message (P)",
  ["r"] = "Sequenced Message Type: Trade Long Message (r)",
  ["2"] = "Sequenced Message Type: Trade Extended Message (2)",
  ["B"] = "Sequenced Message Type: Trade Break Message (B)",
  ["H"] = "Sequenced Message Type: Trading Status Message (H)",
  ["I"] = "Sequenced Message Type: Auction Update Message (I)",
  ["3"] = "Sequenced Message Type: Extended Auction Update Message (3)",
  ["J"] = "Sequenced Message Type: Auction Summary Message (J)",
  ["4"] = "Sequenced Message Type: Extended Auction Summary Message (4)",
  ["R"] = "Sequenced Message Type: Retail Price Improvement Message (R)",
}

cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_type.display = function(value)
  return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.session = {}

-- Size: Session
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.session.size = 10

-- Display: Session
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.session, range, value, display)

  return offset + length, value
end

-- Shares Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_long = {}

-- Size: Shares Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_long.size = 10

-- Display: Shares Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_long.display = function(value)
  return "Shares Long: "..value
end

-- Dissect: Shares Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_long.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.shares_long, range, value, "Shares Long: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Shares Long is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.shares_long, range, value, display)

  return offset + length, value
end

-- Shares Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short = {}

-- Size: Shares Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.size = 6

-- Display: Shares Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.display = function(value)
  return "Shares Short: "..value
end

-- Dissect: Shares Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.shares_short, range, value, "Shares Short: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Shares Short is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.shares_short, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator = {}

-- Size: Side Indicator
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.size = 1

-- Display: Side Indicator
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.labels = {
  ["B"] = "Side Indicator: Buy Order (B)",
  ["S"] = "Side Indicator: Sell Order (S)",
}

cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.display = function(value)
  return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.labels[value] or "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Soup Lf
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.soup_lf = {}

-- Size: Soup Lf
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.soup_lf.size = 1

-- Display: Soup Lf
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Stock Symbol Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long = {}

-- Size: Stock Symbol Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size = 8

-- Display: Stock Symbol Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.display = function(value)
  return "Stock Symbol Long: "..value
end

-- Dissect: Stock Symbol Long
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.stock_symbol_long, range, value, display)

  return offset + length, value
end

-- Stock Symbol Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_short = {}

-- Size: Stock Symbol Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_short.size = 6

-- Display: Stock Symbol Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_short.display = function(value)
  return "Stock Symbol Short: "..value
end

-- Dissect: Stock Symbol Short
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.stock_symbol_short, range, value, display)

  return offset + length, value
end

-- Text
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.text = {}

-- Size: Text
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.text.size = 1

-- Display: Text
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.text, range, value, display)

  return offset + length, value
end

-- Time
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time = {}

-- Size: Time
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time.size = 10

-- Display: Time
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.time, range, value, "Time: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Time is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.time, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.timestamp = {}

-- Size: Timestamp
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.timestamp.size = 8

-- Display: Timestamp
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.timestamp, range, value, "Timestamp: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_date = {}

-- Size: Trade Date
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_date.size = 8

-- Display: Trade Date
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_date.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_date, range, value, "Trade Date: Not Applicable")
    item:add_proto_expert_info(cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.experts.not_a_number, "Trade Date is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_message = {}

-- Display: Unsequenced Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Username
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.username = {}

-- Size: Username
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.username.size = 6

-- Display: Username
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16
-----------------------------------------------------------------------

-- Unsequenced Data Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_data_packet = {}

-- Calculate size of: Unsequenced Data Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_data_packet.size = function(buffer, offset)
  local index = 0

  -- Remaining size of: Unsequenced Message
  index = index + (buffer:len() - (offset + index))

  return index
end

-- Display: Unsequenced Data Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = buffer:len() - index

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_request_packet = {}

-- Size: Login Request Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_request_packet.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.username.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.password.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_session.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_sequence_number.size

-- Display: Login Request Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Retail Price Improvement Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement_message = {}

-- Size: Retail Price Improvement Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement.size

-- Display: Retail Price Improvement Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: Alpha
  index, retail_price_improvement = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Auction Summary Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_summary_message = {}

-- Size: Extended Auction Summary Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_summary_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_long.size

-- Display: Extended Auction Summary Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Auction Summary Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Long Price
  index, price_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.dissect(buffer, index, packet, parent)

  -- Shares Long: Numeric
  index, shares_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Auction Summary Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.extended_auction_summary_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_summary_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_long.size

-- Display: Auction Summary Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.dissect(buffer, index, packet, parent)

  -- Price Short: Price
  index, price_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.dissect(buffer, index, packet, parent)

  -- Shares Long: Numeric
  index, shares_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Auction Update Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_update_message = {}

-- Size: Extended Auction Update Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_update_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.buy_shares.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sell_shares.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_long.size

-- Display: Extended Auction Update Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Auction Update Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price Long: Long Price
  index, reference_price_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_long.dissect(buffer, index, packet, parent)

  -- Buy Shares: Numeric
  index, buy_shares = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Numeric
  index, sell_shares = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price Long: Long Price
  index, indicative_price_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_long.dissect(buffer, index, packet, parent)

  -- Auction Only Price Long: Long Price
  index, auction_only_price_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Auction Update Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.extended_auction_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_update_message = {}

-- Size: Auction Update Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_update_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.buy_shares.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sell_shares.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_short.size

-- Display: Auction Update Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price Short: Price
  index, reference_price_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reference_price_short.dissect(buffer, index, packet, parent)

  -- Buy Shares: Numeric
  index, buy_shares = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Numeric
  index, sell_shares = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price Short: Price
  index, indicative_price_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.indicative_price_short.dissect(buffer, index, packet, parent)

  -- Auction Only Price Short: Price
  index, auction_only_price_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_only_price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trading_status_message = {}

-- Size: Trading Status Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trading_status_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.halt_status.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reg_sho_action.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_1.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_2.size

-- Display: Trading Status Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.halt_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Numeric
  index, reg_sho_action = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_break_message = {}

-- Size: Trade Break Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_break_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.size

-- Display: Trade Break Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Extended Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_extended_message = {}

-- Size: Trade Extended Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_extended_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.size

-- Display: Trade Extended Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Extended Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Short: Numeric
  index, shares_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.dissect(buffer, index, packet, parent)

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Long Price
  index, price_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Extended Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_extended_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_long_message = {}

-- Size: Trade Long Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_long_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.size

-- Display: Trade Long Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Short: Numeric
  index, shares_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.dissect(buffer, index, packet, parent)

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  -- Price Short: Price
  index, price_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_short_message = {}

-- Size: Trade Short Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_short_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.size

-- Display: Trade Short Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Short: Numeric
  index, shares_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.dissect(buffer, index, packet, parent)

  -- Stock Symbol Short: Printable ASCII
  index, stock_symbol_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_short.dissect(buffer, index, packet, parent)

  -- Price Short: Price
  index, price_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time_reference_message = {}

-- Size: Time Reference Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time_reference_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.midnight_reference.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_date.size

-- Display: Time Reference Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Numeric
  index, midnight_reference = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Numeric
  index, time = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_cancel_message = {}

-- Size: Order Cancel Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_cancel_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.canceled_shares.size

-- Display: Order Cancel Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Shares: Numeric
  index, canceled_shares = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.order_cancel_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_executed_message = {}

-- Size: Order Executed Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_executed_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.executed_shares.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.size

-- Display: Order Executed Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.dissect(buffer, index, packet, parent)

  -- Executed Shares: Numeric
  index, executed_shares = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Extended Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_extended_message = {}

-- Size: Add Order Extended Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_extended_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.display.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.participant_id.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.size

-- Display: Add Order Extended Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Extended Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Short: Numeric
  index, shares_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.dissect(buffer, index, packet, parent)

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Long Price
  index, price_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_long.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.display.dissect(buffer, index, packet, parent)

  -- Participant Id: Alpha
  index, participant_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Extended Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.add_order_extended_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_long_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.participant_id.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.size

-- Display: Add Order Long Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Short: Numeric
  index, shares_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.dissect(buffer, index, packet, parent)

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  -- Price Short: Price
  index, price_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.dissect(buffer, index, packet, parent)

  -- Reserved: Alpha
  index, reserved = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved.dissect(buffer, index, packet, parent)

  -- Participant Id: Alpha
  index, participant_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_short_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved.size

-- Display: Add Order Short Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Short: Numeric
  index, shares_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.shares_short.dissect(buffer, index, packet, parent)

  -- Stock Symbol Short: Printable ASCII
  index, stock_symbol_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_short.dissect(buffer, index, packet, parent)

  -- Price Short: Price
  index, price_short = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.price_short.dissect(buffer, index, packet, parent)

  -- Reserved: Alpha
  index, reserved = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.symbol_clear_message = {}

-- Size: Symbol Clear Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.symbol_clear_message.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.size

-- Display: Symbol Clear Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Long: Printable ASCII
  index, stock_symbol_long = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.stock_symbol_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.symbol_clear_message, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message = {}

-- Dispatch: Sequenced Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message.dispatch = {
  ["s"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.symbol_clear_message.dissect,
  ["A"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_short_message.dissect,
  ["d"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_long_message.dissect,
  ["1"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.add_order_extended_message.dissect,
  ["E"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_executed_message.dissect,
  ["X"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.order_cancel_message.dissect,
  ["T"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.time_reference_message.dissect,
  ["P"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_short_message.dissect,
  ["r"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_long_message.dissect,
  ["2"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_extended_message.dissect,
  ["B"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trade_break_message.dissect,
  ["H"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.trading_status_message.dissect,
  ["I"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_update_message.dissect,
  ["3"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_update_message.dissect,
  ["J"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.auction_summary_message.dissect,
  ["4"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.extended_auction_summary_message.dissect,
  ["R"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.retail_price_improvement_message.dissect,
}

-- Dissect: Sequenced Message
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_header.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.timestamp.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: Alphanumeric
  index, sequenced_message_type = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = trim_right_spaces(buffer(index - 1, 1):string())

  -- Sequenced Message: Runtime Type with 17 branches
  index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.sequenced_data_packet, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_rejected_packet.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_accepted_packet.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.session.size + 
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequence_number.size

-- Display: Login Accepted Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.debug_packet = {}

-- Size: Debug Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.debug_packet.size =
  cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.text.size

-- Display: Debug Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.debug_packet, buffer(offset, 0))
    local index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.payload = {}

-- Dispatch: Payload
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.payload.dispatch = {
  ["+"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.debug_packet.dissect,
  ["A"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_accepted_packet.dissect,
  ["J"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_rejected_packet.dissect,
  ["S"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.sequenced_data_packet.dissect,
  ["L"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.login_request_packet.dissect,
  ["U"] = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.unsequenced_data_packet.dissect,
}

-- Dissect: Payload
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Frame
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.frame = {}

-- Display: Frame
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.frame.fields = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset

  -- Packet Type: 1 Byte Ascii String Enum with 9 values
  index, packet_type = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 6 branches
  index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.payload.dissect(buffer, index, packet, parent, packet_type)

  -- Soup Lf: 1 Byte Fixed Width Integer Static
  index, soup_lf = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.soup_lf.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.frame.dissect = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset + size_of_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.fields.frame, buffer(offset, 0))
    local current = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.frame.fields(buffer, offset, packet, parent, size_of_frame)
    parent:set_len(size_of_frame)
    local display = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.frame.fields(buffer, offset, packet, parent, size_of_frame)

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
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet = {}

-- Verify required size of Tcp packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet_type.size
end

-- Dissect Packet
cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet.dissect = function(buffer, packet, parent)
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
      index = cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.frame.dissect(frame, index, packet, parent, size_of_frame)
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
function omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.init()
end

-- Dissector for Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16
function omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16, buffer(), omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.description, "("..buffer:len().." Bytes)")
  return cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16 (Tcp)
local function omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16
  omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16
omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16:register_heuristic("tcp", omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16_tcp_heuristic)

-- Register Cboe BzxEquities TcpDepthOfBook AsciiPitch 1.15.16 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_bzxequities_tcpdepthofbook_asciipitch_v1_15_16)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.15.16
--   Since: 1.15.15
--   Date: Wednesday, September 9, 2026
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
