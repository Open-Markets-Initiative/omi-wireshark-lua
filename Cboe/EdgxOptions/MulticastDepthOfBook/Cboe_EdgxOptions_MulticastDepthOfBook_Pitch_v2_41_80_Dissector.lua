-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80 Protocol
local omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80 = Proto("Omi.Cboe.EdgxOptions.MulticastDepthOfBook.Pitch.v2.41.80", "Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80")

-- Protocol table
local cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80 Fields
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.add_flags = ProtoField.new("Add Flags", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.addflags", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.aon = ProtoField.new("Aon", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.aon", ftypes.UINT8, {[0]="Order Is A Firm Quote", [1]="Order Is Aon All Or None"}, base.DEC, 0x08)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.auctionendoffset", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_id = ProtoField.new("Auction Id", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.auctionid", ftypes.UINT64)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_type = ProtoField.new("Auction Type", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.auctiontype", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.buycontracts", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.canceled_quantity_long = ProtoField.new("Canceled Quantity Long", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.canceledquantitylong", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.canceledquantityshort", ftypes.UINT16)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.client_id = ProtoField.new("Client Id", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.clientid", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.contracts = ProtoField.new("Contracts", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.contracts", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.count = ProtoField.new("Count", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.count", ftypes.UINT8)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.customerindicator", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.display = ProtoField.new("Display", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.display", ftypes.UINT8, {[0]="Order Is Not Aggregated In The Cboe Sip Quote", [1]="Order Is Aggregated In The Cboe Sip Quote"}, base.DEC, 0x01)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.executedquantity", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.execution_id = ProtoField.new("Execution Id", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.executionid", ftypes.UINT64)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.expanded_symbol = ProtoField.new("Expanded Symbol", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.expandedsymbol", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.feedsymbol", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.gthtradingstatus", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.indicativeprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.length = ProtoField.new("Length", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.length", ftypes.UINT16)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.lower_strike_price = ProtoField.new("Lower Strike Price", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.lowerstrikeprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.maintain_priority = ProtoField.new("Maintain Priority", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.maintainpriority", ftypes.UINT8, {[0]="Reset Priority", [1]="Maintain Priority"}, base.DEC, 0x02)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.message_length = ProtoField.new("Message Length", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.messagelength", ftypes.UINT8)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.message_type = ProtoField.new("Message Type", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.messagetype", ftypes.UINT8)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.modify_flags = ProtoField.new("Modify Flags", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.modifyflags", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.multiplier = ProtoField.new("Multiplier", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.multiplier", ftypes.DOUBLE)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.openingcondition", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.order_id = ProtoField.new("Order Id", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.orderid", ftypes.UINT64)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.osisymbol", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.participant_id = ProtoField.new("Participant Id", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.participantid", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.price_long = ProtoField.new("Price Long", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.pricelong", ftypes.DOUBLE)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.price_short = ProtoField.new("Price Short", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.priceshort", ftypes.DOUBLE)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.quantitylong", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.quantityshort", ftypes.UINT16)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reference_price = ProtoField.new("Reference Price", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.referenceprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.remainingquantity", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.reserved1", ftypes.BYTES)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.reserved2", ftypes.BYTES)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.reserved3", ftypes.UINT8, nil, base.DEC, 0x07)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_4 = ProtoField.new("Reserved 4", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.reserved4", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_5 = ProtoField.new("Reserved 5", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.reserved5", ftypes.BYTES)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_6 = ProtoField.new("Reserved 6", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.secondreserved1", ftypes.BYTES)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.sellcontracts", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.sequence = ProtoField.new("Sequence", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.sequence", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.shares_contracts = ProtoField.new("Shares Contracts", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.sharescontracts", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.side = ProtoField.new("Side", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.side", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.sideindicator", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.soq_identifier = ProtoField.new("Soq Identifier", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.soqidentifier", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.stocksymbol", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.symbol = ProtoField.new("Symbol", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.symbol", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.symbolcondition", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.time = ProtoField.new("Time", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.time", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.time_offset = ProtoField.new("Time Offset", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.timeoffset", ftypes.UINT32)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.tradecondition", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trading_status = ProtoField.new("Trading Status", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.tradingstatus", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.underlying = ProtoField.new("Underlying", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.underlying", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.unit = ProtoField.new("Unit", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.unit", ftypes.UINT8)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.upper_strike_price = ProtoField.new("Upper Strike Price", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.upperstrikeprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.width_type = ProtoField.new("Width Type", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.widthtype", ftypes.STRING)

-- Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80 Framing
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.message = ProtoField.new("Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.message", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.message_header = ProtoField.new("Message Header", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.messageheader", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.packet = ProtoField.new("Packet", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.packet", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.packet_header = ProtoField.new("Packet Header", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.packetheader", ftypes.STRING)

-- Cboe EdgxOptions MulticastDepthOfBook 2.41.80 Application Messages
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.addorderexpandedmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.addorderlongmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.addordershortmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.auctioncancelmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.auctionnotificationmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.auctionsummarymessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.auctiontrademessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.constituent_symbol_mapping_message = ProtoField.new("Constituent Symbol Mapping Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.constituentsymbolmappingmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.deleteordermessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.endofsessionmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.modifyorderlongmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.modifyordershortmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.optionsauctionupdatemessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.orderexecutedmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.reducesizelongmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.reducesizeshortmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.soq_strike_range_update_message = ProtoField.new("Soq Strike Range Update Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.soqstrikerangeupdatemessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.symbolmappingmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.time_message = ProtoField.new("Time Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.timemessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.tradebreakmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.tradeexpandedmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.tradelongmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.tradeshortmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.tradingstatusmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.transactionbeginmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.transaction_end_message = ProtoField.new("Transaction End Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.transactionendmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.unitclearmessage", ftypes.STRING)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.width_update_message = ProtoField.new("Width Update Message", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.widthupdatemessage", ftypes.STRING)

-- Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80 Generated Fields
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.message_index = ProtoField.new("Message Index", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.messageindex", ftypes.UINT16)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.timestamp = ProtoField.new("Timestamp", "cboe.edgxoptions.multicastdepthofbook.pitch.v2.41.80.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.utc_offset_hours = 5

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80 Show Options
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.timestamp_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", timestamp_format_enum, false)
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_application_messages then
    show.application_messages = omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_headers then
    show.headers = omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_headers
  end
  if show.structs ~= omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_structs then
    show.structs = omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_indexes then
    show.indexes = omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.show_indexes
  end
  if cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.format_timestamp ~= omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.format_timestamp then
    cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.format_timestamp = omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.format_timestamp
  end
  if cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp_format ~= omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.timestamp_format then
    cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp_format = omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.timestamp_format
  end
  if cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.utc_offset_hours ~= omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.utc_offset_hours then
    cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.utc_offset_hours = omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation = {}
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.data = function(packet)
  local key = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.key(packet)
  local data = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.current = nil


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
-- Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_end_offset = {}

-- Size: Auction End Offset
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id = {}

-- Size: Auction Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.size = 8

-- Display: Auction Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_only_price = {}

-- Size: Auction Only Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_only_price.translate(raw)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type = {}

-- Size: Auction Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.size = 1

-- Display: Auction Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "G" then
    return "Auction Type: Gth Opening (G)"
  end
  if value == "H" then
    return "Auction Type: Halt Auction (H)"
  end
  if value == "I" then
    return "Auction Type: Ipo Auction (I)"
  end
  if value == "M" then
    return "Auction Type: Cboe Market Close (M)"
  end
  if value == "V" then
    return "Auction Type: Volitility Auction (V)"
  end
  if value == "P" then
    return "Auction Type: Periodic Auction (P)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.buy_contracts = {}

-- Size: Buy Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_long = {}

-- Size: Canceled Quantity Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_long.size = 4

-- Display: Canceled Quantity Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_long.display = function(value)
  return "Canceled Quantity Long: "..value
end

-- Dissect: Canceled Quantity Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.canceled_quantity_long, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Client Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.client_id = {}

-- Size: Client Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.client_id.size = 4

-- Display: Client Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.client_id, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_bid_price.translate(raw)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_offer_price.translate(raw)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.contracts = {}

-- Size: Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.contracts.size = 4

-- Display: Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.contracts.display = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.contracts, range, value, display)

  return offset + length, value
end

-- Count
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.count = {}

-- Size: Count
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.count.size = 1

-- Display: Count
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.customer_indicator = {}

-- Size: Customer Indicator
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end
  if value == "R" then
    return "Customer Indicator: Retail Priority Order (R)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.executed_quantity = {}

-- Size: Executed Quantity
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id = {}

-- Size: Execution Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.size = 8

-- Display: Execution Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expanded Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol = {}

-- Size: Expanded Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.size = 8

-- Display: Expanded Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.display = function(value)
  return "Expanded Symbol: "..value
end

-- Dissect: Expanded Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.expanded_symbol, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.feed_symbol = {}

-- Size: Feed Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.gth_trading_status.display = function(value)
  if value == "H" then
    return "Gth Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Gth Trading Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Gth Trading Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Gth Trading Status: Trading (T)"
  end

  return "Gth Trading Status: Unknown("..value..")"
end

-- Dissect: Gth Trading Status
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.indicative_price = {}

-- Size: Indicative Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.indicative_price.size = 8

-- Display: Indicative Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.indicative_price.translate(raw)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Length
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.length = {}

-- Size: Length
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.length.size = 2

-- Display: Length
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.length, range, value, display)

  return offset + length, value
end

-- Lower Strike Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.lower_strike_price = {}

-- Size: Lower Strike Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.lower_strike_price.size = 8

-- Display: Lower Strike Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.lower_strike_price.display = function(value)
  return "Lower Strike Price: "..value
end

-- Translate: Lower Strike Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.lower_strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Lower Strike Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.lower_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.lower_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.lower_strike_price.translate(raw)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.lower_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.lower_strike_price, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_length = {}

-- Size: Message Length
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_length.size = 1

-- Display: Message Length
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_type = {}

-- Size: Message Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_type.size = 1

-- Display: Message Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0xBC then
    return "Message Type: Transaction Begin Message (0xBC)"
  end
  if value == 0xBD then
    return "Message Type: Transaction End Message (0xBD)"
  end
  if value == 0x21 then
    return "Message Type: Add Order Long Message (0x21)"
  end
  if value == 0x22 then
    return "Message Type: Add Order Short Message (0x22)"
  end
  if value == 0x2F then
    return "Message Type: Add Order Expanded Message (0x2F)"
  end
  if value == 0x23 then
    return "Message Type: Order Executed Message (0x23)"
  end
  if value == 0x24 then
    return "Message Type: Order Executed At Price Size Message (0x24)"
  end
  if value == 0x25 then
    return "Message Type: Reduce Size Long Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Reduce Size Short Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Modify Order Long Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Modify Order Short Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: Delete Order Message (0x29)"
  end
  if value == 0x2A then
    return "Message Type: Trade Long Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Trade Short Message (0x2B)"
  end
  if value == 0x30 then
    return "Message Type: Trade Expanded Message (0x30)"
  end
  if value == 0x2C then
    return "Message Type: Trade Break Message (0x2C)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0xD2 then
    return "Message Type: Width Update Message (0xD2)"
  end
  if value == 0xD1 then
    return "Message Type: Options Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0xAD then
    return "Message Type: Auction Notification Message (0xAD)"
  end
  if value == 0xAE then
    return "Message Type: Auction Cancel Message (0xAE)"
  end
  if value == 0xAF then
    return "Message Type: Auction Trade Message (0xAF)"
  end
  if value == 0x9D then
    return "Message Type: Soq Strike Range Update Message (0x9D)"
  end
  if value == 0x9E then
    return "Message Type: Constituent Symbol Mapping Message (0x9E)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.message_type, range, value, display)

  return offset + length, value
end

-- Multiplier
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.multiplier = {}

-- Size: Multiplier
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.multiplier.size = 4

-- Display: Multiplier
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Translate: Multiplier
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.multiplier.translate = function(raw)
  return raw/10
end

-- Dissect: Multiplier
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.multiplier.translate(raw)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.opening_condition = {}

-- Size: Opening Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.opening_condition.size = 1

-- Display: Opening Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.opening_condition.display = function(value)
  if value == "O" then
    return "Opening Condition: Would Open (O)"
  end
  if value == "Q" then
    return "Opening Condition: Need Quote To Open (Q)"
  end
  if value == "B" then
    return "Opening Condition: Need More Buyers (B)"
  end
  if value == "S" then
    return "Opening Condition: Need More Sellers (S)"
  end
  if value == "C" then
    return "Opening Condition: Crossed Composite Market (C)"
  end

  return "Opening Condition: Unknown("..value..")"
end

-- Dissect: Opening Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id = {}

-- Size: Order Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size = 8

-- Display: Order Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.order_id, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.osi_symbol = {}

-- Size: Osi Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.participant_id = {}

-- Size: Participant Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.participant_id.size = 4

-- Display: Participant Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long = {}

-- Size: Price Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size = 8

-- Display: Price Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.translate(raw)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short = {}

-- Size: Price Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.size = 2

-- Display: Price Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.translate(raw)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long = {}

-- Size: Quantity Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.size = 4

-- Display: Quantity Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short = {}

-- Size: Quantity Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.size = 2

-- Display: Quantity Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reference_price = {}

-- Size: Reference Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reference_price.size = 8

-- Display: Reference Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reference_price.translate(raw)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_1 = {}

-- Size: Reserved 1
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_1.size = 1

-- Display: Reserved 1
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_2 = {}

-- Size: Reserved 2
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_2.size = 2

-- Display: Reserved 2
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 5
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_5 = {}

-- Size: Reserved 5
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_5.size = 5

-- Display: Reserved 5
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.second_reserved_1 = {}

-- Size: Second Reserved 1
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.second_reserved_1.size = 1

-- Display: Second Reserved 1
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sell_contracts = {}

-- Size: Sell Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sequence = {}

-- Size: Sequence
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sequence.size = 4

-- Display: Sequence
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.shares_contracts = {}

-- Size: Shares Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.shares_contracts.size = 4

-- Display: Shares Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.shares_contracts.display = function(value)
  return "Shares Contracts: "..value
end

-- Dissect: Shares Contracts
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.shares_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.shares_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.shares_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.shares_contracts, range, value, display)

  return offset + length, value
end

-- Side
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side = {}

-- Size: Side
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side.size = 1

-- Display: Side
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.side, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator = {}

-- Size: Side Indicator
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.size = 1

-- Display: Side Indicator
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Soq Identifier
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_identifier = {}

-- Size: Soq Identifier
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_identifier.size = 20

-- Display: Soq Identifier
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_identifier.display = function(value)
  return "Soq Identifier: "..value
end

-- Dissect: Soq Identifier
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.soq_identifier, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.stock_symbol = {}

-- Size: Stock Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol = {}

-- Size: Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.size = 6

-- Display: Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_condition = {}

-- Size: Symbol Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time = {}

-- Size: Time
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.size = 4

-- Store: Time
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.current = nil

-- Generated: Time
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.generated = function(value, range, packet, parent)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.display(value)
  local time = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset = {}

-- Size: Time Offset
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size = 4

-- Display: Time Offset
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition = {}

-- Size: Trade Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.size = 1

-- Display: Trade Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.display = function(value)
  if value == "a" then
    return "Trade Condition: Single Leg Auction Non Iso Cboe Auction Types Include Aim Sam (a)"
  end
  if value == "b" then
    return "Trade Condition: Single Leg Auction Iso Cboe Auction Types Are Aim Iso Sam Iso (b)"
  end
  if value == "c" then
    return "Trade Condition: Single Leg Cross Non Iso Cboe Auction Types Include Cust To Cust Aim Qcc (c)"
  end
  if value == "d" then
    return "Trade Condition: Single Leg Cross Iso Cboe Order Type Is Cust To Cust Aim Iso (d)"
  end
  if value == "e" then
    return "Trade Condition: Single Leg Floor Trade (e)"
  end
  if value == "f" then
    return "Trade Condition: Complex To Complex Electronic Trade (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Auction Trade (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Cross (h)"
  end
  if value == "j" then
    return "Trade Condition: Complex Electronic Trade Against Single Legs (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex With Stock Options Auction Trade (k)"
  end
  if value == "m" then
    return "Trade Condition: Complex Floor Trade Against Single Legs (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex With Stock Electronic Trade (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex With Stock Cross (o)"
  end
  if value == "p" then
    return "Trade Condition: Complex With Stock Floor Trade (p)"
  end
  if value == "t" then
    return "Trade Condition: Complex Floor Trade Of Proprietary Products Marked As Combo Order (t)"
  end
  if value == "u" then
    return "Trade Condition: Multilateral Compression Trade Of Proprietary Products (u)"
  end
  if value == "v" then
    return "Trade Condition: Extended Hours Trade (v)"
  end
  if value == "l" then
    return "Trade Condition: Electronic Trade (l)"
  end
  if value == "K" then
    return "Trade Condition: Cabinet Order (K)"
  end
  if value == "M" then
    return "Trade Condition: Future Options Auction Trade Electronic Execution Of A Multi Leg Futureoptions Order Traded In A Two Sided Auction (M)"
  end
  if value == "N" then
    return "Trade Condition: Future Options Auto Electronic Trade Electronic Execution Of A Multi Leg Futureoptions Order Traded On The Complex Book Or In A Coa (N)"
  end
  if value == "P" then
    return "Trade Condition: Future Options Cross Electronic Execution Of A Multi Leg Futureoptions Order Traded In A Two Sided Crossing Mechanism That Does Not Go Through An Exposure Period (P)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end
  if value == "S" then
    return "Trade Condition: Iso (S)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status = {}

-- Size: Trading Status
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status.size = 1

-- Display: Trading Status
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "L" then
    return "Trading Status: Curb Trading (L)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Trading Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Trading Status: Rth Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying = {}

-- Size: Underlying
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.size = 8

-- Display: Underlying
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit = {}

-- Size: Unit
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit.size = 1

-- Display: Unit
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.unit, range, value, display)

  return offset + length, value
end

-- Upper Strike Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.upper_strike_price = {}

-- Size: Upper Strike Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.upper_strike_price.size = 8

-- Display: Upper Strike Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.upper_strike_price.display = function(value)
  return "Upper Strike Price: "..value
end

-- Translate: Upper Strike Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.upper_strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Upper Strike Price
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.upper_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.upper_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.upper_strike_price.translate(raw)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.upper_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.upper_strike_price, range, value, display)

  return offset + length, value
end

-- Width Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_type = {}

-- Size: Width Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_type.size = 1

-- Display: Width Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_type.display = function(value)
  if value == "R" then
    return "Width Type: Regular (R)"
  end
  if value == "V" then
    return "Width Type: Volatility (V)"
  end
  if value == "Q" then
    return "Width Type: Max Quote Width (Q)"
  end

  return "Width Type: Unknown("..value..")"
end

-- Dissect: Width Type
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.width_type, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp = {}

-- Translate: Timestamp
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.translate(time_offset, stored_time)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.display(time_offset, stored_time, packet)
  parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.timestamp, range, value, display)

  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.generated(stored_time, range, packet, parent)

  display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.display(time_offset)
  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect = function(buffer, offset, packet, parent)
  if cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.format_timestamp then
    local stored_time = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.current

    if stored_time ~= nil then
      return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.composite(buffer, offset, stored_time, packet, parent)
    end
  end

  return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80
-----------------------------------------------------------------------

-- Constituent Symbol Mapping Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.constituent_symbol_mapping_message = {}

-- Size: Constituent Symbol Mapping Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.constituent_symbol_mapping_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.feed_symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.osi_symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_condition.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_identifier.size

-- Display: Constituent Symbol Mapping Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.constituent_symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Constituent Symbol Mapping Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.constituent_symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.dissect(buffer, index, packet, parent)

  -- Soq Identifier: Printable ASCII
  index, soq_identifier = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Constituent Symbol Mapping Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.constituent_symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.constituent_symbol_mapping_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.constituent_symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.constituent_symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.constituent_symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Soq Strike Range Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_strike_range_update_message = {}

-- Size: Soq Strike Range Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_strike_range_update_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_identifier.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.lower_strike_price.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.upper_strike_price.size

-- Display: Soq Strike Range Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_strike_range_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soq Strike Range Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_strike_range_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Soq Identifier: Printable ASCII
  index, soq_identifier = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_identifier.dissect(buffer, index, packet, parent)

  -- Lower Strike Price: Binary Long Price
  index, lower_strike_price = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.lower_strike_price.dissect(buffer, index, packet, parent)

  -- Upper Strike Price: Binary Long Price
  index, upper_strike_price = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.upper_strike_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Soq Strike Range Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_strike_range_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.soq_strike_range_update_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_strike_range_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_strike_range_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_strike_range_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_trade_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.contracts.size

-- Display: Auction Trade Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.dissect(buffer, index, packet, parent)

  -- Contracts: Binary
  index, contracts = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_cancel_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.size

-- Display: Auction Cancel Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_notification_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.contracts.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.customer_indicator.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.participant_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_end_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.client_id.size

-- Display: Auction Notification Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.dissect(buffer, index, packet, parent)

  -- Contracts: Binary
  index, contracts = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.contracts.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_summary_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.stock_symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.shares_contracts.size

-- Display: Auction Summary Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Printable ASCII
  index, stock_symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.dissect(buffer, index, packet, parent)

  -- Shares Contracts: Binary
  index, shares_contracts = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.shares_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.options_auction_update_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reference_price.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.buy_contracts.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sell_contracts.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.indicative_price.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_only_price.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.opening_condition.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_bid_price.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: Printable ASCII
  index, expanded_symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Long Price
  index, indicative_price = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Long Price
  index, auction_only_price = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Long Price
  index, composite_market_bid_price = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Long Price
  index, composite_market_offer_price = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Width Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_update_message = {}

-- Size: Width Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_update_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_type.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.multiplier.size

-- Display: Width Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Width Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.dissect(buffer, index, packet, parent)

  -- Width Type: Alphanumeric
  index, width_type = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_type.dissect(buffer, index, packet, parent)

  -- Multiplier: Multiplier
  index, multiplier = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Width Update Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.width_update_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status_message = {}

-- Size: Trading Status Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_2.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_1.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.gth_trading_status.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.second_reserved_1.size

-- Display: Trading Status Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Reserved
  index, second_reserved_1 = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_mapping_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.feed_symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.osi_symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_condition.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.size

-- Display: Symbol Mapping Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.end_of_session_message = {}

-- Size: End Of Session Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.end_of_session_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size

-- Display: End Of Session Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_break_message = {}

-- Size: Trade Break Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_break_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.size

-- Display: Trade Break Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Expanded Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_expanded_message = {}

-- Size: Trade Expanded Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_expanded_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.size

-- Display: Trade Expanded Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Expanded Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: Printable ASCII
  index, expanded_symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trade_expanded_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_short_message = {}

-- Size: Trade Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_short_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.size

-- Display: Trade Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_long_message = {}

-- Size: Trade Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_long_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.size

-- Display: Trade Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.delete_order_message = {}

-- Size: Delete Order Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.delete_order_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size

-- Display: Delete Order Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Flags
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags = {}

-- Size: Modify Flags
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.size = 1

-- Display: Modify Flags
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Display flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Display"
  end
  -- Is Maintain Priority flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Maintain Priority"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Flags
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.bits = function(range, value, packet, parent)

  -- Display: 1 Bit Enum with 2 values
  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.display, range, value)

  -- Maintain Priority: 1 Bit Enum with 2 values
  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.maintain_priority, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_6, range, value)
end

-- Dissect: Modify Flags
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.modify_flags, range, display)

  if show.structs then
    cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_short_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.size

-- Display: Modify Order Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_long_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.size

-- Display: Modify Order Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_short_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: Binary
  index, canceled_quantity_short = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_long_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_long.size

-- Display: Reduce Size Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Long: Binary
  index, canceled_quantity_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.canceled_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_at_price_size_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.executed_quantity.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.remaining_quantity.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.size

-- Display: Order Executed At Price Size Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_message = {}

-- Size: Order Executed Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.executed_quantity.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.size

-- Display: Order Executed Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Flags
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags = {}

-- Size: Add Flags
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.size = 1

-- Display: Add Flags
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aon flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Aon"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Flags
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.bits = function(range, value, packet, parent)

  -- Reserved 3: 3 Bit
  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_3, range, value)

  -- Aon: 1 Bit Enum with 2 values
  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.aon, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.reserved_4, range, value)
end

-- Dissect: Add Flags
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.add_flags, range, display)

  if show.structs then
    cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Expanded Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_expanded_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.participant_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.customer_indicator.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.client_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_5.size

-- Display: Add Order Expanded Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: Printable ASCII
  index, expanded_symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.customer_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.client_id.dissect(buffer, index, packet, parent)

  -- Reserved 5: Reserved
  index, reserved_5 = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reserved_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_short_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.size

-- Display: Add Order Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_short.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_long_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.size

-- Display: Add Order Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.price_long.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction End Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_end_message = {}

-- Size: Transaction End Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_end_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size

-- Display: Transaction End Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.transaction_end_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_begin_message = {}

-- Size: Transaction Begin Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_begin_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size

-- Display: Transaction Begin Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.transaction_begin_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit_clear_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_offset.size

-- Display: Unit Clear Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_message = {}

-- Size: Time Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_message.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.size

-- Display: Time Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.current = time

  if not packet.visited then
    cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.time_message, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.payload = {}

-- Dissect: Payload
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBC then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End Message
  if message_type == 0xBD then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.transaction_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Expanded Message
  if message_type == 0x30 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Width Update Message
  if message_type == 0xD2 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.width_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Soq Strike Range Update Message
  if message_type == 0x9D then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.soq_strike_range_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Constituent Symbol Mapping Message
  if message_type == 0x9E then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.constituent_symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_header = {}

-- Size: Message Header
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_header.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_length.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_type.size

-- Display: Message Header
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 29 values
  index, message_type = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.message_header, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message = {}

-- Read runtime size of: Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 29 branches
  index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.message, buffer(offset, 0))
    local current = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.heartbeat = {}

-- Display: Heartbeat
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.messages = {}

-- Dissect: Messages
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet_header = {}

-- Size: Packet Header
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet_header.size =
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.length.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.count.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit.size + 
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sequence.size

-- Display: Packet Header
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.fields.packet_header, buffer(offset, 0))
    local index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet = {}

-- Verify required size of Udp packet
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet_header.size
end

-- Dissect Packet
cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.current = data.time.frames[packet.number]
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.init()
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.time.current = nil
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.current = nil
  cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.conversation.flows = {}
end

-- Dissector for Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80
function omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80, buffer(), omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.description, "("..buffer:len().." Bytes)")
  return cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80 (Udp)
local function omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80
  omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80
omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80:register_heuristic("udp", omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80_udp_heuristic)

-- Register Cboe EdgxOptions MulticastDepthOfBook Pitch 2.41.80 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_edgxoptions_multicastdepthofbook_pitch_v2_41_80)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.41.80
--   Since: 2.41.79
--   Date: Thursday, September 17, 2026
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
