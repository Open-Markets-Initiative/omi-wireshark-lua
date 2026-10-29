-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions DepthOfMarket Itch 1.6 Protocol
local omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6 = Proto("Omi.Nasdaq.PhlxOptions.DepthOfMarket.Itch.v1.6", "Nasdaq PhlxOptions DepthOfMarket Itch 1.6")

-- Protocol table
local nasdaq_phlxoptions_depthofmarket_itch_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions DepthOfMarket Itch 1.6 Fields
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.askprice", ftypes.DOUBLE, nil, nil, nil, "NOTE: When converted to a decimal format, this price is in fixed point format with 6 whole number places followed by 4 decimal digits. The display ask price of the new quote.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.ask_reference_number_delta = ProtoField.new("Ask Reference Number Delta", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.askreferencenumberdelta", ftypes.UINT32, nil, nil, nil, "The ask reference number delta associated with the new quote")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.asksize", ftypes.UINT32, nil, nil, nil, "The ask contracts of the new quote.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.auctionid", ftypes.UINT32, nil, nil, nil, "Uniquely identifies the Auction for the trading day.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.auctiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.base_reference_number = ProtoField.new("Base Reference Number", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.basereferencenumber", ftypes.UINT64, nil, nil, nil, "The base reference number")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.bidprice", ftypes.DOUBLE, nil, nil, nil, "The display bid price of the new quote. NOTE: When converted to a decimal format, this price is in fixed point format with 6 whole number places followed by 4 decimal digits.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.bid_reference_number_delta = ProtoField.new("Bid Reference Number Delta", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.bidreferencenumberdelta", ftypes.UINT32, nil, nil, nil, "The bid reference number delta associated with the new quote.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.bidsize", ftypes.UINT32, nil, nil, nil, "The bid contracts of the new quote.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.cancelled_contracts = ProtoField.new("Cancelled Contracts", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.cancelledcontracts", ftypes.UINT32, nil, nil, nil, "The number of contracts to be removed from the display size of the order/quote as the result of a cancellation.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.changereason", ftypes.STRING)
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.crossnumber", ftypes.UINT32, nil, nil, nil, "Trade Group Id. Ties together all trades of a given atomic transaction in the matching engine.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.crosstype", ftypes.STRING, nil, nil, nil, "The PHLX® auction session for which the message is being generated.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.currenttradingstate", ftypes.STRING, nil, nil, nil, "Reflects the current trading state for the options security in the Options Market.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.customer_indicator = ProtoField.new("Customer Indicator", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.customerindicator", ftypes.STRING, nil, nil, nil, "For Order Exposure only.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.eventcode", ftypes.STRING, nil, nil, nil, "System Event Code")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.executed_contracts = ProtoField.new("Executed Contracts", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.executedcontracts", ftypes.UINT32, nil, nil, nil, "The number of contracts executed.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.expirationdate", ftypes.UINT8, nil, nil, nil, "Day of the Month of expiration (1- 31)")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.expirationmonth", ftypes.UINT8, nil, nil, nil, "Expiration Month (1-12)")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.expirationyear", ftypes.UINT8, nil, nil, nil, "Last two digits of the year of the option expiration")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.explicitstrikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price. Refer to Data Types for field processing notes.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.imbalancedirection", ftypes.STRING, nil, nil, nil, "Indicates the market side of the imbalance")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.imbalance_price = ProtoField.new("Imbalance Price", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.imbalanceprice", ftypes.DOUBLE, nil, nil, nil, "The imbalance price.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.imbalancevolume", ftypes.UINT32, nil, nil, nil, "The imbalance contracts.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.market_side = ProtoField.new("Market Side", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.marketside", ftypes.STRING, nil, nil, nil, "The type of order being added. Note: AON order is not posted on the option’s book. Hence it should not be used to calculate the best bid/ask.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.match_number = ProtoField.new("Match Number", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.matchnumber", ftypes.UINT32, nil, nil, nil, "Execution Id. Identifies the component of an execution. Unique for a given day. The match number is also referenced in the Trade Break Message.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_count = ProtoField.new("Message Count", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_length = ProtoField.new("Message Length", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_type = ProtoField.new("Message Type", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.mpv = ProtoField.new("Mpv", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.mpv", ftypes.STRING, nil, nil, nil, "Minimum Price Variation for this option.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.nanoseconds", ftypes.UINT32, nil, nil, nil, "Nanoseconds portion of the timestamp.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.new_reference_number_delta = ProtoField.new("New Reference Number Delta", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.newreferencenumberdelta", ftypes.UINT32, nil, nil, nil, "The new reference number delta associated with the new order.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.number_of_reference_number_deltas = ProtoField.new("Number Of Reference Number Deltas", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.numberofreferencenumberdeltas", ftypes.UINT16, nil, nil, nil, "The number of single side deletes in this block. Max possible value = 360")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.open_state = ProtoField.new("Open State", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.openstate", ftypes.STRING, nil, nil, nil, "Open State value")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.option_id = ProtoField.new("Option Id", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.optionid", ftypes.UINT32, nil, nil, nil, "Option ID assigned daily, valid for trading day.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.optiontype", ftypes.STRING, nil, nil, nil, "Option Type value")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.options_closing_type = ProtoField.new("Options Closing Type", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.optionsclosingtype", ftypes.STRING, nil, nil, nil, "Denotes which System Event is used to trigger the option closing process.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.order_id = ProtoField.new("Order Id", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.orderid", ftypes.UINT32, nil, nil, nil, "PHLX assigned order ID.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.order_reference_number_delta = ProtoField.new("Order Reference Number Delta", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.orderreferencenumberdelta", ftypes.UINT32, nil, nil, nil, "The unique reference number delta assigned to the new order. The order reference number is Increasing, but not necessarily sequential.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.original_ask_reference_number_delta = ProtoField.new("Original Ask Reference Number Delta", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.originalaskreferencenumberdelta", ftypes.UINT32, nil, nil, nil, "The original ask reference number delta associated with the order being replaced.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.original_bid_reference_number_delta = ProtoField.new("Original Bid Reference Number Delta", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.originalbidreferencenumberdelta", ftypes.UINT32, nil, nil, nil, "The original bid reference number delta associated with the order being replaced.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.original_reference_number_delta = ProtoField.new("Original Reference Number Delta", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.originalreferencenumberdelta", ftypes.UINT32, nil, nil, nil, "The original reference number delta associated with the order being replaced.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.paired_contracts = ProtoField.new("Paired Contracts", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.pairedcontracts", ftypes.UINT32, nil, nil, nil, "The total number of contracts that are eligible to be matched at the Current Reference Price. Zero for Order Exposure notifications.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.price = ProtoField.new("Price", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.price", ftypes.DOUBLE, nil, nil, nil, "NOTE: When converted to a decimal format, this price is in fixed point format with 6 whole number places followed by 4 decimal digits. The display price of the new order being added to the book.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.printable = ProtoField.new("Printable", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.printable", ftypes.STRING, nil, nil, nil, "Indicates if the execution should be reflected on time and sale displays and volume calculations.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.reference_number_delta = ProtoField.new("Reference Number Delta", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.referencenumberdelta", ftypes.UINT32, nil, nil, nil, "The order/quote reference number delta associated with the executed order.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.reserved_3 = ProtoField.new("Reserved 3", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.reserved3", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.second = ProtoField.new("Second", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.second", ftypes.UINT32, nil, nil, nil, "Number of seconds since midnight")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.securitysymbol", ftypes.STRING, nil, nil, nil, "Denotes the security symbol.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.session = ProtoField.new("Session", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_ask_price = ProtoField.new("Short Ask Price", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.shortaskprice", ftypes.DOUBLE, nil, nil, nil, "The display ask price of the new quote.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_ask_size = ProtoField.new("Short Ask Size", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.shortasksize", ftypes.UINT16, nil, nil, nil, "The ask contracts of the new quote.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_bid_price = ProtoField.new("Short Bid Price", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.shortbidprice", ftypes.DOUBLE, nil, nil, nil, "NOTE: When converted to a decimal format, this price is in fixed point format with 3 whole number places followed by 2 decimal digits. The display bid price of the new quote.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_bid_size = ProtoField.new("Short Bid Size", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.shortbidsize", ftypes.UINT16, nil, nil, nil, "The bid contracts of the new quote.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_price = ProtoField.new("Short Price", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.shortprice", ftypes.DOUBLE, nil, nil, nil, "The display price of the new order being added to the book. NOTE: When converted to a decimal format, this price is in fixed point format with 3 whole number places followed by 2 decimal digits.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_volume = ProtoField.new("Short Volume", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.shortvolume", ftypes.UINT16, nil, nil, nil, "The total number of contracts of the new order being added to the book.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.source = ProtoField.new("Source", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.source", ftypes.UINT8, nil, nil, nil, "Identifies the source of the Option, valid for the trading day")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.tradable = ProtoField.new("Tradable", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.tradable", ftypes.STRING, nil, nil, nil, "Denotes whether or not this option is tradable at the exchange.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.trade_indicator = ProtoField.new("Trade Indicator", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.tradeindicator", ftypes.STRING)
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Denotes the unique symbol assigned to the underlying security within exchange.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.volume = ProtoField.new("Volume", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.volume", ftypes.UINT32, nil, nil, nil, "The total number of contracts of the new order being added to the book.")

-- Nasdaq PhlxOptions DepthOfMarket Itch 1.6 Framing
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message = ProtoField.new("Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_header = ProtoField.new("Message Header", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.packet = ProtoField.new("Packet", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Nasdaq PhlxOptions DepthOfMarket 1.6 Application Messages
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.addorderlongmessage", ftypes.STRING, nil, nil, nil, "An Add Order Message indicates that a new order has been accepted by the options system and was added to the displayable book. The message includes a day-unique Order Reference Number used by options system to track the order.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.addordershortmessage", ftypes.STRING, nil, nil, nil, "An Add Order Message indicates that a new order has been accepted by the options system and was added to the displayable book. The message includes a day-unique Order Reference Number used by options system to track the order.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.add_quote_long_message = ProtoField.new("Add Quote Long Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.addquotelongmessage", ftypes.STRING, nil, nil, nil, "An Add Quote Message indicates that a new quote has been accepted by the PHLX ® options system and was added to the displayable book. The message includes a unique Bid/Ask Reference Numbers used by the options system to track the quote.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.add_quote_short_message = ProtoField.new("Add Quote Short Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.addquoteshortmessage", ftypes.STRING, nil, nil, nil, "An Add Quote Message indicates that a new quote has been accepted by the PHLX ® options system and was added to the displayable book. The message includes a unique Bid/Ask Reference Numbers used by the options system to track the quote.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.auctionnotificationmessage", ftypes.STRING, nil, nil, nil, "This message is also sent as notification that there is an exposed buy (sell) order available for execution at the National Best Offer (Bid).")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.base_reference_message = ProtoField.new("Base Reference Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.basereferencemessage", ftypes.STRING, nil, nil, nil, "This message indicates the base reference number to which all the order/quote/trade reference number deltas must be added to obtain the absolute order/quote PHLX reference number.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.block_delete_message = ProtoField.new("Block Delete Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.blockdeletemessage", ftypes.STRING, nil, nil, nil, "This message contains a block of Single Side Deletes. Each reference number inside the block represents an order or a side of a quote that is being cancelled. All remaining contracts are no longer accessible so the side should be removed from the book.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.broken_trade_order_executed_message = ProtoField.new("Broken Trade Order Executed Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.brokentradeorderexecutedmessage", ftypes.STRING, nil, nil, nil, "The Broken Trade Message is sent whenever an execution on PHLX ® is broken. An execution may be broken if it is found to be “clearly erroneous” pursuant to PHLX ® Clearly Erroneous Policy. A trade break is final; once a trade is broken, it cannot be reinstated.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.non_auction_options_trade_message = ProtoField.new("Non Auction Options Trade Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.nonauctionoptionstrademessage", ftypes.STRING, nil, nil, nil, "This Options Trade Message is designed to provide execution details for match events involving non-displayable order types and Complex orders. (Note: There is a separate message for Option auction events.)")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.option_directory_message = ProtoField.new("Option Directory Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.optiondirectorymessage", ftypes.STRING, nil, nil, nil, "At the start of each trading day, the options system disseminates option symbol directory messages for all active option symbols in the PHLX ® options system.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.optionscrosstrademessage", ftypes.STRING, nil, nil, nil, "Options Auction Trade message is sent for every option when an auction in that option is completed. The message indicates the bulk volume associated with the auction event.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.order_replace_long_message = ProtoField.new("Order Replace Long Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.orderreplacelongmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is replaced. The replacement has a new reference number and replaces the prior reference number.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.order_replace_short_message = ProtoField.new("Order Replace Short Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.orderreplaceshortmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is replaced. The replacement has a new reference number and replaces the prior reference number.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.quotedeletemessage", ftypes.STRING, nil, nil, nil, "The message is sent when a single quote is being cancelled. All remaining contracts are no longer accessible so the quote should be removed from the book.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.quote_replace_long_message = ProtoField.new("Quote Replace Long Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.quotereplacelongmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever a quote on the book is replaced. The replaced quote has new reference numbers on both sides.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.quote_replace_short_message = ProtoField.new("Quote Replace Short Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.quotereplaceshortmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever a quote on the book is replaced. The replaced quote has new reference numbers on both sides.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.secondsmessage", ftypes.STRING, nil, nil, nil, "This message is sent every second for which at least one PHLX Depth message is being generated.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.security_open_message = ProtoField.new("Security Open Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.securityopenmessage", ftypes.STRING, nil, nil, nil, "The options system plans to disseminate the Option Open Message for each option as soon as the opening is completed. Upon receipt of the open state message, firms should be advised that the option denoted in the message is now available for auto execution within the PHLX ® Options Market System. Upon receipt of the closed state message, firms should be advised that the option is no longer eligible for auto-execution within the Options Market System.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_cancel_message = ProtoField.new("Single Side Cancel Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.singlesidecancelmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order or a side of a quote on the book is modified as a result of a partial cancellation.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.singlesidedeletemessage", ftypes.STRING, nil, nil, nil, "The message is sent when an order or a side of a quote is being cancelled. All remaining contracts are no longer accessible so the side should be removed from the book.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.singlesideexecutedmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever a Side order is executed in whole or in part. It is possible to receive several Single Side Executed Messages for the same Side order if that Side order is executed in several parts. The multiple Single Side Executed Messages on the same order are cumulative. By combining the executions received separately via two types of Single Side Executed Messages and Trade Messages, it is possible to build a complete view of all non-auction executions that happen on PHLX ®. Auction execution information is available in one bulk print via the Auction Trade Message.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.singlesideexecutedwithpricemessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an incoming Side order is executed against the book in whole or in part at a price different from the initial display price. Since the execution price is different than the display price of the original Add/Replace, the options system includes a price field within this execution message. It is possible to receive multiple Single Side Executed and Single Side Executed with Price messages for the same Side order if that Side order is executed in several parts. The multiple Single Side Executed messages on the same Side order are cumulative.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_replace_long_message = ProtoField.new("Single Side Replace Long Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.singlesidereplacelongmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever one side of a quote on the book is replaced. The replacement has a new reference number and replaces the prior reference number.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_replace_short_message = ProtoField.new("Single Side Replace Short Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.singlesidereplaceshortmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever one side of a quote on the book is replaced. The replacement has a new reference number and replaces the prior reference number.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_update_message = ProtoField.new("Single Side Update Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.singlesideupdatemessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order or a side of a quote is being updated for price and (or) contracts. The reference number associated with the order quote is unchanged.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.systemeventmessage", ftypes.STRING, nil, nil, nil, "The system event message type is used to signal a market or data feed handler event.")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.tradingactionmessage", ftypes.STRING, nil, nil, nil, "The options system uses this administrative message to indicate the current trading status of an index or equity option within the PHLX Options Market.")

-- Nasdaq PhlxOptions DepthOfMarket 1.6 Session Messages
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Nasdaq PhlxOptions DepthOfMarket Itch 1.6 Generated Fields
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_index = ProtoField.new("Message Index", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.messageindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.phlxoptions.depthofmarket.itch.v1.6.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq PhlxOptions DepthOfMarket Itch 1.6 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp_format = 2

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
nasdaq_phlxoptions_depthofmarket_itch_v1_6.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PhlxOptions DepthOfMarket Itch 1.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq PhlxOptions DepthOfMarket Itch 1.6 Show Options
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.timestamp_format = Pref.enum("Nanoseconds Format", 2, "Nanoseconds display format", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_headers then
    show.headers = omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_structs then
    show.structs = omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_indexes then
    show.indexes = omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_sequences then
    show.sequences = omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.show_sequences
  end
  if nasdaq_phlxoptions_depthofmarket_itch_v1_6.format_timestamp ~= omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.format_timestamp then
    nasdaq_phlxoptions_depthofmarket_itch_v1_6.format_timestamp = omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.format_timestamp
  end
  if nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp_format ~= omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.timestamp_format then
    nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp_format = omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation = {}
nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.data = function(packet)
  local key = nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.key(packet)
  local data = nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.current = nil


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


-----------------------------------------------------------------------
-- Nasdaq PhlxOptions DepthOfMarket Itch 1.6 Fields
-----------------------------------------------------------------------

-- Ask Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price = {}

-- Size: Ask Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.size = 4

-- Display: Ask Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Ask Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.translate(raw)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta = {}

-- Size: Ask Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.size = 4

-- Display: Ask Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.display = function(value)
  return "Ask Reference Number Delta: "..value
end

-- Dissect: Ask Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.ask_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Ask Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_size = {}

-- Size: Ask Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_size.size = 4

-- Display: Ask Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_id = {}

-- Size: Auction Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_id.size = 4

-- Display: Auction Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_type = {}

-- Size: Auction Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_type.size = 1

-- Display: Auction Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_type.labels = {
  ["O"] = "Auction Type: Opening (O)",
  ["R"] = "Auction Type: Reopening (R)",
  ["I"] = "Auction Type: Exposure (I)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_type.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_type.labels[value] or "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Base Reference Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_number = {}

-- Size: Base Reference Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_number.size = 8

-- Display: Base Reference Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_number.display = function(value)
  return "Base Reference Number: "..value
end

-- Dissect: Base Reference Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.base_reference_number, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price = {}

-- Size: Bid Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.size = 4

-- Display: Bid Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.translate(raw)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta = {}

-- Size: Bid Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.size = 4

-- Display: Bid Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.display = function(value)
  return "Bid Reference Number Delta: "..value
end

-- Dissect: Bid Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.bid_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_size = {}

-- Size: Bid Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_size.size = 4

-- Display: Bid Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Cancelled Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cancelled_contracts = {}

-- Size: Cancelled Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cancelled_contracts.size = 4

-- Display: Cancelled Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cancelled_contracts.display = function(value)
  return "Cancelled Contracts: "..value
end

-- Dissect: Cancelled Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cancelled_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cancelled_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cancelled_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.cancelled_contracts, range, value, display)

  return offset + length, value
end

-- Change Reason
nasdaq_phlxoptions_depthofmarket_itch_v1_6.change_reason = {}

-- Size: Change Reason
nasdaq_phlxoptions_depthofmarket_itch_v1_6.change_reason.size = 1

-- Display: Change Reason
nasdaq_phlxoptions_depthofmarket_itch_v1_6.change_reason.labels = {
  ["U"] = "Change Reason: User (U)",
  ["R"] = "Change Reason: Reprice (R)",
  ["S"] = "Change Reason: Suspend (S)",
  ["E"] = "Change Reason: Exhausted (E)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.change_reason.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.change_reason.labels[value] or "Change Reason: Unknown("..value..")"
end

-- Dissect: Change Reason
nasdaq_phlxoptions_depthofmarket_itch_v1_6.change_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.change_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Cross Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number = {}

-- Size: Cross Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.size = 4

-- Display: Cross Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.display = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_type = {}

-- Size: Cross Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_type.size = 1

-- Display: Cross Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_type.labels = {
  ["O"] = "Cross Type: Opening Reopening (O)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_type.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_phlxoptions_depthofmarket_itch_v1_6.current_trading_state = {}

-- Size: Current Trading State
nasdaq_phlxoptions_depthofmarket_itch_v1_6.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_phlxoptions_depthofmarket_itch_v1_6.current_trading_state.labels = {
  ["H"] = "Current Trading State: Halt (H)",
  ["T"] = "Current Trading State: Trading (T)",
  ["B"] = "Current Trading State: Buy Side Trading Suspended Or Exhausted (B)",
  ["S"] = "Current Trading State: Sell Side Trading Suspended Or Exhausted (S)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.current_trading_state.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.current_trading_state.labels[value] or "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_phlxoptions_depthofmarket_itch_v1_6.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Customer Indicator
nasdaq_phlxoptions_depthofmarket_itch_v1_6.customer_indicator = {}

-- Size: Customer Indicator
nasdaq_phlxoptions_depthofmarket_itch_v1_6.customer_indicator.size = 1

-- Display: Customer Indicator
nasdaq_phlxoptions_depthofmarket_itch_v1_6.customer_indicator.labels = {
  ["C"] = "Customer Indicator: Customer (C)",
  ["F"] = "Customer Indicator: Firm (F)",
  ["M"] = "Customer Indicator: On Floor (M)",
  ["P"] = "Customer Indicator: Professional (P)",
  ["B"] = "Customer Indicator: Non Phlx (B)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.customer_indicator.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.customer_indicator.labels[value] or "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
nasdaq_phlxoptions_depthofmarket_itch_v1_6.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_phlxoptions_depthofmarket_itch_v1_6.event_code = {}

-- Size: Event Code
nasdaq_phlxoptions_depthofmarket_itch_v1_6.event_code.size = 1

-- Display: Event Code
nasdaq_phlxoptions_depthofmarket_itch_v1_6.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages This Is Always The First Message Sent In Any Trading Day (O)",
  ["S"] = "Event Code: Start Of System Hours This Message Indicates That Phlx® Is Open And Ready To Start Accepting Orders (S)",
  ["Q"] = "Event Code: Start Of Opening Process This Message Is Intended To Indicate That Phlx® Has Started Its Opening Auction Process (Q)",
  ["N"] = "Event Code: End Of Normal Hours Processing This Message Is Intended To Indicate That Phlx® Will No Longer Accept Any New Orders Or Changes To Existing Orders For Options That Trade During Normal Trading Hours (N)",
  ["L"] = "Event Code: End Of Late Hours Processing This Message Is Intended To Indicate That Phlx® Will No Longer Accept Any New Orders Or Changes To Existing Orders For Options That Trade During Extended Hours (L)",
  ["E"] = "Event Code: End Of System Hours This Message Indicates That Phlx® Options System Is Now Closed (E)",
  ["C"] = "Event Code: End Of Messages This Is Always The Last Message Sent In Any Trading Day (C)",
  ["W"] = "Event Code: End Of Wco Early Closing This Message Is Intended To Indicate That The Exchange Will No Longer Accept Any New Orders Or Changes To Existing Orders On Last Trading Date Of Wco Options (W)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.event_code.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_phlxoptions_depthofmarket_itch_v1_6.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.executed_contracts = {}

-- Size: Executed Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.executed_contracts.size = 4

-- Display: Executed Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.executed_contracts.display = function(value)
  return "Executed Contracts: "..value
end

-- Dissect: Executed Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.executed_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.executed_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.executed_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.executed_contracts, range, value, display)

  return offset + length, value
end

-- Expiration Date
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_date = {}

-- Size: Expiration Date
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_date.size = 1

-- Display: Expiration Date
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_month = {}

-- Size: Expiration Month
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_year = {}

-- Size: Expiration Year
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.explicit_strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Explicit Strike Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_depthofmarket_itch_v1_6.explicit_strike_price.translate(raw)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_direction.labels = {
  ["B"] = "Imbalance Direction: Buy (B)",
  ["S"] = "Imbalance Direction: Sell (S)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_direction.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_direction.labels[value] or "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_price = {}

-- Size: Imbalance Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_price.size = 4

-- Display: Imbalance Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_price.display = function(value)
  return "Imbalance Price: "..value
end

-- Translate: Imbalance Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Imbalance Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_price.translate(raw)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.imbalance_price, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_volume = {}

-- Size: Imbalance Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Market Side
nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side = {}

-- Size: Market Side
nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.size = 1

-- Display: Market Side
nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.labels = {
  ["B"] = "Market Side: Buy (B)",
  ["S"] = "Market Side: Sell (S)",
  ["X"] = "Market Side: Buy (X)",
  ["Y"] = "Market Side: Sell (Y)",
  ["M"] = "Market Side: Buy (M)",
  ["N"] = "Market Side: Sell (N)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.labels[value] or "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.market_side, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number = {}

-- Size: Match Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.size = 4

-- Display: Match Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_count = {}

-- Size: Message Count
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_count.size = 2

-- Display: Message Count
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_length = {}

-- Size: Message Length
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_length.size = 2

-- Display: Message Length
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_type = {}

-- Size: Message Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_type.size = 1

-- Display: Message Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_type.labels = {
  ["T"] = "Message Type: Seconds Message (T)",
  ["S"] = "Message Type: System Event Message (S)",
  ["L"] = "Message Type: Base Reference Message (L)",
  ["R"] = "Message Type: Option Directory Message (R)",
  ["H"] = "Message Type: Trading Action Message (H)",
  ["O"] = "Message Type: Security Open Message (O)",
  ["a"] = "Message Type: Add Order Short Message (a)",
  ["A"] = "Message Type: Add Order Long Message (A)",
  ["j"] = "Message Type: Add Quote Short Message (j)",
  ["J"] = "Message Type: Add Quote Long Message (J)",
  ["E"] = "Message Type: Single Side Executed Message (E)",
  ["C"] = "Message Type: Single Side Executed With Price Message (C)",
  ["X"] = "Message Type: Single Side Cancel Message (X)",
  ["u"] = "Message Type: Single Side Replace Short Message (u)",
  ["U"] = "Message Type: Single Side Replace Long Message (U)",
  ["v"] = "Message Type: Order Replace Short Message (v)",
  ["V"] = "Message Type: Order Replace Long Message (V)",
  ["D"] = "Message Type: Single Side Delete Message (D)",
  ["G"] = "Message Type: Single Side Update Message (G)",
  ["k"] = "Message Type: Quote Replace Short Message (k)",
  ["K"] = "Message Type: Quote Replace Long Message (K)",
  ["Y"] = "Message Type: Quote Delete Message (Y)",
  ["Z"] = "Message Type: Block Delete Message (Z)",
  ["P"] = "Message Type: Non Auction Options Trade Message (P)",
  ["Q"] = "Message Type: Options Cross Trade Message (Q)",
  ["B"] = "Message Type: Broken Trade Order Executed Message (B)",
  ["I"] = "Message Type: Auction Notification Message (I)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_type.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_phlxoptions_depthofmarket_itch_v1_6.mpv = {}

-- Size: Mpv
nasdaq_phlxoptions_depthofmarket_itch_v1_6.mpv.size = 1

-- Display: Mpv
nasdaq_phlxoptions_depthofmarket_itch_v1_6.mpv.labels = {
  ["E"] = "Mpv: Everywhere (E)",
  ["S"] = "Mpv: Scaled (S)",
  ["P"] = "Mpv: Pilot (P)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.mpv.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.mpv.labels[value] or "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
nasdaq_phlxoptions_depthofmarket_itch_v1_6.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta = {}

-- Size: New Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.size = 4

-- Display: New Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.display = function(value)
  return "New Reference Number Delta: "..value
end

-- Dissect: New Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.new_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Number Of Reference Number Deltas
nasdaq_phlxoptions_depthofmarket_itch_v1_6.number_of_reference_number_deltas = {}

-- Size: Number Of Reference Number Deltas
nasdaq_phlxoptions_depthofmarket_itch_v1_6.number_of_reference_number_deltas.size = 2

-- Display: Number Of Reference Number Deltas
nasdaq_phlxoptions_depthofmarket_itch_v1_6.number_of_reference_number_deltas.display = function(value)
  return "Number Of Reference Number Deltas: "..value
end

-- Dissect: Number Of Reference Number Deltas
nasdaq_phlxoptions_depthofmarket_itch_v1_6.number_of_reference_number_deltas.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.number_of_reference_number_deltas.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.number_of_reference_number_deltas.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.number_of_reference_number_deltas, range, value, display)

  return offset + length, value
end

-- Open State
nasdaq_phlxoptions_depthofmarket_itch_v1_6.open_state = {}

-- Size: Open State
nasdaq_phlxoptions_depthofmarket_itch_v1_6.open_state.size = 1

-- Display: Open State
nasdaq_phlxoptions_depthofmarket_itch_v1_6.open_state.labels = {
  ["Y"] = "Open State: Open (Y)",
  ["N"] = "Open State: Closed (N)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.open_state.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.open_state.labels[value] or "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_phlxoptions_depthofmarket_itch_v1_6.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.open_state, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id = {}

-- Size: Option Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size = 4

-- Display: Option Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_type = {}

-- Size: Option Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_type.size = 1

-- Display: Option Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_type.labels = {
  ["C"] = "Option Type: Call (C)",
  ["P"] = "Option Type: Put (P)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_type.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.option_type, range, value, display)

  return offset + length, value
end

-- Options Closing Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_closing_type = {}

-- Size: Options Closing Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_closing_type.size = 1

-- Display: Options Closing Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_closing_type.labels = {
  ["N"] = "Options Closing Type: Normal (N)",
  ["L"] = "Options Closing Type: Late (L)",
  ["W"] = "Options Closing Type: Wco Early Closing (W)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_closing_type.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_closing_type.labels[value] or "Options Closing Type: Unknown("..value..")"
end

-- Dissect: Options Closing Type
nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.options_closing_type, range, value, display)

  return offset + length, value
end

-- Order Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id = {}

-- Size: Order Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.size = 4

-- Display: Order Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_reference_number_delta = {}

-- Size: Order Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_reference_number_delta.size = 4

-- Display: Order Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_reference_number_delta.display = function(value)
  return "Order Reference Number Delta: "..value
end

-- Dissect: Order Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.order_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Original Ask Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_ask_reference_number_delta = {}

-- Size: Original Ask Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_ask_reference_number_delta.size = 4

-- Display: Original Ask Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_ask_reference_number_delta.display = function(value)
  return "Original Ask Reference Number Delta: "..value
end

-- Dissect: Original Ask Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_ask_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_ask_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_ask_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.original_ask_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Original Bid Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_bid_reference_number_delta = {}

-- Size: Original Bid Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_bid_reference_number_delta.size = 4

-- Display: Original Bid Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_bid_reference_number_delta.display = function(value)
  return "Original Bid Reference Number Delta: "..value
end

-- Dissect: Original Bid Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_bid_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_bid_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_bid_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.original_bid_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Original Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta = {}

-- Size: Original Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.size = 4

-- Display: Original Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.display = function(value)
  return "Original Reference Number Delta: "..value
end

-- Dissect: Original Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.original_reference_number_delta, range, value, display)

  return offset + length, value
end

-- Paired Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.paired_contracts = {}

-- Size: Paired Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.paired_contracts.size = 4

-- Display: Paired Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.paired_contracts.display = function(value)
  return "Paired Contracts: "..value
end

-- Dissect: Paired Contracts
nasdaq_phlxoptions_depthofmarket_itch_v1_6.paired_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.paired_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.paired_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.paired_contracts, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.price = {}

-- Size: Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.size = 4

-- Display: Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.translate(raw)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.price, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_phlxoptions_depthofmarket_itch_v1_6.printable = {}

-- Size: Printable
nasdaq_phlxoptions_depthofmarket_itch_v1_6.printable.size = 1

-- Display: Printable
nasdaq_phlxoptions_depthofmarket_itch_v1_6.printable.labels = {
  ["N"] = "Printable: Non Printable (N)",
  ["Y"] = "Printable: Printable (Y)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.printable.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.printable.labels[value] or "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_phlxoptions_depthofmarket_itch_v1_6.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.printable, range, value, display)

  return offset + length, value
end

-- Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta = {}

-- Size: Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.size = 4

-- Display: Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.display = function(value)
  return "Reference Number Delta: "..value
end

-- Dissect: Reference Number Delta
nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.reference_number_delta, range, value, display)

  return offset + length, value
end

-- Reserved 3
nasdaq_phlxoptions_depthofmarket_itch_v1_6.reserved_3 = {}

-- Size: Reserved 3
nasdaq_phlxoptions_depthofmarket_itch_v1_6.reserved_3.size = 3

-- Display: Reserved 3
nasdaq_phlxoptions_depthofmarket_itch_v1_6.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nasdaq_phlxoptions_depthofmarket_itch_v1_6.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_phlxoptions_depthofmarket_itch_v1_6.second = {}

-- Size: Second
nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.size = 4

-- Store: Second
nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.current = nil

-- Generated: Second
nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.generated = function(value, range, packet, parent)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.display(value)
  local second = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.second, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_symbol = {}

-- Size: Security Symbol
nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.sequence_number = {}

-- Size: Sequence Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_phlxoptions_depthofmarket_itch_v1_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_phlxoptions_depthofmarket_itch_v1_6.session = {}

-- Size: Session
nasdaq_phlxoptions_depthofmarket_itch_v1_6.session.size = 10

-- Display: Session
nasdaq_phlxoptions_depthofmarket_itch_v1_6.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_phlxoptions_depthofmarket_itch_v1_6.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.session.size
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

  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.session, range, value, display)

  return offset + length, value
end

-- Short Ask Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price = {}

-- Size: Short Ask Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.size = 2

-- Display: Short Ask Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.display = function(value)
  return "Short Ask Price: "..value
end

-- Translate: Short Ask Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.translate = function(raw)
  return raw/100
end

-- Dissect: Short Ask Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.translate(raw)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_ask_price, range, value, display)

  return offset + length, value
end

-- Short Ask Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_size = {}

-- Size: Short Ask Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_size.size = 2

-- Display: Short Ask Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_size.display = function(value)
  return "Short Ask Size: "..value
end

-- Dissect: Short Ask Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_ask_size, range, value, display)

  return offset + length, value
end

-- Short Bid Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price = {}

-- Size: Short Bid Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.size = 2

-- Display: Short Bid Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.display = function(value)
  return "Short Bid Price: "..value
end

-- Translate: Short Bid Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.translate = function(raw)
  return raw/100
end

-- Dissect: Short Bid Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.translate(raw)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_bid_price, range, value, display)

  return offset + length, value
end

-- Short Bid Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_size = {}

-- Size: Short Bid Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_size.size = 2

-- Display: Short Bid Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_size.display = function(value)
  return "Short Bid Size: "..value
end

-- Dissect: Short Bid Size
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_bid_size, range, value, display)

  return offset + length, value
end

-- Short Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price = {}

-- Size: Short Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.size = 2

-- Display: Short Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.display = function(value)
  return "Short Price: "..value
end

-- Translate: Short Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.translate = function(raw)
  return raw/100
end

-- Dissect: Short Price
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.translate(raw)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_price, range, value, display)

  return offset + length, value
end

-- Short Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume = {}

-- Size: Short Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.size = 2

-- Display: Short Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.display = function(value)
  return "Short Volume: "..value
end

-- Dissect: Short Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.short_volume, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_phlxoptions_depthofmarket_itch_v1_6.source = {}

-- Size: Source
nasdaq_phlxoptions_depthofmarket_itch_v1_6.source.size = 1

-- Display: Source
nasdaq_phlxoptions_depthofmarket_itch_v1_6.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_phlxoptions_depthofmarket_itch_v1_6.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.source, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_phlxoptions_depthofmarket_itch_v1_6.tradable = {}

-- Size: Tradable
nasdaq_phlxoptions_depthofmarket_itch_v1_6.tradable.size = 1

-- Display: Tradable
nasdaq_phlxoptions_depthofmarket_itch_v1_6.tradable.labels = {
  ["Y"] = "Tradable: Tradable (Y)",
  ["N"] = "Tradable: Not Tradable (N)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.tradable.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.tradable.labels[value] or "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_phlxoptions_depthofmarket_itch_v1_6.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.tradable, range, value, display)

  return offset + length, value
end

-- Trade Indicator
nasdaq_phlxoptions_depthofmarket_itch_v1_6.trade_indicator = {}

-- Size: Trade Indicator
nasdaq_phlxoptions_depthofmarket_itch_v1_6.trade_indicator.size = 1

-- Display: Trade Indicator
nasdaq_phlxoptions_depthofmarket_itch_v1_6.trade_indicator.labels = {
  ["O"] = "Trade Indicator: Non Displayable (O)",
  ["C"] = "Trade Indicator: Complex (C)",
  ["P"] = "Trade Indicator: Pixl (P)",
}

nasdaq_phlxoptions_depthofmarket_itch_v1_6.trade_indicator.display = function(value)
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.trade_indicator.labels[value] or "Trade Indicator: Unknown("..value..")"
end

-- Dissect: Trade Indicator
nasdaq_phlxoptions_depthofmarket_itch_v1_6.trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.trade_indicator, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_phlxoptions_depthofmarket_itch_v1_6.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_phlxoptions_depthofmarket_itch_v1_6.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_phlxoptions_depthofmarket_itch_v1_6.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlxoptions_depthofmarket_itch_v1_6.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume = {}

-- Size: Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.size = 4

-- Display: Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.volume, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp = {}

-- Translate: Timestamp
nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.display = function(nanoseconds, stored_second, packet)
  -- Raw display mode
  if nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp_format == 0 then
    return "Timestamp: "..(stored_second * 1000000000 + nanoseconds)
  end

  -- Full datetime mode (the day the frame that carried it settled on)
  if nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - stored_second) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", midnight + stored_second)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.translate(nanoseconds, stored_second)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.timestamp, range, value, display)

  nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.generated(stored_second, range, packet, parent)

  display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.display(nanoseconds)
  parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect = function(buffer, offset, packet, parent)
  if nasdaq_phlxoptions_depthofmarket_itch_v1_6.format_timestamp then
    local stored_second = nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.current

    if stored_second ~= nil then
      return nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PhlxOptions DepthOfMarket Itch 1.6
-----------------------------------------------------------------------

-- Auction Notification Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_notification_message = {}

-- Size: Auction Notification Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_notification_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_type.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.paired_contracts.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_direction.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_volume.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.customer_indicator.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.reserved_3.size

-- Display: Auction Notification Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_type.dissect(buffer, index, packet, parent)

  -- Paired Contracts: Integer
  index, paired_contracts = nasdaq_phlxoptions_depthofmarket_itch_v1_6.paired_contracts.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect(buffer, index, packet, parent)

  -- Imbalance Price: Integer
  index, imbalance_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_price.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: Integer
  index, imbalance_volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alpha
  index, customer_indicator = nasdaq_phlxoptions_depthofmarket_itch_v1_6.customer_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 3: Integer
  index, reserved_3 = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.auction_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Order Executed Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.broken_trade_order_executed_message = {}

-- Size: Broken Trade Order Executed Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.broken_trade_order_executed_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.size

-- Display: Broken Trade Order Executed Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.broken_trade_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Order Executed Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.broken_trade_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Order Executed Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.broken_trade_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.broken_trade_order_executed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.broken_trade_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.broken_trade_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.broken_trade_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Cross Trade Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_cross_trade_message = {}

-- Size: Options Cross Trade Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_cross_trade_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_type.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.size

-- Display: Options Cross Trade Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.options_cross_trade_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Non Auction Options Trade Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.non_auction_options_trade_message = {}

-- Size: Non Auction Options Trade Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.non_auction_options_trade_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.trade_indicator.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.size

-- Display: Non Auction Options Trade Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.non_auction_options_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Non Auction Options Trade Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.non_auction_options_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Indicator: Alpha
  index, trade_indicator = nasdaq_phlxoptions_depthofmarket_itch_v1_6.trade_indicator.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Auction Options Trade Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.non_auction_options_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.non_auction_options_trade_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.non_auction_options_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.non_auction_options_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.non_auction_options_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Block Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.block_delete_message = {}

-- Size: Block Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.block_delete_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.number_of_reference_number_deltas.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.size

-- Display: Block Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.block_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.block_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Number Of Reference Number Deltas: Integer
  index, number_of_reference_number_deltas = nasdaq_phlxoptions_depthofmarket_itch_v1_6.number_of_reference_number_deltas.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: Integer
  index, reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.block_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.block_delete_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.block_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.block_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.block_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_delete_message = {}

-- Size: Quote Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_delete_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.size

-- Display: Quote Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number Delta: Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Ask Reference Number Delta: Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.quote_delete_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_long_message = {}

-- Size: Quote Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_long_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_bid_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_ask_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_size.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_size.size

-- Display: Quote Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: Integer
  index, original_bid_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Bid Reference Number Delta: Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: Integer
  index, original_ask_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Ask Reference Number Delta: Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Bid Price: Integer
  index, bid_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Integer
  index, ask_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Integer
  index, ask_size = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.quote_replace_long_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_short_message = {}

-- Size: Quote Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_short_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_bid_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_ask_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_size.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_size.size

-- Display: Quote Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: Integer
  index, original_bid_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Bid Reference Number Delta: Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: Integer
  index, original_ask_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Ask Reference Number Delta: Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Short Bid Price: Integer
  index, short_bid_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.dissect(buffer, index, packet, parent)

  -- Short Bid Size: Integer
  index, short_bid_size = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_size.dissect(buffer, index, packet, parent)

  -- Short Ask Price: Integer
  index, short_ask_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.dissect(buffer, index, packet, parent)

  -- Short Ask Size: Integer
  index, short_ask_size = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.quote_replace_short_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_update_message = {}

-- Size: Single Side Update Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_update_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.change_reason.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.size

-- Display: Single Side Update Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: Integer
  index, reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.dissect(buffer, index, packet, parent)

  -- Change Reason: Alpha
  index, change_reason = nasdaq_phlxoptions_depthofmarket_itch_v1_6.change_reason.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_update_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_delete_message = {}

-- Size: Single Side Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_delete_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.size

-- Display: Single Side Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: Integer
  index, reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_delete_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_long_message = {}

-- Size: Order Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_long_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.size

-- Display: Order Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number Delta: Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.dissect(buffer, index, packet, parent)

  -- New Reference Number Delta: Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.order_replace_long_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_short_message = {}

-- Size: Order Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_short_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.size

-- Display: Order Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number Delta: Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.dissect(buffer, index, packet, parent)

  -- New Reference Number Delta: Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Short Price: Integer
  index, short_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.dissect(buffer, index, packet, parent)

  -- Short Volume: Integer
  index, short_volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.order_replace_short_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_long_message = {}

-- Size: Single Side Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_long_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.size

-- Display: Single Side Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number Delta: Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.dissect(buffer, index, packet, parent)

  -- New Reference Number Delta: Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_replace_long_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_short_message = {}

-- Size: Single Side Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_short_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.size

-- Display: Single Side Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Original Reference Number Delta: Integer
  index, original_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.original_reference_number_delta.dissect(buffer, index, packet, parent)

  -- New Reference Number Delta: Integer
  index, new_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.new_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Short Price: Integer
  index, short_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.dissect(buffer, index, packet, parent)

  -- Short Volume: Integer
  index, short_volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_replace_short_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Cancel Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_cancel_message = {}

-- Size: Single Side Cancel Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_cancel_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.cancelled_contracts.size

-- Display: Single Side Cancel Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Cancel Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: Integer
  index, reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.dissect(buffer, index, packet, parent)

  -- Cancelled Contracts: Integer
  index, cancelled_contracts = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cancelled_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Cancel Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_cancel_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed With Price Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_with_price_message = {}

-- Size: Single Side Executed With Price Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_with_price_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.printable.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.size

-- Display: Single Side Executed With Price Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: Integer
  index, reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_phlxoptions_depthofmarket_itch_v1_6.printable.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_message = {}

-- Size: Single Side Executed Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.executed_contracts.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.size

-- Display: Single Side Executed Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Reference Number Delta: Integer
  index, reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.reference_number_delta.dissect(buffer, index, packet, parent)

  -- Executed Contracts: Integer
  index, executed_contracts = nasdaq_phlxoptions_depthofmarket_itch_v1_6.executed_contracts.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.single_side_executed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_long_message = {}

-- Size: Add Quote Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_long_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_size.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_size.size

-- Display: Add Quote Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number Delta: Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Ask Reference Number Delta: Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect(buffer, index, packet, parent)

  -- Bid Price: Integer
  index, bid_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Integer
  index, ask_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Integer
  index, ask_size = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.add_quote_long_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_short_message = {}

-- Size: Add Quote Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_short_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_size.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_size.size

-- Display: Add Quote Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Bid Reference Number Delta: Integer
  index, bid_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.bid_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Ask Reference Number Delta: Integer
  index, ask_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.ask_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect(buffer, index, packet, parent)

  -- Short Bid Price: Integer
  index, short_bid_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_price.dissect(buffer, index, packet, parent)

  -- Short Bid Size: Integer
  index, short_bid_size = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_bid_size.dissect(buffer, index, packet, parent)

  -- Short Ask Price: Integer
  index, short_ask_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_price.dissect(buffer, index, packet, parent)

  -- Short Ask Size: Integer
  index, short_ask_size = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.add_quote_short_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_long_message = {}

-- Size: Add Order Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_long_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.size

-- Display: Add Order Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number Delta: Integer
  index, order_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Market Side: Alpha
  index, market_side = nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.add_order_long_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_short_message = {}

-- Size: Add Order Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_short_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_reference_number_delta.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.size

-- Display: Add Order Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number Delta: Integer
  index, order_reference_number_delta = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_reference_number_delta.dissect(buffer, index, packet, parent)

  -- Market Side: Alpha
  index, market_side = nasdaq_phlxoptions_depthofmarket_itch_v1_6.market_side.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect(buffer, index, packet, parent)

  -- Short Price: Integer
  index, short_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_price.dissect(buffer, index, packet, parent)

  -- Short Volume: Integer
  index, short_volume = nasdaq_phlxoptions_depthofmarket_itch_v1_6.short_volume.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.add_order_short_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Open Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_open_message = {}

-- Size: Security Open Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_open_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.open_state.size

-- Display: Security Open Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect(buffer, index, packet, parent)

  -- Open State: Alphabetic
  index, open_state = nasdaq_phlxoptions_depthofmarket_itch_v1_6.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.security_open_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.trading_action_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.current_trading_state.size

-- Display: Trading Action Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphanumeric
  index, current_trading_state = nasdaq_phlxoptions_depthofmarket_itch_v1_6.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Directory Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_directory_message = {}

-- Size: Option Directory Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_directory_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_symbol.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_year.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_month.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_date.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.explicit_strike_price.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_type.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.source.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.underlying_symbol.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_closing_type.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.tradable.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.mpv.size

-- Display: Option Directory Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Directory Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Date: Integer
  index, expiration_date = nasdaq_phlxoptions_depthofmarket_itch_v1_6.expiration_date.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_depthofmarket_itch_v1_6.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_type.dissect(buffer, index, packet, parent)

  -- Source: Integer
  index, source = nasdaq_phlxoptions_depthofmarket_itch_v1_6.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_depthofmarket_itch_v1_6.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Options Closing Type: Alphabetic
  index, options_closing_type = nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_phlxoptions_depthofmarket_itch_v1_6.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_phlxoptions_depthofmarket_itch_v1_6.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Directory Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.option_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Base Reference Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_message = {}

-- Size: Base Reference Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_number.size

-- Display: Base Reference Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Base Reference Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Base Reference Number: Integer
  index, base_reference_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Base Reference Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.base_reference_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.system_event_message = {}

-- Size: System Event Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.system_event_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.nanoseconds.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.event_code.size

-- Display: System Event Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_depthofmarket_itch_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_phlxoptions_depthofmarket_itch_v1_6.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.seconds_message = {}

-- Size: Seconds Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.seconds_message.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.size

-- Display: Seconds Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.current = second

  if not packet.visited then
    nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.seconds_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_phlxoptions_depthofmarket_itch_v1_6.payload = {}

-- Dispatch: Payload
nasdaq_phlxoptions_depthofmarket_itch_v1_6.payload.dispatch = {
  ["T"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.seconds_message.dissect,
  ["S"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.system_event_message.dissect,
  ["L"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.base_reference_message.dissect,
  ["R"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.option_directory_message.dissect,
  ["H"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.trading_action_message.dissect,
  ["O"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.security_open_message.dissect,
  ["a"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_short_message.dissect,
  ["A"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_order_long_message.dissect,
  ["j"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_short_message.dissect,
  ["J"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.add_quote_long_message.dissect,
  ["E"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_message.dissect,
  ["C"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_executed_with_price_message.dissect,
  ["X"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_cancel_message.dissect,
  ["u"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_short_message.dissect,
  ["U"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_replace_long_message.dissect,
  ["v"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_short_message.dissect,
  ["V"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.order_replace_long_message.dissect,
  ["D"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_delete_message.dissect,
  ["G"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.single_side_update_message.dissect,
  ["k"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_short_message.dissect,
  ["K"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_replace_long_message.dissect,
  ["Y"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.quote_delete_message.dissect,
  ["Z"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.block_delete_message.dissect,
  ["P"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.non_auction_options_trade_message.dissect,
  ["Q"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.options_cross_trade_message.dissect,
  ["B"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.broken_trade_order_executed_message.dissect,
  ["I"] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.auction_notification_message.dissect,
}

-- Dissect: Payload
nasdaq_phlxoptions_depthofmarket_itch_v1_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_phlxoptions_depthofmarket_itch_v1_6.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_header = {}

-- Size: Message Header
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_header.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_length.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_type.size

-- Display: Message Header
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 27 values
  index, message_type = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message = {}

-- Read runtime size of: Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message_sequence_number, UInt64.new(nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 27 branches
  index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_phlxoptions_depthofmarket_itch_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.message, buffer(offset, 0))
    local current = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_depthofmarket_itch_v1_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_phlxoptions_depthofmarket_itch_v1_6.end_of_session = {}

-- Display: End Of Session
nasdaq_phlxoptions_depthofmarket_itch_v1_6.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_phlxoptions_depthofmarket_itch_v1_6.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_phlxoptions_depthofmarket_itch_v1_6.heartbeat = {}

-- Display: Heartbeat
nasdaq_phlxoptions_depthofmarket_itch_v1_6.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_phlxoptions_depthofmarket_itch_v1_6.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_phlxoptions_depthofmarket_itch_v1_6.messages = {}

-- Dispatch: Messages
nasdaq_phlxoptions_depthofmarket_itch_v1_6.messages.dispatch = {
  [0] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.heartbeat.dissect,
  [65535] = nasdaq_phlxoptions_depthofmarket_itch_v1_6.end_of_session.dissect,
}

-- Dissect: Messages
nasdaq_phlxoptions_depthofmarket_itch_v1_6.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_phlxoptions_depthofmarket_itch_v1_6.messages.dispatch[message_count]
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
    offset = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_header = {}

-- Size: Packet Header
nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_header.size =
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.session.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.sequence_number.size + 
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_count.size

-- Display: Packet Header
nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_phlxoptions_depthofmarket_itch_v1_6.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_phlxoptions_depthofmarket_itch_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_phlxoptions_depthofmarket_itch_v1_6.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet = {}

-- Verify required size of Udp packet
nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_header.size
end

-- Dissect Packet
nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.current = data.second.frames[packet.number]
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_phlxoptions_depthofmarket_itch_v1_6.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.init()
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.second.current = nil
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.current = nil
  nasdaq_phlxoptions_depthofmarket_itch_v1_6.conversation.flows = {}
end

-- Dissector for Nasdaq PhlxOptions DepthOfMarket Itch 1.6
function omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6, buffer(), omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.description, "("..buffer:len().." Bytes)")
  return nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PhlxOptions DepthOfMarket Itch 1.6 (Udp)
local function omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_depthofmarket_itch_v1_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6
  omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PhlxOptions DepthOfMarket Itch 1.6
omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6:register_heuristic("udp", omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6_udp_heuristic)

-- Register Nasdaq PhlxOptions DepthOfMarket Itch 1.6 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_phlxoptions_depthofmarket_itch_v1_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.6
--   Date: Thursday, March 8, 2018
--   Specification: phlxdepth.pdf
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
