-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NomOptions Itto Itch 4.0.2025 Protocol
local omi_nasdaq_nomoptions_itto_itch_v4_0_2025 = Proto("Omi.Nasdaq.NomOptions.Itto.Itch.v4.0.2025", "Nasdaq NomOptions Itto Itch 4.0.2025")

-- Protocol table
local nasdaq_nomoptions_itto_itch_v4_0_2025 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NomOptions Itto Itch 4.0.2025 Fields
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nomoptions.itto.itch.v4.0.2025.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask = ProtoField.new("Ask", "nasdaq.nomoptions.itto.itch.v4.0.2025.ask", ftypes.UINT32, nil, nil, nil, "The display ask price of the new quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.nomoptions.itto.itch.v4.0.2025.askpricelong", ftypes.DOUBLE, nil, nil, nil, "The display ask price of the replaced quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.nomoptions.itto.itch.v4.0.2025.askpriceshort", ftypes.DOUBLE, nil, nil, nil, "The display ask price of the new quote. NOTE: When converted to a decimal format, this price is in fixed point format with 3 whole number places followed by 2 decimal digits.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask_reference_number = ProtoField.new("Ask Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.askreferencenumber", ftypes.UINT64, nil, nil, nil, "The ask reference number associated with the new quote")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.nomoptions.itto.itch.v4.0.2025.asksizelong", ftypes.UINT32, nil, nil, nil, "The ask contracts of the new quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask_size_short = ProtoField.new("Ask Size Short", "nasdaq.nomoptions.itto.itch.v4.0.2025.asksizeshort", ftypes.UINT16, nil, nil, nil, "The ask contracts of the new quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.nomoptions.itto.itch.v4.0.2025.auctionid", ftypes.UINT32, nil, nil, nil, "Uniquely identifies the Auction for the trading day.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.nomoptions.itto.itch.v4.0.2025.auctiontype", ftypes.STRING, nil, nil, nil, "Type of Auction:")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid = ProtoField.new("Bid", "nasdaq.nomoptions.itto.itch.v4.0.2025.bid", ftypes.UINT32, nil, nil, nil, "The display bid price of the new quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.nomoptions.itto.itch.v4.0.2025.bidpricelong", ftypes.DOUBLE, nil, nil, nil, "The display bid price of the replaced quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.nomoptions.itto.itch.v4.0.2025.bidpriceshort", ftypes.DOUBLE, nil, nil, nil, "The display bid price of the new quote. NOTE: When converted to a decimal format, this price is in fixed point format with 3 whole number places followed by 2 decimal digits.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid_reference_number = ProtoField.new("Bid Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.bidreferencenumber", ftypes.UINT64, nil, nil, nil, "The bid reference number associated with the new quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.nomoptions.itto.itch.v4.0.2025.bidsizelong", ftypes.UINT32, nil, nil, nil, "The bid contracts of the new quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid_size_short = ProtoField.new("Bid Size Short", "nasdaq.nomoptions.itto.itch.v4.0.2025.bidsizeshort", ftypes.UINT16, nil, nil, nil, "The bid contracts of the new quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nomoptions.itto.itch.v4.0.2025.buysellindicator", ftypes.STRING, nil, nil, nil, "The type of non-display order on the book being matched.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.cancelled_contracts = ProtoField.new("Cancelled Contracts", "nasdaq.nomoptions.itto.itch.v4.0.2025.cancelledcontracts", ftypes.UINT32, nil, nil, nil, "The number of contracts to be removed from the display size of the order as the result of a cancellation.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.nomoptions.itto.itch.v4.0.2025.changereason", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nomoptions.itto.itch.v4.0.2025.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.crossnumber", ftypes.UINT32, nil, nil, nil, "Trade Group Id. Ties together all trades of a given atomic transaction in the matching engine.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nomoptions.itto.itch.v4.0.2025.crosstype", ftypes.STRING, nil, nil, nil, "The NASDAQ auction session for which the message is being generated.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nomoptions.itto.itch.v4.0.2025.currenttradingstate", ftypes.STRING, nil, nil, nil, "Reflects the current trading state for the options security in the NASDAQ Options Market. The allowable values are:")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.customer_firm_indicator = ProtoField.new("Customer Firm Indicator", "nasdaq.nomoptions.itto.itch.v4.0.2025.customerfirmindicator", ftypes.STRING, nil, nil, nil, "For Order Exposure (AuctionType=I) only. Indicates the order capacity:")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.nomoptions.itto.itch.v4.0.2025.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.end_of_replay_sequence_number = ProtoField.new("End Of Replay Sequence Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.endofreplaysequencenumber", ftypes.STRING, nil, nil, nil, "Use this sequence number to resume on the real time Mold channel.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.event_code = ProtoField.new("Event Code", "nasdaq.nomoptions.itto.itch.v4.0.2025.eventcode", ftypes.STRING, nil, nil, nil, "Refer to System Event Codes below")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.executed_contracts = ProtoField.new("Executed Contracts", "nasdaq.nomoptions.itto.itch.v4.0.2025.executedcontracts", ftypes.UINT32, nil, nil, nil, "The number of contracts executed.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.nomoptions.itto.itch.v4.0.2025.expirationdate", ftypes.UINT8, nil, nil, nil, "Day of the Month of expiration (1-31)")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.nomoptions.itto.itch.v4.0.2025.expirationmonth", ftypes.UINT8, nil, nil, nil, "Expiration Month (1-12)")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.nomoptions.itto.itch.v4.0.2025.expirationyear", ftypes.UINT8, nil, nil, nil, "Last two digits of the year of the option expiration")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.nomoptions.itto.itch.v4.0.2025.explicitstrikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price. Refer to Data Types for field processing notes.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nomoptions.itto.itch.v4.0.2025.imbalancedirection", ftypes.STRING, nil, nil, nil, "Indicates the market side of the imbalance")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.nomoptions.itto.itch.v4.0.2025.imbalanceprice", ftypes.DOUBLE, nil, nil, nil, "The imbalance price. 0 for Price Improvement (PRISM) Auction")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.nomoptions.itto.itch.v4.0.2025.imbalancevolume", ftypes.UINT32, nil, nil, nil, "The imbalance volume.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.market_side = ProtoField.new("Market Side", "nasdaq.nomoptions.itto.itch.v4.0.2025.marketside", ftypes.STRING, nil, nil, nil, "The type of order being added.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.match_number = ProtoField.new("Match Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.matchnumber", ftypes.UINT32, nil, nil, nil, "Execution Id. Identifies the component of an execution. Unique for a given day. The match number is also referenced in the Trade Break Message.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_count = ProtoField.new("Message Count", "nasdaq.nomoptions.itto.itch.v4.0.2025.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_length = ProtoField.new("Message Length", "nasdaq.nomoptions.itto.itch.v4.0.2025.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_type = ProtoField.new("Message Type", "nasdaq.nomoptions.itto.itch.v4.0.2025.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.mpv = ProtoField.new("Mpv", "nasdaq.nomoptions.itto.itch.v4.0.2025.mpv", ftypes.STRING, nil, nil, nil, "Minimum Price Variation for this option. See Notes below for further explanation:")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.new_reference_number = ProtoField.new("New Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.newreferencenumber", ftypes.UINT64, nil, nil, nil, "The new reference number associated with the new order.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.open_state = ProtoField.new("Open State", "nasdaq.nomoptions.itto.itch.v4.0.2025.openstate", ftypes.STRING, nil, nil, nil, "The allowable values are:")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.option_id = ProtoField.new("Option Id", "nasdaq.nomoptions.itto.itch.v4.0.2025.optionid", ftypes.UINT32, nil, nil, nil, "Option ID assigned daily, valid for trading day.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.option_type = ProtoField.new("Option Type", "nasdaq.nomoptions.itto.itch.v4.0.2025.optiontype", ftypes.STRING)
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.options_closing_type = ProtoField.new("Options Closing Type", "nasdaq.nomoptions.itto.itch.v4.0.2025.optionsclosingtype", ftypes.STRING, nil, nil, nil, "Denotes which System Event is used to trigger the option closing process.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.orderreferencenumber", ftypes.UINT64, nil, nil, nil, "The unique reference number assigned to the new order. The order reference number is Increasing, but not necessarily sequential.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.original_ask_reference_number = ProtoField.new("Original Ask Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.originalaskreferencenumber", ftypes.UINT64, nil, nil, nil, "The original ask reference number that is replaced")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.original_bid_reference_number = ProtoField.new("Original Bid Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.originalbidreferencenumber", ftypes.UINT64, nil, nil, nil, "The original bid reference number that is replaced")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.original_reference_number = ProtoField.new("Original Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.originalreferencenumber", ftypes.UINT64, nil, nil, nil, "The original reference number associated with the order being replaced.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nomoptions.itto.itch.v4.0.2025.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.nomoptions.itto.itch.v4.0.2025.pairedcontracts", ftypes.UINT32, nil, nil, nil, "The total number of contracts that are eligible to be matched at the Current Reference Price. 0 for Price Improvement (PRISM) Auction.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.password = ProtoField.new("Password", "nasdaq.nomoptions.itto.itch.v4.0.2025.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.price_long = ProtoField.new("Price Long", "nasdaq.nomoptions.itto.itch.v4.0.2025.pricelong", ftypes.DOUBLE, nil, nil, nil, "The display price of the new order being added to the book.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.price_short = ProtoField.new("Price Short", "nasdaq.nomoptions.itto.itch.v4.0.2025.priceshort", ftypes.DOUBLE, nil, nil, nil, "The display price of the new order being added to the book. NOTE: When converted to a decimal format, this price is in fixed point format with 3 whole number places followed by 2 decimal digits.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.printable = ProtoField.new("Printable", "nasdaq.nomoptions.itto.itch.v4.0.2025.printable", ftypes.STRING, nil, nil, nil, "Indicates if the execution should be reflected on time and sale displays and volume calculations.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.reference_number = ProtoField.new("Reference Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.referencenumber", ftypes.UINT64, nil, nil, nil, "The order/quote reference number associated with the executed order.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nomoptions.itto.itch.v4.0.2025.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nomoptions.itto.itch.v4.0.2025.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.reserved_3 = ProtoField.new("Reserved 3", "nasdaq.nomoptions.itto.itch.v4.0.2025.reserved3", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.nomoptions.itto.itch.v4.0.2025.securitysymbol", ftypes.STRING, nil, nil, nil, "Denotes the security symbol.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nomoptions.itto.itch.v4.0.2025.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nomoptions.itto.itch.v4.0.2025.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.session = ProtoField.new("Session", "nasdaq.nomoptions.itto.itch.v4.0.2025.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.source = ProtoField.new("Source", "nasdaq.nomoptions.itto.itch.v4.0.2025.source", ftypes.UINT8, nil, nil, nil, "Identifies the source of the Option, valid for the trading day")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nomoptions.itto.itch.v4.0.2025.timestamp", ftypes.UINT64, nil, nil, nil, "Nanoseconds since midnight")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.trackingnumber", ftypes.UINT16, nil, nil, nil, "Nasdaq Internal tracking number")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.tradable = ProtoField.new("Tradable", "nasdaq.nomoptions.itto.itch.v4.0.2025.tradable", ftypes.STRING, nil, nil, nil, "Denotes whether or not this option is tradable at the exchange. The allowable values are:")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.nomoptions.itto.itch.v4.0.2025.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Denotes the unique symbol assigned to the underlying security within exchange.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "The unsequenced (client to server) message carried by the packet, opaque bytes unless an application source dispatches it")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nomoptions.itto.itch.v4.0.2025.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.username = ProtoField.new("Username", "nasdaq.nomoptions.itto.itch.v4.0.2025.username", ftypes.STRING, nil, nil, nil, "Session username")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.volume_long = ProtoField.new("Volume Long", "nasdaq.nomoptions.itto.itch.v4.0.2025.volumelong", ftypes.UINT32, nil, nil, nil, "The total number of contracts of the new order being added to the book.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.volume_short = ProtoField.new("Volume Short", "nasdaq.nomoptions.itto.itch.v4.0.2025.volumeshort", ftypes.UINT16, nil, nil, nil, "The total number of contracts of the new order being added to the book.")

-- Nasdaq NomOptions Itto Itch 4.0.2025 Framing
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.client_packet = ProtoField.new("Tcp Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.client_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.nomoptions.itto.itch.v4.0.2025.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message = ProtoField.new("Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_header = ProtoField.new("Message Header", "nasdaq.nomoptions.itto.itch.v4.0.2025.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.packet = ProtoField.new("Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nomoptions.itto.itch.v4.0.2025.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.server_packet = ProtoField.new("Tcp Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.server_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.nomoptions.itto.itch.v4.0.2025.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Nasdaq NomOptions Itto 4.0.2025 Application Messages
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.add_order_message_long_form_message = ProtoField.new("Add Order Message Long Form Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.addordermessagelongformmessage", ftypes.STRING, nil, nil, nil, "For bandwidth efficiency reasons, this message can be published in either short or long format.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.add_order_message_short_message_form = ProtoField.new("Add Order Message Short Message Form", "nasdaq.nomoptions.itto.itch.v4.0.2025.addordermessageshortmessageform", ftypes.STRING, nil, nil, nil, "For bandwidth efficiency reasons, this message can be published in either short or long format.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.add_quote_message_long_form_message = ProtoField.new("Add Quote Message Long Form Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.addquotemessagelongformmessage", ftypes.STRING, nil, nil, nil, "For bandwidth efficiency reasons, this message can be published in either short or long format.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.add_quote_message_short_form_message = ProtoField.new("Add Quote Message Short Form Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.addquotemessageshortformmessage", ftypes.STRING, nil, nil, nil, "For bandwidth efficiency reasons, this message can be published in either short or long format.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.broken_trade_order_executed_message = ProtoField.new("Broken Trade Order Executed Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.brokentradeorderexecutedmessage", ftypes.STRING, nil, nil, nil, "The Broken Trade Message is sent whenever an execution on NASDAQ is broken. An execution may be broken if it is found to be “clearly erroneous” pursuant to NASDAQ’s Clearly Erroneous Policy. A trade break is final; once a trade is broken, it cannot be reinstated.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.end_of_replay_sequence_message = ProtoField.new("End Of Replay Sequence Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.endofreplaysequencemessage", ftypes.STRING, nil, nil, nil, "The End of replay Sequence message reflects the sequence number at the time replay of existing messages is complete. The firms can then use this sequence number to resume on the real time Mold channel.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.noii_message = ProtoField.new("Noii Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.noiimessage", ftypes.STRING, nil, nil, nil, "For the NASDAQ Opening Auction, NASDAQ will begin the dissemination of NOII messages for a put or a call option five minutes prior to the start of opening process event and two minutes prior to the halt resumption (reopening) process event.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.optionscrosstrademessage", ftypes.STRING, nil, nil, nil, "This message will also be used to report all executions within a price improvement (PRISM) auction.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.optionsdirectorymessage", ftypes.STRING, nil, nil, nil, "At the start of each trading day, NASDAQ disseminates options symbol directory messages for all active options symbols in the NASDAQ option system.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.options_trade_messages_non_auction = ProtoField.new("Options Trade Messages Non Auction", "nasdaq.nomoptions.itto.itch.v4.0.2025.optionstrademessagesnonauction", ftypes.STRING, nil, nil, nil, "This Options Trade Message is designed to provide execution details for normal match events involving non-displayable order types. (Note: There is a separate message for NASDAQ Option auction events.)")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.ordercancelmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is modified as a result of a partial cancellation.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.quotedeletemessage", ftypes.STRING, nil, nil, nil, "The message is sent when a single quote is being cancelled. All remaining contracts are no longer accessible so the quote should be removed from the book.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.quote_replace_message_long_form = ProtoField.new("Quote Replace Message Long Form", "nasdaq.nomoptions.itto.itch.v4.0.2025.quotereplacemessagelongform", ftypes.STRING, nil, nil, nil, "This message is sent whenever a quote on the book is replaced. The replaced quote has new sequence numbers on both sides. These new sequence numbers replace the prior sequence numbers on the quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.quote_replace_message_short_form = ProtoField.new("Quote Replace Message Short Form", "nasdaq.nomoptions.itto.itch.v4.0.2025.quotereplacemessageshortform", ftypes.STRING, nil, nil, nil, "This message is sent whenever a quote on the book is replaced. The replaced quote has new sequence numbers on both sides. These new sequence numbers replace the prior sequence numbers on the quote.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.securityopenmessage", ftypes.STRING, nil, nil, nil, "NASDAQ plans to disseminate the Option Open Message for each option as soon as the opening is completed. Upon receipt of the open state message, firms should be advised that the option denoted in the message is now available for auto execution within the NASDAQ Options Market System. Upon receipt of the closed state message, firms should be advised that the option is no longer eligible for auto-execution within the NASDAQ Options Market System.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_change_message = ProtoField.new("Single Side Change Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.singlesidechangemessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order or a side of a quote is being updated for price and (or) contracts. The reference number associated with the order quote is unchanged.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.singlesidedeletemessage", ftypes.STRING, nil, nil, nil, "The message is sent when an order or a side of a quote is being cancelled. All remaining contracts are no longer accessible so the side should be removed from the book.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.singlesideexecutedmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever a Side order is executed in whole or in part. It is possible to receive several Single Side Executed Messages for the same Side order if that Side order is executed in several parts. The multiple Single Side Executed Messages on the same order are cumulative. By combining the executions received separately via two types of Single Side Executed Messages and Trade Messages, it is possible to build a complete view of all non-auction executions that happen on NASDAQ. Auction execution information is available in one bulk print via the Auction Trade Message.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.singlesideexecutedwithpricemessage", ftypes.STRING, nil, nil, nil, "These executions may be marked as non-printable. If the execution is marked as non-printed, it means that the contracts will be included into a later bulk print (e.g., in the case of auction executions). If a firm is looking to use the ITTO data in time-and-sales displays or volume calculations, NASDAQ recommends that firms ignore messages marked as non-printable to prevent double counting.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_replace_message_long_form = ProtoField.new("Single Side Replace Message Long Form", "nasdaq.nomoptions.itto.itch.v4.0.2025.singlesidereplacemessagelongform", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order or one side of a quote on the book is replaced. The replacement has a new sequence number and replaces the prior sequence number.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_replace_message_short_form = ProtoField.new("Single Side Replace Message Short Form", "nasdaq.nomoptions.itto.itch.v4.0.2025.singlesidereplacemessageshortform", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order or one side of a quote on the book is replaced. The replacement has a new sequence number and replaces the prior sequence number.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.systemeventmessage", ftypes.STRING, nil, nil, nil, "The system event message type is used to signal a market or data feed handler event.")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.nomoptions.itto.itch.v4.0.2025.tradingactionmessage", ftypes.STRING, nil, nil, nil, "After the start of system hours, NASDAQ will use the Trading Action message to relay changes in trading status for an individual option. Messages will be sent when an option is halted, is released for quotation, released for trading, or temporarily suspended for trading on the buy or sell side.")

-- Nasdaq NomOptions Itto 4.0.2025 Session Messages
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.client_heartbeat_packet = ProtoField.new("Client Heartbeat Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.clientheartbeatpacket", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nomoptions.itto.itch.v4.0.2025.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.end_of_session_packet = ProtoField.new("End Of Session Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.endofsessionpacket", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server signals end of session; client may now disconnect. Carries no payload")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nomoptions.itto.itch.v4.0.2025.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.logout_request_packet = ProtoField.new("Logout Request Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.logoutrequestpacket", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.server_heartbeat_packet = ProtoField.new("Server Heartbeat Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.serverheartbeatpacket", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nomoptions.itto.itch.v4.0.2025.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Nasdaq NomOptions Itto Itch 4.0.2025 Generated Fields
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_index = ProtoField.new("Message Index", "nasdaq.nomoptions.itto.itch.v4.0.2025.messageindex", ftypes.UINT16)
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nomoptions.itto.itch.v4.0.2025.sequenceddatapacketsequencenumber", ftypes.UINT64)

-- Nasdaq NomOptions Itto Itch 4.0.2025 Expert Info
nasdaq_nomoptions_itto_itch_v4_0_2025.experts = {}
nasdaq_nomoptions_itto_itch_v4_0_2025.experts.not_a_number = ProtoExpert.new("nasdaq.nomoptions.itto.itch.v4.0.2025.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.experts = { nasdaq_nomoptions_itto_itch_v4_0_2025.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq NomOptions Itto Itch 4.0.2025 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp_format = 2

-- Hours behind UTC (America/New_York) for midnight calculation
nasdaq_nomoptions_itto_itch_v4_0_2025.utc_offset_hours = 5

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

-- Nasdaq NomOptions Itto Itch 4.0.2025 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NomOptions Itto Itch 4.0.2025 Show Options
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (America/New_York) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_headers then
    show.headers = omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_structs then
    show.structs = omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_indexes then
    show.indexes = omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_sequences then
    show.sequences = omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.show_sequences
  end
  if nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp_format ~= omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.timestamp_format then
    nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp_format = omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.timestamp_format
  end
  if nasdaq_nomoptions_itto_itch_v4_0_2025.utc_offset_hours ~= omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.utc_offset_hours then
    nasdaq_nomoptions_itto_itch_v4_0_2025.utc_offset_hours = omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nomoptions_itto_itch_v4_0_2025.conversation = {}
nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_nomoptions_itto_itch_v4_0_2025.stream_frame = nil
nasdaq_nomoptions_itto_itch_v4_0_2025.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.data = function(packet)
  local key = nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.key(packet)
  local data = nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.current = nil


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
-- Nasdaq NomOptions Itto Itch 4.0.2025 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nomoptions_itto_itch_v4_0_2025.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_session = {}

-- Size: Accepted Session
nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Ask
nasdaq_nomoptions_itto_itch_v4_0_2025.ask = {}

-- Size: Ask
nasdaq_nomoptions_itto_itch_v4_0_2025.ask.size = 4

-- Display: Ask
nasdaq_nomoptions_itto_itch_v4_0_2025.ask.display = function(value)
  return "Ask: "..value
end

-- Dissect: Ask
nasdaq_nomoptions_itto_itch_v4_0_2025.ask.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.ask.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask, range, value, display)

  return offset + length, value
end

-- Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_long = {}

-- Size: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_long.size = 4

-- Display: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Translate: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Ask Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_long.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short = {}

-- Size: Ask Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.size = 2

-- Display: Ask Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Ask Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number = {}

-- Size: Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.size = 8

-- Display: Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.display = function(value)
  return "Ask Reference Number: "..value
end

-- Dissect: Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask_reference_number, range, value, display)

  return offset + length, value
end

-- Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_long = {}

-- Size: Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_long.size = 4

-- Display: Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_long.display = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Ask Size Short
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_short = {}

-- Size: Ask Size Short
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_short.size = 2

-- Display: Ask Size Short
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_short.display = function(value)
  return "Ask Size Short: "..value
end

-- Dissect: Ask Size Short
nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.ask_size_short, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_nomoptions_itto_itch_v4_0_2025.auction_id = {}

-- Size: Auction Id
nasdaq_nomoptions_itto_itch_v4_0_2025.auction_id.size = 4

-- Display: Auction Id
nasdaq_nomoptions_itto_itch_v4_0_2025.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_nomoptions_itto_itch_v4_0_2025.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_nomoptions_itto_itch_v4_0_2025.auction_type = {}

-- Size: Auction Type
nasdaq_nomoptions_itto_itch_v4_0_2025.auction_type.size = 1

-- Display: Auction Type
nasdaq_nomoptions_itto_itch_v4_0_2025.auction_type.labels = {
  ["O"] = "Auction Type: Opening (O)",
  ["R"] = "Auction Type: Reopening (R)",
  ["P"] = "Auction Type: Price Improvement (P)",
  ["I"] = "Auction Type: Exposure (I)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.auction_type.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.auction_type.labels[value] or "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_nomoptions_itto_itch_v4_0_2025.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bid
nasdaq_nomoptions_itto_itch_v4_0_2025.bid = {}

-- Size: Bid
nasdaq_nomoptions_itto_itch_v4_0_2025.bid.size = 4

-- Display: Bid
nasdaq_nomoptions_itto_itch_v4_0_2025.bid.display = function(value)
  return "Bid: "..value
end

-- Dissect: Bid
nasdaq_nomoptions_itto_itch_v4_0_2025.bid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.bid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid, range, value, display)

  return offset + length, value
end

-- Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_long = {}

-- Size: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_long.size = 4

-- Display: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_long.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short = {}

-- Size: Bid Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.size = 2

-- Display: Bid Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number = {}

-- Size: Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.size = 8

-- Display: Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.display = function(value)
  return "Bid Reference Number: "..value
end

-- Dissect: Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid_reference_number, range, value, display)

  return offset + length, value
end

-- Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_long = {}

-- Size: Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_long.size = 4

-- Display: Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Bid Size Short
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_short = {}

-- Size: Bid Size Short
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_short.size = 2

-- Display: Bid Size Short
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0_2025.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0_2025.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0_2025.buy_sell_indicator.labels = {
  ["B"] = "Buy Sell Indicator: Buy (B)",
  ["S"] = "Buy Sell Indicator: Sell (S)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.buy_sell_indicator.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nomoptions_itto_itch_v4_0_2025.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.cancelled_contracts = {}

-- Size: Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.cancelled_contracts.size = 4

-- Display: Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.cancelled_contracts.display = function(value)
  return "Cancelled Contracts: "..value
end

-- Dissect: Cancelled Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.cancelled_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.cancelled_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.cancelled_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.cancelled_contracts, range, value, display)

  return offset + length, value
end

-- Change Reason
nasdaq_nomoptions_itto_itch_v4_0_2025.change_reason = {}

-- Size: Change Reason
nasdaq_nomoptions_itto_itch_v4_0_2025.change_reason.size = 1

-- Display: Change Reason
nasdaq_nomoptions_itto_itch_v4_0_2025.change_reason.labels = {
  ["U"] = "Change Reason: User (U)",
  ["R"] = "Change Reason: Reprice (R)",
  ["S"] = "Change Reason: Suspend (S)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.change_reason.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.change_reason.labels[value] or "Change Reason: Unknown("..value..")"
end

-- Dissect: Change Reason
nasdaq_nomoptions_itto_itch_v4_0_2025.change_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.change_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_type.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Cross Number
nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number = {}

-- Size: Cross Number
nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.size = 4

-- Display: Cross Number
nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.display = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nomoptions_itto_itch_v4_0_2025.cross_type = {}

-- Size: Cross Type
nasdaq_nomoptions_itto_itch_v4_0_2025.cross_type.size = 1

-- Display: Cross Type
nasdaq_nomoptions_itto_itch_v4_0_2025.cross_type.labels = {
  ["O"] = "Cross Type: Nasdaq Opening Reopening (O)",
  ["P"] = "Cross Type: Price Improvement (P)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.cross_type.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nomoptions_itto_itch_v4_0_2025.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_nomoptions_itto_itch_v4_0_2025.current_trading_state = {}

-- Size: Current Trading State
nasdaq_nomoptions_itto_itch_v4_0_2025.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_nomoptions_itto_itch_v4_0_2025.current_trading_state.labels = {
  ["H"] = "Current Trading State: Halt (H)",
  ["T"] = "Current Trading State: Trading (T)",
  ["B"] = "Current Trading State: Buy Side Trading Suspended (B)",
  ["S"] = "Current Trading State: Sell Side Trading Suspended (S)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.current_trading_state.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.current_trading_state.labels[value] or "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_nomoptions_itto_itch_v4_0_2025.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Customer Firm Indicator
nasdaq_nomoptions_itto_itch_v4_0_2025.customer_firm_indicator = {}

-- Size: Customer Firm Indicator
nasdaq_nomoptions_itto_itch_v4_0_2025.customer_firm_indicator.size = 1

-- Display: Customer Firm Indicator
nasdaq_nomoptions_itto_itch_v4_0_2025.customer_firm_indicator.labels = {
  ["C"] = "Customer Firm Indicator: Customer (C)",
  ["F"] = "Customer Firm Indicator: Firm Joint (F)",
  ["M"] = "Customer Firm Indicator: Onfloor (M)",
  ["P"] = "Customer Firm Indicator: Professional (P)",
  ["B"] = "Customer Firm Indicator: Broker Dealer Non Registered (B)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.customer_firm_indicator.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.customer_firm_indicator.labels[value] or "Customer Firm Indicator: Unknown("..value..")"
end

-- Dissect: Customer Firm Indicator
nasdaq_nomoptions_itto_itch_v4_0_2025.customer_firm_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.customer_firm_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.customer_firm_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.customer_firm_indicator, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_nomoptions_itto_itch_v4_0_2025.debug_text = {}

-- Display: Debug Text
nasdaq_nomoptions_itto_itch_v4_0_2025.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_nomoptions_itto_itch_v4_0_2025.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.debug_text, range, value, display)

  return offset + size, value
end

-- End Of Replay Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_number = {}

-- Size: End Of Replay Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_number.size = 20

-- Display: End Of Replay Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_number.display = function(value)
  return "End Of Replay Sequence Number: "..value
end

-- Dissect: End Of Replay Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.end_of_replay_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nomoptions_itto_itch_v4_0_2025.event_code = {}

-- Size: Event Code
nasdaq_nomoptions_itto_itch_v4_0_2025.event_code.size = 1

-- Display: Event Code
nasdaq_nomoptions_itto_itch_v4_0_2025.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["Q"] = "Event Code: Start Of Opening Process (Q)",
  ["N"] = "Event Code: End Of Normal Hours Processing (N)",
  ["L"] = "Event Code: End Of Late Hours Processing (L)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Messages (C)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.event_code.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nomoptions_itto_itch_v4_0_2025.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.executed_contracts = {}

-- Size: Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.executed_contracts.size = 4

-- Display: Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.executed_contracts.display = function(value)
  return "Executed Contracts: "..value
end

-- Dissect: Executed Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.executed_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.executed_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.executed_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.executed_contracts, range, value, display)

  return offset + length, value
end

-- Expiration Date
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_date = {}

-- Size: Expiration Date
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_date.size = 1

-- Display: Expiration Date
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_month = {}

-- Size: Expiration Month
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_year = {}

-- Size: Expiration Year
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0_2025.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0_2025.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0_2025.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0_2025.explicit_strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Explicit Strike Price
nasdaq_nomoptions_itto_itch_v4_0_2025.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0_2025.explicit_strike_price.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_direction.labels = {
  ["B"] = "Imbalance Direction: Buy (B)",
  ["S"] = "Imbalance Direction: Sell (S)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_direction.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_direction.labels[value] or "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_price = {}

-- Size: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_price.size = 4

-- Display: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_price.display = function(value)
  return "Imbalance Price: "..value
end

-- Translate: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Imbalance Price
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_price.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.imbalance_price, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_volume = {}

-- Size: Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Market Side
nasdaq_nomoptions_itto_itch_v4_0_2025.market_side = {}

-- Size: Market Side
nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.size = 1

-- Display: Market Side
nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.labels = {
  ["B"] = "Market Side: Buy (B)",
  ["S"] = "Market Side: Sell (S)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.labels[value] or "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.market_side, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nomoptions_itto_itch_v4_0_2025.match_number = {}

-- Size: Match Number
nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.size = 4

-- Display: Match Number
nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nomoptions_itto_itch_v4_0_2025.message_count = {}

-- Size: Message Count
nasdaq_nomoptions_itto_itch_v4_0_2025.message_count.size = 2

-- Display: Message Count
nasdaq_nomoptions_itto_itch_v4_0_2025.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nomoptions_itto_itch_v4_0_2025.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nomoptions_itto_itch_v4_0_2025.message_length = {}

-- Size: Message Length
nasdaq_nomoptions_itto_itch_v4_0_2025.message_length.size = 2

-- Display: Message Length
nasdaq_nomoptions_itto_itch_v4_0_2025.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nomoptions_itto_itch_v4_0_2025.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.message_type = {}

-- Size: Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.message_type.size = 1

-- Display: Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.message_type.labels = {
  ["S"] = "Message Type: System Event Message (S)",
  ["R"] = "Message Type: Options Directory Message (R)",
  ["H"] = "Message Type: Trading Action Message (H)",
  ["O"] = "Message Type: Security Open Message (O)",
  ["a"] = "Message Type: Add Order Message Short Message Form (a)",
  ["A"] = "Message Type: Add Order Message Long Form Message (A)",
  ["j"] = "Message Type: Add Quote Message Short Form Message (j)",
  ["J"] = "Message Type: Add Quote Message Long Form Message (J)",
  ["E"] = "Message Type: Single Side Executed Message (E)",
  ["C"] = "Message Type: Single Side Executed With Price Message (C)",
  ["X"] = "Message Type: Order Cancel Message (X)",
  ["u"] = "Message Type: Single Side Replace Message Short Form (u)",
  ["U"] = "Message Type: Single Side Replace Message Long Form (U)",
  ["D"] = "Message Type: Single Side Delete Message (D)",
  ["G"] = "Message Type: Single Side Change Message (G)",
  ["k"] = "Message Type: Quote Replace Message Short Form (k)",
  ["K"] = "Message Type: Quote Replace Message Long Form (K)",
  ["Y"] = "Message Type: Quote Delete Message (Y)",
  ["P"] = "Message Type: Options Trade Messages Non Auction (P)",
  ["Q"] = "Message Type: Options Cross Trade Message (Q)",
  ["B"] = "Message Type: Broken Trade Order Executed Message (B)",
  ["I"] = "Message Type: Noii Message (I)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.message_type.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_nomoptions_itto_itch_v4_0_2025.mpv = {}

-- Size: Mpv
nasdaq_nomoptions_itto_itch_v4_0_2025.mpv.size = 1

-- Display: Mpv
nasdaq_nomoptions_itto_itch_v4_0_2025.mpv.labels = {
  ["E"] = "Mpv: Everywhere (E)",
  ["S"] = "Mpv: Scaled (S)",
  ["P"] = "Mpv: Pilot (P)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.mpv.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.mpv.labels[value] or "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
nasdaq_nomoptions_itto_itch_v4_0_2025.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.mpv, range, value, display)

  return offset + length, value
end

-- New Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.new_reference_number = {}

-- Size: New Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.new_reference_number.size = 8

-- Display: New Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.new_reference_number.display = function(value)
  return "New Reference Number: "..value
end

-- Dissect: New Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.new_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.new_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.new_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.new_reference_number, range, value, display)

  return offset + length, value
end

-- Open State
nasdaq_nomoptions_itto_itch_v4_0_2025.open_state = {}

-- Size: Open State
nasdaq_nomoptions_itto_itch_v4_0_2025.open_state.size = 1

-- Display: Open State
nasdaq_nomoptions_itto_itch_v4_0_2025.open_state.labels = {
  ["Y"] = "Open State: Open (Y)",
  ["N"] = "Open State: Closed (N)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.open_state.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.open_state.labels[value] or "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_nomoptions_itto_itch_v4_0_2025.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.open_state, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_nomoptions_itto_itch_v4_0_2025.option_id = {}

-- Size: Option Id
nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size = 4

-- Display: Option Id
nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_nomoptions_itto_itch_v4_0_2025.option_type = {}

-- Size: Option Type
nasdaq_nomoptions_itto_itch_v4_0_2025.option_type.size = 1

-- Display: Option Type
nasdaq_nomoptions_itto_itch_v4_0_2025.option_type.labels = {
  ["C"] = "Option Type: Call (C)",
  ["P"] = "Option Type: Put (P)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.option_type.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_nomoptions_itto_itch_v4_0_2025.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.option_type, range, value, display)

  return offset + length, value
end

-- Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0_2025.options_closing_type = {}

-- Size: Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0_2025.options_closing_type.size = 1

-- Display: Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0_2025.options_closing_type.labels = {
  ["N"] = "Options Closing Type: Normal (N)",
  ["L"] = "Options Closing Type: Late (L)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.options_closing_type.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.options_closing_type.labels[value] or "Options Closing Type: Unknown("..value..")"
end

-- Dissect: Options Closing Type
nasdaq_nomoptions_itto_itch_v4_0_2025.options_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.options_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.options_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.options_closing_type, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_ask_reference_number = {}

-- Size: Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_ask_reference_number.size = 8

-- Display: Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_ask_reference_number.display = function(value)
  return "Original Ask Reference Number: "..value
end

-- Dissect: Original Ask Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_ask_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.original_ask_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.original_ask_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.original_ask_reference_number, range, value, display)

  return offset + length, value
end

-- Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_bid_reference_number = {}

-- Size: Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_bid_reference_number.size = 8

-- Display: Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_bid_reference_number.display = function(value)
  return "Original Bid Reference Number: "..value
end

-- Dissect: Original Bid Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_bid_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.original_bid_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.original_bid_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.original_bid_reference_number, range, value, display)

  return offset + length, value
end

-- Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_reference_number = {}

-- Size: Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_reference_number.size = 8

-- Display: Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_reference_number.display = function(value)
  return "Original Reference Number: "..value
end

-- Dissect: Original Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.original_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.original_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.original_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.original_reference_number, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nomoptions_itto_itch_v4_0_2025.packet_length = {}

-- Size: Packet Length
nasdaq_nomoptions_itto_itch_v4_0_2025.packet_length.size = 2

-- Display: Packet Length
nasdaq_nomoptions_itto_itch_v4_0_2025.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nomoptions_itto_itch_v4_0_2025.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.paired_contracts = {}

-- Size: Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.paired_contracts.size = 4

-- Display: Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.paired_contracts.display = function(value)
  return "Paired Contracts: "..value
end

-- Dissect: Paired Contracts
nasdaq_nomoptions_itto_itch_v4_0_2025.paired_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.paired_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.paired_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.paired_contracts, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nomoptions_itto_itch_v4_0_2025.password = {}

-- Size: Password
nasdaq_nomoptions_itto_itch_v4_0_2025.password.size = 10

-- Display: Password
nasdaq_nomoptions_itto_itch_v4_0_2025.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nomoptions_itto_itch_v4_0_2025.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.price_long = {}

-- Size: Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.size = 4

-- Display: Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Long
nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.price_short = {}

-- Size: Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.size = 2

-- Display: Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Short
nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.translate(raw)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.price_short, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_nomoptions_itto_itch_v4_0_2025.printable = {}

-- Size: Printable
nasdaq_nomoptions_itto_itch_v4_0_2025.printable.size = 1

-- Display: Printable
nasdaq_nomoptions_itto_itch_v4_0_2025.printable.labels = {
  ["N"] = "Printable: Nonprintable (N)",
  ["Y"] = "Printable: Printable (Y)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.printable.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.printable.labels[value] or "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_nomoptions_itto_itch_v4_0_2025.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.printable, range, value, display)

  return offset + length, value
end

-- Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number = {}

-- Size: Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.size = 8

-- Display: Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.display = function(value)
  return "Reference Number: "..value
end

-- Dissect: Reference Number
nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.reference_number, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nomoptions_itto_itch_v4_0_2025.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nomoptions_itto_itch_v4_0_2025.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nomoptions_itto_itch_v4_0_2025.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.reject_reason_code.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_nomoptions_itto_itch_v4_0_2025.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nomoptions_itto_itch_v4_0_2025.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nomoptions_itto_itch_v4_0_2025.requested_session = {}

-- Size: Requested Session
nasdaq_nomoptions_itto_itch_v4_0_2025.requested_session.size = 10

-- Display: Requested Session
nasdaq_nomoptions_itto_itch_v4_0_2025.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nomoptions_itto_itch_v4_0_2025.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 3
nasdaq_nomoptions_itto_itch_v4_0_2025.reserved_3 = {}

-- Size: Reserved 3
nasdaq_nomoptions_itto_itch_v4_0_2025.reserved_3.size = 3

-- Display: Reserved 3
nasdaq_nomoptions_itto_itch_v4_0_2025.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nasdaq_nomoptions_itto_itch_v4_0_2025.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_nomoptions_itto_itch_v4_0_2025.security_symbol = {}

-- Size: Security Symbol
nasdaq_nomoptions_itto_itch_v4_0_2025.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_nomoptions_itto_itch_v4_0_2025.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_nomoptions_itto_itch_v4_0_2025.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.sequence_number = {}

-- Size: Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nomoptions_itto_itch_v4_0_2025.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message_type.labels = {
  ["S"] = "Sequenced Message Type: System Event Message (S)",
  ["R"] = "Sequenced Message Type: Options Directory Message (R)",
  ["H"] = "Sequenced Message Type: Trading Action Message (H)",
  ["O"] = "Sequenced Message Type: Security Open Message (O)",
  ["a"] = "Sequenced Message Type: Add Order Message Short Message Form (a)",
  ["A"] = "Sequenced Message Type: Add Order Message Long Form Message (A)",
  ["j"] = "Sequenced Message Type: Add Quote Message Short Form Message (j)",
  ["J"] = "Sequenced Message Type: Add Quote Message Long Form Message (J)",
  ["E"] = "Sequenced Message Type: Single Side Executed Message (E)",
  ["C"] = "Sequenced Message Type: Single Side Executed With Price Message (C)",
  ["X"] = "Sequenced Message Type: Order Cancel Message (X)",
  ["u"] = "Sequenced Message Type: Single Side Replace Message Short Form (u)",
  ["U"] = "Sequenced Message Type: Single Side Replace Message Long Form (U)",
  ["D"] = "Sequenced Message Type: Single Side Delete Message (D)",
  ["G"] = "Sequenced Message Type: Single Side Change Message (G)",
  ["k"] = "Sequenced Message Type: Quote Replace Message Short Form (k)",
  ["K"] = "Sequenced Message Type: Quote Replace Message Long Form (K)",
  ["Y"] = "Sequenced Message Type: Quote Delete Message (Y)",
  ["P"] = "Sequenced Message Type: Options Trade Messages Non Auction (P)",
  ["Q"] = "Sequenced Message Type: Options Cross Trade Message (Q)",
  ["B"] = "Sequenced Message Type: Broken Trade Order Executed Message (B)",
  ["I"] = "Sequenced Message Type: Noii Message (I)",
  ["M"] = "Sequenced Message Type: End Of Replay Sequence Message (M)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message_type.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_type.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nomoptions_itto_itch_v4_0_2025.session = {}

-- Size: Session
nasdaq_nomoptions_itto_itch_v4_0_2025.session.size = 10

-- Display: Session
nasdaq_nomoptions_itto_itch_v4_0_2025.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nomoptions_itto_itch_v4_0_2025.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.session.size
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

  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.session, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_nomoptions_itto_itch_v4_0_2025.source = {}

-- Size: Source
nasdaq_nomoptions_itto_itch_v4_0_2025.source.size = 1

-- Display: Source
nasdaq_nomoptions_itto_itch_v4_0_2025.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_nomoptions_itto_itch_v4_0_2025.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.source, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp = {}

-- Size: Timestamp
nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size = 6

-- Display: Timestamp
nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nomoptions_itto_itch_v4_0_2025.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number = {}

-- Size: Tracking Number
nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_nomoptions_itto_itch_v4_0_2025.tradable = {}

-- Size: Tradable
nasdaq_nomoptions_itto_itch_v4_0_2025.tradable.size = 1

-- Display: Tradable
nasdaq_nomoptions_itto_itch_v4_0_2025.tradable.labels = {
  ["N"] = "Tradable: Not Tradable (N)",
  ["Y"] = "Tradable: Is Tradable (Y)",
}

nasdaq_nomoptions_itto_itch_v4_0_2025.tradable.display = function(value)
  return nasdaq_nomoptions_itto_itch_v4_0_2025.tradable.labels[value] or "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_nomoptions_itto_itch_v4_0_2025.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.tradable, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0_2025.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0_2025.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0_2025.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_nomoptions_itto_itch_v4_0_2025.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nomoptions_itto_itch_v4_0_2025.username = {}

-- Size: Username
nasdaq_nomoptions_itto_itch_v4_0_2025.username.size = 6

-- Display: Username
nasdaq_nomoptions_itto_itch_v4_0_2025.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nomoptions_itto_itch_v4_0_2025.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.username, range, value, display)

  return offset + length, value
end

-- Volume Long
nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long = {}

-- Size: Volume Long
nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.size = 4

-- Display: Volume Long
nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.display = function(value)
  return "Volume Long: "..value
end

-- Dissect: Volume Long
nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.volume_long, range, value, display)

  return offset + length, value
end

-- Volume Short
nasdaq_nomoptions_itto_itch_v4_0_2025.volume_short = {}

-- Size: Volume Short
nasdaq_nomoptions_itto_itch_v4_0_2025.volume_short.size = 2

-- Display: Volume Short
nasdaq_nomoptions_itto_itch_v4_0_2025.volume_short.display = function(value)
  return "Volume Short: "..value
end

-- Dissect: Volume Short
nasdaq_nomoptions_itto_itch_v4_0_2025.volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.volume_short, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NomOptions Itto Itch 4.0.2025
-----------------------------------------------------------------------

-- Noii Message
nasdaq_nomoptions_itto_itch_v4_0_2025.noii_message = {}

-- Size: Noii Message
nasdaq_nomoptions_itto_itch_v4_0_2025.noii_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.auction_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.auction_type.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.paired_contracts.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_direction.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_price.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_volume.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.customer_firm_indicator.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.reserved_3.size

-- Display: Noii Message
nasdaq_nomoptions_itto_itch_v4_0_2025.noii_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Noii Message
nasdaq_nomoptions_itto_itch_v4_0_2025.noii_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_nomoptions_itto_itch_v4_0_2025.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_nomoptions_itto_itch_v4_0_2025.auction_type.dissect(buffer, index, packet, parent)

  -- Paired Contracts: Integer
  index, paired_contracts = nasdaq_nomoptions_itto_itch_v4_0_2025.paired_contracts.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect(buffer, index, packet, parent)

  -- Imbalance Price: Integer
  index, imbalance_price = nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_price.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: Integer
  index, imbalance_volume = nasdaq_nomoptions_itto_itch_v4_0_2025.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: Alpha
  index, customer_firm_indicator = nasdaq_nomoptions_itto_itch_v4_0_2025.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_nomoptions_itto_itch_v4_0_2025.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Noii Message
nasdaq_nomoptions_itto_itch_v4_0_2025.noii_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.noii_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.noii_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.noii_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.noii_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0_2025.broken_trade_order_executed_message = {}

-- Size: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0_2025.broken_trade_order_executed_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.size

-- Display: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0_2025.broken_trade_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0_2025.broken_trade_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Order Executed Message
nasdaq_nomoptions_itto_itch_v4_0_2025.broken_trade_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.broken_trade_order_executed_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.broken_trade_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.broken_trade_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.broken_trade_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0_2025.options_cross_trade_message = {}

-- Size: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0_2025.options_cross_trade_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.cross_type.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.size

-- Display: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0_2025.options_cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0_2025.options_cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nomoptions_itto_itch_v4_0_2025.cross_type.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
nasdaq_nomoptions_itto_itch_v4_0_2025.options_cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.options_cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.options_cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.options_cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.options_cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0_2025.options_trade_messages_non_auction = {}

-- Size: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0_2025.options_trade_messages_non_auction.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.buy_sell_indicator.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.size

-- Display: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0_2025.options_trade_messages_non_auction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0_2025.options_trade_messages_non_auction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nomoptions_itto_itch_v4_0_2025.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Messages Non Auction
nasdaq_nomoptions_itto_itch_v4_0_2025.options_trade_messages_non_auction.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.options_trade_messages_non_auction, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.options_trade_messages_non_auction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.options_trade_messages_non_auction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.options_trade_messages_non_auction.fields(buffer, offset, packet, parent)
  end
end

-- Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_delete_message = {}

-- Size: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_delete_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.size

-- Display: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.quote_delete_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.quote_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_long_form = {}

-- Size: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_long_form.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.original_bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.original_ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_long.size

-- Display: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number: Integer
  index, original_bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.original_bid_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number: Integer
  index, original_ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.original_ask_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Integer
  index, bid_price_long = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Integer
  index, ask_price_long = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: Integer
  index, ask_size_long = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.quote_replace_message_long_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_short_form = {}

-- Size: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_short_form.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.original_bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.original_ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_short.size

-- Display: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number: Integer
  index, original_bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.original_bid_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number: Integer
  index, original_ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.original_ask_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Integer
  index, bid_size_short = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: Integer
  index, ask_size_short = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_short_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.quote_replace_message_short_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_short_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_short_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_short_form.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_change_message = {}

-- Size: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_change_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.change_reason.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.size

-- Display: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.dissect(buffer, index, packet, parent)

  -- Change Reason: Alpha
  index, change_reason = nasdaq_nomoptions_itto_itch_v4_0_2025.change_reason.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Change Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_change_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_delete_message = {}

-- Size: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_delete_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.size

-- Display: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_delete_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_long_form = {}

-- Size: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_long_form.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.original_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.new_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.size

-- Display: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number: Integer
  index, original_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.original_reference_number.dissect(buffer, index, packet, parent)

  -- New Reference Number: Integer
  index, new_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.new_reference_number.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Long Form
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_replace_message_long_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_short_form = {}

-- Size: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_short_form.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.original_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.new_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.volume_short.size

-- Display: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number: Integer
  index, original_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.original_reference_number.dissect(buffer, index, packet, parent)

  -- New Reference Number: Integer
  index, new_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.new_reference_number.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Short Form
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_short_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_replace_message_short_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_short_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_short_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_short_form.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0_2025.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0_2025.order_cancel_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.cancelled_contracts.size

-- Display: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0_2025.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0_2025.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.dissect(buffer, index, packet, parent)

  -- Cancelled Contracts: Integer
  index, cancelled_contracts = nasdaq_nomoptions_itto_itch_v4_0_2025.cancelled_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nomoptions_itto_itch_v4_0_2025.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_with_price_message = {}

-- Size: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_with_price_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.printable.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.size

-- Display: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_nomoptions_itto_itch_v4_0_2025.printable.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_message = {}

-- Size: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.executed_contracts.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.size

-- Display: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number: Integer
  index, reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.reference_number.dissect(buffer, index, packet, parent)

  -- Executed Contracts: Integer
  index, executed_contracts = nasdaq_nomoptions_itto_itch_v4_0_2025.executed_contracts.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_nomoptions_itto_itch_v4_0_2025.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nomoptions_itto_itch_v4_0_2025.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.single_side_executed_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_long_form_message = {}

-- Size: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_long_form_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_long.size

-- Display: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect(buffer, index, packet, parent)

  -- Bid: Integer
  index, bid = nasdaq_nomoptions_itto_itch_v4_0_2025.bid.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask: Integer
  index, ask = nasdaq_nomoptions_itto_itch_v4_0_2025.ask.dissect(buffer, index, packet, parent)

  -- Ask Size Long: Integer
  index, ask_size_long = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.add_quote_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_short_form_message = {}

-- Size: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_short_form_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_short.size

-- Display: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Integer
  index, bid_size_short = nasdaq_nomoptions_itto_itch_v4_0_2025.bid_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: Integer
  index, ask_size_short = nasdaq_nomoptions_itto_itch_v4_0_2025.ask_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Short Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.add_quote_message_short_form_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_long_form_message = {}

-- Size: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_long_form_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.size

-- Display: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.dissect(buffer, index, packet, parent)

  -- Market Side: Alpha
  index, market_side = nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_nomoptions_itto_itch_v4_0_2025.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Long Form Message
nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.add_order_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_short_message_form = {}

-- Size: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_short_message_form.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.volume_short.size

-- Display: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_short_message_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_short_message_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nomoptions_itto_itch_v4_0_2025.order_reference_number.dissect(buffer, index, packet, parent)

  -- Market Side: Alpha
  index, market_side = nasdaq_nomoptions_itto_itch_v4_0_2025.market_side.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_nomoptions_itto_itch_v4_0_2025.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_nomoptions_itto_itch_v4_0_2025.volume_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Short Message Form
nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_short_message_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.add_order_message_short_message_form, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_short_message_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_short_message_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_short_message_form.fields(buffer, offset, packet, parent)
  end
end

-- Security Open Message
nasdaq_nomoptions_itto_itch_v4_0_2025.security_open_message = {}

-- Size: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0_2025.security_open_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.open_state.size

-- Display: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0_2025.security_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0_2025.security_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect(buffer, index, packet, parent)

  -- Open State: Alphabetic
  index, open_state = nasdaq_nomoptions_itto_itch_v4_0_2025.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
nasdaq_nomoptions_itto_itch_v4_0_2025.security_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.security_open_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.security_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.security_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.security_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0_2025.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0_2025.trading_action_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.current_trading_state.size

-- Display: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0_2025.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0_2025.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphabetic
  index, current_trading_state = nasdaq_nomoptions_itto_itch_v4_0_2025.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_nomoptions_itto_itch_v4_0_2025.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0_2025.options_directory_message = {}

-- Size: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0_2025.options_directory_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.security_symbol.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_year.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_month.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_date.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.explicit_strike_price.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.option_type.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.source.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.underlying_symbol.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.options_closing_type.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.tradable.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.mpv.size

-- Display: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0_2025.options_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0_2025.options_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_nomoptions_itto_itch_v4_0_2025.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_nomoptions_itto_itch_v4_0_2025.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Date: Integer
  index, expiration_date = nasdaq_nomoptions_itto_itch_v4_0_2025.expiration_date.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_nomoptions_itto_itch_v4_0_2025.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_nomoptions_itto_itch_v4_0_2025.option_type.dissect(buffer, index, packet, parent)

  -- Source: Integer
  index, source = nasdaq_nomoptions_itto_itch_v4_0_2025.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_nomoptions_itto_itch_v4_0_2025.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Options Closing Type: Alphabetic
  index, options_closing_type = nasdaq_nomoptions_itto_itch_v4_0_2025.options_closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_nomoptions_itto_itch_v4_0_2025.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_nomoptions_itto_itch_v4_0_2025.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_nomoptions_itto_itch_v4_0_2025.options_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.options_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.options_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.options_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nomoptions_itto_itch_v4_0_2025.system_event_message = {}

-- Size: System Event Message
nasdaq_nomoptions_itto_itch_v4_0_2025.system_event_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.event_code.size

-- Display: System Event Message
nasdaq_nomoptions_itto_itch_v4_0_2025.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nomoptions_itto_itch_v4_0_2025.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nomoptions_itto_itch_v4_0_2025.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nomoptions_itto_itch_v4_0_2025.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nomoptions_itto_itch_v4_0_2025.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nomoptions_itto_itch_v4_0_2025.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Udp Payload
nasdaq_nomoptions_itto_itch_v4_0_2025.udp_payload = {}

-- Dissect: Udp Payload
nasdaq_nomoptions_itto_itch_v4_0_2025.udp_payload.dispatch = {
  ["S"] = nasdaq_nomoptions_itto_itch_v4_0_2025.system_event_message.dissect,
  ["R"] = nasdaq_nomoptions_itto_itch_v4_0_2025.options_directory_message.dissect,
  ["H"] = nasdaq_nomoptions_itto_itch_v4_0_2025.trading_action_message.dissect,
  ["O"] = nasdaq_nomoptions_itto_itch_v4_0_2025.security_open_message.dissect,
  ["a"] = nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_short_message_form.dissect,
  ["A"] = nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_long_form_message.dissect,
  ["j"] = nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_short_form_message.dissect,
  ["J"] = nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_long_form_message.dissect,
  ["E"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_message.dissect,
  ["C"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_with_price_message.dissect,
  ["X"] = nasdaq_nomoptions_itto_itch_v4_0_2025.order_cancel_message.dissect,
  ["u"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_short_form.dissect,
  ["U"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_long_form.dissect,
  ["D"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_delete_message.dissect,
  ["G"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_change_message.dissect,
  ["k"] = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_short_form.dissect,
  ["K"] = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_long_form.dissect,
  ["Y"] = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_delete_message.dissect,
  ["P"] = nasdaq_nomoptions_itto_itch_v4_0_2025.options_trade_messages_non_auction.dissect,
  ["Q"] = nasdaq_nomoptions_itto_itch_v4_0_2025.options_cross_trade_message.dissect,
  ["B"] = nasdaq_nomoptions_itto_itch_v4_0_2025.broken_trade_order_executed_message.dissect,
  ["I"] = nasdaq_nomoptions_itto_itch_v4_0_2025.noii_message.dissect,
}

nasdaq_nomoptions_itto_itch_v4_0_2025.udp_payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_nomoptions_itto_itch_v4_0_2025.udp_payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nomoptions_itto_itch_v4_0_2025.message_header = {}

-- Size: Message Header
nasdaq_nomoptions_itto_itch_v4_0_2025.message_header.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.message_length.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.message_type.size

-- Display: Message Header
nasdaq_nomoptions_itto_itch_v4_0_2025.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nomoptions_itto_itch_v4_0_2025.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nomoptions_itto_itch_v4_0_2025.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 22 values
  index, message_type = nasdaq_nomoptions_itto_itch_v4_0_2025.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nomoptions_itto_itch_v4_0_2025.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nomoptions_itto_itch_v4_0_2025.message = {}

-- Read runtime size of: Message
nasdaq_nomoptions_itto_itch_v4_0_2025.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nomoptions_itto_itch_v4_0_2025.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nomoptions_itto_itch_v4_0_2025.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nomoptions_itto_itch_v4_0_2025.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message_sequence_number, UInt64.new(nasdaq_nomoptions_itto_itch_v4_0_2025.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nomoptions_itto_itch_v4_0_2025.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Udp Payload: Runtime Type with 22 branches
  index = nasdaq_nomoptions_itto_itch_v4_0_2025.udp_payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nomoptions_itto_itch_v4_0_2025.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nomoptions_itto_itch_v4_0_2025.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.message, buffer(offset, 0))
    local current = nasdaq_nomoptions_itto_itch_v4_0_2025.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nomoptions_itto_itch_v4_0_2025.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_session = {}

-- Display: End Of Session
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nomoptions_itto_itch_v4_0_2025.heartbeat = {}

-- Display: Heartbeat
nasdaq_nomoptions_itto_itch_v4_0_2025.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nomoptions_itto_itch_v4_0_2025.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nomoptions_itto_itch_v4_0_2025.messages = {}

-- Dissect: Messages
nasdaq_nomoptions_itto_itch_v4_0_2025.messages.dispatch = {
  [0] = nasdaq_nomoptions_itto_itch_v4_0_2025.heartbeat.dissect,
  [65535] = nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_session.dissect,
}

nasdaq_nomoptions_itto_itch_v4_0_2025.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_nomoptions_itto_itch_v4_0_2025.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nomoptions_itto_itch_v4_0_2025.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.packet_header = {}

-- Size: Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.packet_header.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.session.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.sequence_number.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.message_count.size

-- Display: Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nomoptions_itto_itch_v4_0_2025.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nomoptions_itto_itch_v4_0_2025.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nomoptions_itto_itch_v4_0_2025.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nomoptions_itto_itch_v4_0_2025.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.packet = {}

-- Verify required size of Udp packet
nasdaq_nomoptions_itto_itch_v4_0_2025.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nomoptions_itto_itch_v4_0_2025.packet_header.size
end

-- Dissect Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nomoptions_itto_itch_v4_0_2025.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nomoptions_itto_itch_v4_0_2025.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- End Of Session Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_session_packet = {}

-- Display: End Of Session Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_session_packet.display = function(packet, parent, length)
  return "End Of Session Packet"
end


-- Dissect: End Of Session Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_session_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_session_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.server_heartbeat_packet = {}

-- Display: Server Heartbeat Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.server_heartbeat_packet.display = function(packet, parent, length)
  return "Server Heartbeat Packet"
end


-- Dissect: Server Heartbeat Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.server_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.server_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Replay Sequence Message
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_message = {}

-- Size: End Of Replay Sequence Message
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_message.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_number.size

-- Display: End Of Replay Sequence Message
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Replay Sequence Message
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- End Of Replay Sequence Number: Alphanumeric
  index, end_of_replay_sequence_number = nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Replay Sequence Message
nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.end_of_replay_sequence_message, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message.dispatch = {
  ["S"] = nasdaq_nomoptions_itto_itch_v4_0_2025.system_event_message.dissect,
  ["R"] = nasdaq_nomoptions_itto_itch_v4_0_2025.options_directory_message.dissect,
  ["H"] = nasdaq_nomoptions_itto_itch_v4_0_2025.trading_action_message.dissect,
  ["O"] = nasdaq_nomoptions_itto_itch_v4_0_2025.security_open_message.dissect,
  ["a"] = nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_short_message_form.dissect,
  ["A"] = nasdaq_nomoptions_itto_itch_v4_0_2025.add_order_message_long_form_message.dissect,
  ["j"] = nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_short_form_message.dissect,
  ["J"] = nasdaq_nomoptions_itto_itch_v4_0_2025.add_quote_message_long_form_message.dissect,
  ["E"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_message.dissect,
  ["C"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_executed_with_price_message.dissect,
  ["X"] = nasdaq_nomoptions_itto_itch_v4_0_2025.order_cancel_message.dissect,
  ["u"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_short_form.dissect,
  ["U"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_replace_message_long_form.dissect,
  ["D"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_delete_message.dissect,
  ["G"] = nasdaq_nomoptions_itto_itch_v4_0_2025.single_side_change_message.dissect,
  ["k"] = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_short_form.dissect,
  ["K"] = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_replace_message_long_form.dissect,
  ["Y"] = nasdaq_nomoptions_itto_itch_v4_0_2025.quote_delete_message.dissect,
  ["P"] = nasdaq_nomoptions_itto_itch_v4_0_2025.options_trade_messages_non_auction.dissect,
  ["Q"] = nasdaq_nomoptions_itto_itch_v4_0_2025.options_cross_trade_message.dissect,
  ["B"] = nasdaq_nomoptions_itto_itch_v4_0_2025.broken_trade_order_executed_message.dissect,
  ["I"] = nasdaq_nomoptions_itto_itch_v4_0_2025.noii_message.dissect,
  ["M"] = nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_replay_sequence_message.dissect,
}

nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_nomoptions_itto_itch_v4_0_2025.stream_frame ~= packet.number or nasdaq_nomoptions_itto_itch_v4_0_2025.stream_occurrence >= #memo then
          nasdaq_nomoptions_itto_itch_v4_0_2025.stream_frame = packet.number
          nasdaq_nomoptions_itto_itch_v4_0_2025.stream_occurrence = 0
        end
        nasdaq_nomoptions_itto_itch_v4_0_2025.stream_occurrence = nasdaq_nomoptions_itto_itch_v4_0_2025.stream_occurrence + 1
        local value = memo[nasdaq_nomoptions_itto_itch_v4_0_2025.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 23 values
  index, sequenced_message_type = nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 23 branches
  index = nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_rejected_packet.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_nomoptions_itto_itch_v4_0_2025.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_accepted_packet.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_session.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_nomoptions_itto_itch_v4_0_2025.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nomoptions_itto_itch_v4_0_2025.server_payload = {}

-- Dissect: Server Payload
nasdaq_nomoptions_itto_itch_v4_0_2025.server_payload.dispatch = {
  ["+"] = nasdaq_nomoptions_itto_itch_v4_0_2025.debug_packet.dissect,
  ["A"] = nasdaq_nomoptions_itto_itch_v4_0_2025.login_accepted_packet.dissect,
  ["J"] = nasdaq_nomoptions_itto_itch_v4_0_2025.login_rejected_packet.dissect,
  ["S"] = nasdaq_nomoptions_itto_itch_v4_0_2025.sequenced_data_packet.dissect,
  ["H"] = nasdaq_nomoptions_itto_itch_v4_0_2025.server_heartbeat_packet.dissect,
  ["Z"] = nasdaq_nomoptions_itto_itch_v4_0_2025.end_of_session_packet.dissect,
}

nasdaq_nomoptions_itto_itch_v4_0_2025.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_nomoptions_itto_itch_v4_0_2025.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.packet_length.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nomoptions_itto_itch_v4_0_2025.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_nomoptions_itto_itch_v4_0_2025.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nomoptions_itto_itch_v4_0_2025.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nomoptions_itto_itch_v4_0_2025.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header.size then
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
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.current = data

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
      index = nasdaq_nomoptions_itto_itch_v4_0_2025.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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

-- Logout Request Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.logout_request_packet = {}

-- Display: Logout Request Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.logout_request_packet.display = function(packet, parent, length)
  return "Logout Request Packet"
end


-- Dissect: Logout Request Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.logout_request_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.logout_request_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.client_heartbeat_packet = {}

-- Display: Client Heartbeat Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.client_heartbeat_packet.display = function(packet, parent, length)
  return "Client Heartbeat Packet"
end


-- Dissect: Client Heartbeat Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.client_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nomoptions_itto_itch_v4_0_2025.client_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_request_packet.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.username.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.password.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.requested_session.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nomoptions_itto_itch_v4_0_2025.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nomoptions_itto_itch_v4_0_2025.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nomoptions_itto_itch_v4_0_2025.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nomoptions_itto_itch_v4_0_2025.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nomoptions_itto_itch_v4_0_2025.client_payload = {}

-- Dissect: Client Payload
nasdaq_nomoptions_itto_itch_v4_0_2025.client_payload.dispatch = {
  ["+"] = nasdaq_nomoptions_itto_itch_v4_0_2025.debug_packet.dissect,
  ["L"] = nasdaq_nomoptions_itto_itch_v4_0_2025.login_request_packet.dissect,
  ["U"] = nasdaq_nomoptions_itto_itch_v4_0_2025.unsequenced_data_packet.dissect,
  ["R"] = nasdaq_nomoptions_itto_itch_v4_0_2025.client_heartbeat_packet.dissect,
  ["O"] = nasdaq_nomoptions_itto_itch_v4_0_2025.logout_request_packet.dissect,
}

nasdaq_nomoptions_itto_itch_v4_0_2025.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_nomoptions_itto_itch_v4_0_2025.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header.size =
  nasdaq_nomoptions_itto_itch_v4_0_2025.packet_length.size + 
  nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nomoptions_itto_itch_v4_0_2025.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_nomoptions_itto_itch_v4_0_2025.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nomoptions_itto_itch_v4_0_2025.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_nomoptions_itto_itch_v4_0_2025.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nomoptions_itto_itch_v4_0_2025.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header.size then
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
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet.dissect = function(buffer, packet, parent)
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
      index = nasdaq_nomoptions_itto_itch_v4_0_2025.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_nomoptions_itto_itch_v4_0_2025.init()
  nasdaq_nomoptions_itto_itch_v4_0_2025.accepted_sequence_number.current = nil
  nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.current = nil
  nasdaq_nomoptions_itto_itch_v4_0_2025.conversation.flows = {}
end

-- Connection roles for Nasdaq NomOptions Itto Itch 4.0.2025: Client is the initiator, Server is the acceptor
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
nasdaq_nomoptions_itto_itch_v4_0_2025.role = function(packet)
  if omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.acceptor_port

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

  if omi_nasdaq_nomoptions_itto_itch_v4_0_2025.prefs.swap_sides then
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
nasdaq_nomoptions_itto_itch_v4_0_2025.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NomOptions Itto Itch 4.0.2025
function omi_nasdaq_nomoptions_itto_itch_v4_0_2025.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nomoptions_itto_itch_v4_0_2025.name

  if packet.port_type == 2 then
    -- Dissect protocol
    local protocol = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025, buffer(), omi_nasdaq_nomoptions_itto_itch_v4_0_2025.description, "("..buffer:len().." Bytes)")
    local role = nasdaq_nomoptions_itto_itch_v4_0_2025.role(packet)

    if role == "initiator" then
      return nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet.dissect(buffer, packet, protocol)
    end

    return nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 3 then
    -- Dissect protocol
    local protocol = parent:add(omi_nasdaq_nomoptions_itto_itch_v4_0_2025, buffer(), omi_nasdaq_nomoptions_itto_itch_v4_0_2025.description, "("..buffer:len().." Bytes)")
    return nasdaq_nomoptions_itto_itch_v4_0_2025.packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet.fingerprint = function(buffer)
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

  -- Client Heartbeat Packet
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request Packet
  if client_packet_type == "O" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet.fingerprint = function(buffer)
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

  -- Server Heartbeat Packet
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session Packet
  if server_packet_type == "Z" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NomOptions Itto Itch 4.0.2025 (Tcp)
local function omi_nasdaq_nomoptions_itto_itch_v4_0_2025_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nasdaq_nomoptions_itto_itch_v4_0_2025.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nomoptions_itto_itch_v4_0_2025
  omi_nasdaq_nomoptions_itto_itch_v4_0_2025.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NomOptions Itto Itch 4.0.2025 (Tcp)
local function omi_nasdaq_nomoptions_itto_itch_v4_0_2025_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nasdaq_nomoptions_itto_itch_v4_0_2025.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nomoptions_itto_itch_v4_0_2025
  omi_nasdaq_nomoptions_itto_itch_v4_0_2025.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NomOptions Itto Itch 4.0.2025 (Udp)
local function omi_nasdaq_nomoptions_itto_itch_v4_0_2025_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nomoptions_itto_itch_v4_0_2025.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nomoptions_itto_itch_v4_0_2025
  omi_nasdaq_nomoptions_itto_itch_v4_0_2025.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NomOptions Itto Itch 4.0.2025 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nomoptions_itto_itch_v4_0_2025_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nomoptions_itto_itch_v4_0_2025.role(packet)
  local initiator = omi_nasdaq_nomoptions_itto_itch_v4_0_2025_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nomoptions_itto_itch_v4_0_2025_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nomoptions_itto_itch_v4_0_2025.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nomoptions_itto_itch_v4_0_2025.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NomOptions Itto Itch 4.0.2025
omi_nasdaq_nomoptions_itto_itch_v4_0_2025:register_heuristic("tcp", omi_nasdaq_nomoptions_itto_itch_v4_0_2025_tcp_heuristic)
omi_nasdaq_nomoptions_itto_itch_v4_0_2025:register_heuristic("udp", omi_nasdaq_nomoptions_itto_itch_v4_0_2025_udp_heuristic)

-- Register Nasdaq NomOptions Itto Itch 4.0.2025 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nomoptions_itto_itch_v4_0_2025)

-- Register Nasdaq NomOptions Itto Itch 4.0.2025 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nomoptions_itto_itch_v4_0_2025)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 4.0.2025
--   Date: Tuesday, April 22, 2025
--   Specification: itto_spec40_-_TCP_Updated.pdf
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
